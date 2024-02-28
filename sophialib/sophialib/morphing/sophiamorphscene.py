
# Import necessary libraries and modules
from dataclasses import dataclass
import json
from typing import Tuple as TupleType, List as ListType, Union as Union, Set as SetType
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import *
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
import ast

from xml.etree import ElementTree as ET

import svgelements as se



class MappedSVGMobject(SVGMobject):
    def __init__(self, svg_file, **kwargs):
        self.svgids = []
        SVGMobject.__init__(self, file_name=svg_file,**kwargs)

    def get_mobjects_from(self, svg: se.SVG) -> TupleType[ListType[VMobject], ListType[UnionType[str, None]]]:
        """Convert the elements of the SVG to a list of mobjects.

        Parameters
        ----------
        svg
            The parsed SVG file.
        """
        result = []
        parentGroupIDs = []
        for shape in svg.elements():
            # access more attributes via:
            # shape.values["attributes"]
            if isinstance(shape, se.Group):
                continue
            elif isinstance(shape, se.Path):
                mob = self.path_to_mobject(shape)
            elif isinstance(shape, se.SimpleLine):
                mob = self.line_to_mobject(shape)
            elif isinstance(shape, se.Rect):
                mob = self.rect_to_mobject(shape)
            elif isinstance(shape, (se.Circle, se.Ellipse)):
                mob = self.ellipse_to_mobject(shape)
            elif isinstance(shape, se.Polygon):
                mob = self.polygon_to_mobject(shape)
            elif isinstance(shape, se.Polyline):
                mob = self.polyline_to_mobject(shape)
            elif isinstance(shape, se.Text):
                mob = self.text_to_mobject(shape)
            elif isinstance(shape, se.Use) or type(shape) == se.SVGElement:
                continue
            else:
                logger.warning(f"Unsupported element type: {type(shape)}")
                continue
            if mob is None or not mob.has_points():
                continue
            self.apply_style_to_mobject(mob, shape)
            if isinstance(shape, se.Transformable) and shape.apply:
                self.handle_transform(mob, shape.transform)
            result.append(mob)
            # get all parent groups of the current shape
            parents = list(svg.select(lambda s: isinstance(s, se.Group) and shape in s.select()))
            parentGroupIDs.append([] if len(parents) == 0 else list(filter(lambda i: i is not None, map(lambda p: p.values["attributes"].get("morphtag", None), parents))))
        return result, parentGroupIDs


    def generate_mobject(self) -> None:
        """Parse the SVG and translate its elements to submobjects."""
        file_path = self.get_file_path()
        element_tree = ET.parse(file_path)
        new_tree = self.modify_xml_tree(element_tree)
        # Create a temporary svg file to dump modified svg to be parsed
        modified_file_path = file_path.with_name(f"{file_path.stem}_{file_path.suffix}")
        new_tree.write(modified_file_path)

        svg = se.SVG.parse(modified_file_path)
        modified_file_path.unlink()

        mobjects, svgids = self.get_mobjects_from(svg)
        self.add(*mobjects)
        self.svgids.extend(svgids)
        self.flip(RIGHT)  # Flip y

    def get_submobjects_in_group_with_id(self, id: str) -> ListType[VMobject]:
        """Get all submobjects that are in a group with the given id
        """
        return [self.submobjects[i] for i, groupids in enumerate(self.svgids) if id in groupids]

    # get all available group ids
    def get_group_ids(self) -> SetType[str]:
        return set([id for ids in self.svgids for id in ids])

#####################################
#####################################

class BeamerPagesMorphScene(SophiaCursorScene):

    # Sets the pages for this scene
    def set_pages(self, pages_paths: ListType[Path]):
        # load pages as MappedSVGMobjects
        self.pages = [MappedSVGMobject(p).move_to([0,0,0]).scale(4) for p in pages_paths]
        self.page_stack: ListType[MappedSVGMobject] = []
    
    def show_page(self, page_index: int):
        page = self.pages[page_index]
        
        # set the z-index for the new page submobjects according to their natural ordering – this is important to make sure that we can transform mobjects in the background (like highlighting things)
        for i, mobjs in enumerate(page):
            mobjs.set_z_index(i)

        self.add(*[o for o in page])
        self.page_stack.append(page)

    def are_mobjects_equal(self, mobj1, mobj2):
    # Compare positions
        if not np.allclose(mobj1.get_center(), mobj2.get_center(), atol=1e-8):
            return False
        
        # Compare shapes by comparing their points (This works for some Mobjects like Polygon but might not be sufficient for all types)
        if not np.allclose(mobj1.get_points(), mobj2.get_points(), atol=1e-8):
            return False
        
        # Compare colors
        if mobj1.color != mobj2.color:
            return False
        
        # Compare stroke widths
        if mobj1.stroke_width != mobj2.stroke_width:
            return False
        
        # Add other comparisons as needed (opacity, stroke color, etc.)
        
        # If all checks passed, the objects are considered equal
        return True

    
    def morph_page(self, new_page_index: int):
        if new_page_index == 0:
            self.show_page(0)
            return

        # get the top most page
        current_page = self.page_stack[-1]
        # get the new page
        new_page = self.pages[new_page_index]
        
        # determine what ids are common between the two pages
        morph_group_ids = list(current_page.get_group_ids().intersection(new_page.get_group_ids()))

        # get all mobjects from the current_page grouped by their respective morph_group_ids
        in_current_page = [current_page.get_submobjects_in_group_with_id(id) for id in morph_group_ids]

        # get all mobjects from the new_page grouped by their respective morph_group_ids
        in_new_page = [new_page.get_submobjects_in_group_with_id(id) for id in morph_group_ids]
        
        # filter out, in every morph group, the submobjects that are the same in both pages (i.e. the same center and the same path_obj)
        # this also filters out the group, if it is empty at the end
        # iterate in reverse to be able to remove elements from the list
        for group_i in reversed(range(len(morph_group_ids))):
            # iterate in reverse over the submobjects to be able to remove elements from the list
            for new_group_i in reversed(range(len(in_new_page[group_i]))):
                # find a corresponding submobject in the current page that has the same center and path_obj
                for current_group_i in reversed(range(len(in_current_page[group_i]))):
                    a = in_current_page[group_i][current_group_i]
                    b = in_new_page[group_i][new_group_i]
                    if self.are_mobjects_equal(a,b):
                        # if such a submobject is found, remove it from both lists –> it is no need to morph it
                        in_current_page[group_i].pop(current_group_i)
                        in_new_page[group_i].pop(new_group_i)
                        break

             # if there are no submobjects left for the group id, in either the current or the new page, remove the id from the list, because there's nothing to morph
            if len(in_current_page[group_i]) == 0 or len(in_new_page[group_i]) == 0:
                in_current_page.pop(group_i)
                in_new_page.pop(group_i)
                morph_group_ids.pop(group_i)

                #continue afterwards
                continue

            # raise an error if for the current group_i the new_page has a different number of submobjects than the current_page
            # if len(in_current_page[group_i]) != len(in_new_page[group_i]):
            #     raise ValueError(f"Number of submobjects in the morph group {morph_group_ids[group_i]} is different between the current and the new page.")
            
           
        # set the z-index for the new page submobjects according to their natural ordering – this is important to make sure that we can transform mobjects in the background (like highlighting things)
        for i, mobjs in enumerate(new_page):
            mobjs.set_z_index(i)


        to_fade_out = []
        #loop through everything in the current page
        for i, mobjs in enumerate(current_page):
            # if the mobject is in any morph group from the current page, just continue
            if mobjs in [o for os_for_ids in in_current_page for o in os_for_ids]:
                continue
            # if the new page contains an mobject with the same center and path_obj, remove it from the scene
            same_mobs = [o for o in new_page if self.are_mobjects_equal(mobjs, o)]
            
            # remove the current mobjs from the scene, if there is a corresponding mobject in the new page
            if len(same_mobs) > 0:
                self.remove(mobjs)
            else:
                # otherwise the mobject is not in the new scene, so we need to animate it out
                to_fade_out.append(mobjs)
        
        to_fade_in = []
        # loop through everything in the new page
        for i, mobjs in enumerate(new_page):
            # if the mobject is in any morph group from the new page, just continue
            if mobjs in [o for os_for_ids in in_new_page for o in os_for_ids]:
                continue
            # if the current page contains an mobject with the same center and path_obj, add it new to the scene
            same_mobs = [o for o in current_page if self.are_mobjects_equal(mobjs, o)]
            
            # add the new mobjs to the scene, if there are corresponding mobjects in the current page
            if len(same_mobs) > 0:
                self.add(mobjs)
            else: 
                # otherwise the mobject is not in the current scene, so we need to animate it in
                to_fade_in.append(mobjs)

        # determine all animations
        animations = []
        # fade out all mobjects that are not in the new page
        animations.extend([FadeOut(o) for o in to_fade_out])
        # fade in all mobjects that are not in the current page
        animations.extend([Create(o) for o in to_fade_in])

        # make sure that every morphgroup has the same number of submobjects, otherwise fade/remove them in too
        for i, (group_current, group_new) in enumerate(zip(in_current_page, in_new_page)):
            if len(group_current) > len(group_new):
                # fade out the remaining submobjects in the current page
                animations.extend([FadeOut(o) for o in group_current[len(group_new):]])
            elif len(group_current) < len(group_new):
                # fade in the remaining submobjects in the new page
                animations.extend([Create(o) for o in group_new[len(group_current):]])

        transform_pairs = [(o1, o2) for top_per_id, new_per_id in zip(in_current_page, in_new_page) for o1, o2 in zip(top_per_id, new_per_id) ]
        # morph/transform animation form top_page to new_page of all common ids (we need replace transform!)
        animations.extend([ReplacementTransform(o1, o2) for o1, o2 in transform_pairs])
        
        # also make sure that the z-index of the source transform mobject is set to the z-index of the target mobject
        for i, (o1, o2) in enumerate(transform_pairs):
            o1.set_z_index(o2.get_z_index())
        
        if len(animations) > 0:
            self.play(*animations)


        # remove the top page from the stack and add the new page
        self.page_stack.pop()
        self.page_stack.append(new_page)

@dataclass(frozen=True)
class AutoSlideVoiceover():
    pageIndex: int
    step: int
    substep: int
    text: str

    # method to return duplicate with a different text
    def with_text(self, text: str):
        return AutoSlideVoiceover(self.pageIndex, self.step, self.substep, text)
    
    # method to return duplicate by appending another text
    def appended_text(self, text: str):
        return AutoSlideVoiceover(self.pageIndex, self.step, self.substep, self.text + " " + text)

class AutoSlideScene(BeamerPagesMorphScene):
    def parse_voiceovers(self):
        # command to query the voiceovers
        command = f"typst query --root {self.scene_folder.parent} {self.scene_typst_path} \"<voiceover>\""

        # run the command and capture the output string
        result = os.popen(command).read()

        # parse the result json
        parsed = json.loads(result)

        # parse the array (decrease indices by one, to be python consistent)
        self.voiceovers = map(lambda x: AutoSlideVoiceover(x["value"]["pageIndex"]-1, x["value"]["step"]-1, x["value"]["substep"]-1, x["value"]["text"]) , list(parsed))

        # sort the voiceovers by pageIndex, then by step, then by substep
        self.voiceovers = sorted(self.voiceovers, key=lambda v: (v.pageIndex, v.step, v.substep))

        # remove duplicates without mixing the order
        unique_list = []
        if len(self.voiceovers) > 0:
            unique_list.append(self.voiceovers[0])
        for i in range(1, len(self.voiceovers)):
            if self.voiceovers[i] != self.voiceovers[i-1]:
                unique_list.append(self.voiceovers[i])
        self.voiceovers = unique_list

        # merge voiceover texts, if they are on the same pageIndex
        i = 0
        while i < len(self.voiceovers):
            if i == 0:
                i += 1
                continue
            if self.voiceovers[i].pageIndex == self.voiceovers[i-1].pageIndex:
                self.voiceovers[i-1] = self.voiceovers[i-1].appended_text(self.voiceovers[i].text)
                self.voiceovers.pop(i)
                i -= 1
            else: 
                i += 1

    def voiceover_for_page(self, page_index: int) -> UnionType[AutoSlideVoiceover, None]:
        for v in self.voiceovers:
            if v.pageIndex == page_index:
                return v
        return None
    
    def voiceovers_for_step(self, step: int) -> UnionType[AutoSlideVoiceover, None]:
        for v in self.voiceovers:
            if v.step == step:
                return v
        return None


    def render_svgs_from_typs(self):
        # run `typst compile --root ../ scene.typ svgs/{n}.svg` on shell
        #1. ensure svg path exists
        self.svgs_path.mkdir(parents=True, exist_ok=True)

        # run the command to render the svgs
        command = f"typst compile --root {self.scene_folder.parent} {self.scene_typst_path} {self.svgs_path}/{{n}}.svg"

        # run the command
        result = os.system(command)

        # check if the command was successful
        if result != 0:
            raise ValueError(f"Command {command} failed with exit code {result}")
        
        # get the paths to the rendered svgs
        self.svg_files = sorted(self.svgs_path.glob("*.svg"), key=lambda x: int(x.stem))

    # reads the necessary information from typs files
    def parse_typst_scene_folder(self, scene_folder: Path):
        self.scene_folder = scene_folder
        self.svgs_path = scene_folder / "svgs"
        self.scene_typst_path = scene_folder / "scene.typ"

        # then render the svgs from the scene.typ file
        self.render_svgs_from_typs()

        # parse the voiceovers
        self.parse_voiceovers()

        # set the pages for this scene
        self.set_pages(self.svg_files)

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

    def auto_slide(self, time_per_slide: float = 2):
        # show the first page
        self.show_page(0)
        
        for i in range(1, len(self.svg_files)):
            print(f"Showing page {i+1}(i={i})")
            self.morph_page(i)
            self.wait(time_per_slide)
    
    def auto_slide_with_voiceover(self, time_per_slide: float = 2): 
        # throw an error if self.voiceovers is not set
        if not hasattr(self, "voiceovers"):
            raise ValueError("The attribute self.voiceovers must be set!")
        
        print(self.voiceovers)

        print("about to start voiceover generation")
        
        # play the scene
        i = 0
        while i < len(self.pages):
            print(f"Showing page {i+1}(i={i})")
            self.morph_page(i)
            voiceover = self.voiceover_for_page(i)

            if voiceover is not None:
                # determine all consecutive existing voiceovers that follow
                consecutive_voiceovers = [voiceover]
                for j in range(i+1, len(self.pages)):
                    if self.voiceover_for_page(j) is not None:
                        consecutive_voiceovers.append(self.voiceover_for_page(j))
                    else:
                        break

                # create the voiceover string
                voiceover_string = " ".join([f"<bookmark mark=\"{v.pageIndex}\"/> {v.text}" for v in consecutive_voiceovers])

                with self.voiceover(text=voiceover_string) as tracker:
                    for v in consecutive_voiceovers:
                        self.wait_until_bookmark(f"{v.pageIndex}")
                        self.morph_page(v.pageIndex)

                # make sure to increment i by the number of consecutive voiceovers
                i += len(consecutive_voiceovers) + 1
            else:
                self.wait(time_per_slide)
                i += 1
