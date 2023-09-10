from manim.camera.camera import Camera
from sophialib.styles.sophiascene import *



#Takes a list stating the number of squares in each row and creates a grid of squares
def create_grid(rows, width=0.5, color=BLUE):
    squares = []
    grids = []
    for idx1, row in enumerate(rows):
        for idx2 in range(row):
            square = Rectangle(height=width, width=width, color=color, fill_color=color, fill_opacity=1).shift((idx1*width)*UP+(idx2*width)*RIGHT)
            grid = Rectangle(height=width, width=width, color=BLACK).shift((idx1*width)*UP+(idx2*width)*RIGHT)
            squares.append(square)
            grids.append(grid)

    return VGroup(*squares), VGroup(*grids)


class GeoSophiaScene(SophiaCursorScene):
    x = 1

