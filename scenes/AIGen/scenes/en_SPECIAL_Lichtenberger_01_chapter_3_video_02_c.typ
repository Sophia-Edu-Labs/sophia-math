#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Volume]
#v(40pt)
Of three differently sized objects with the same density, the one with the medium volume floats. Which other object also floats?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) the small one]#only("2-")[#text(fill:red)[a) the small one]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) the large one]#only("3-")[#text(fill:red)[b) the large one]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) both]#only("4-")[#text(fill:green)[c) both]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) neither]#only("5-")[#text(fill:red)[d) neither]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("The small object alone cannot be the only other object that floats. Let's see why...")]
#only("3")[#voiceover("Similarly, the large object alone cannot be the only other object that floats.")]
#only("4")[#voiceover("The correct answer is that both the small and large objects will also float. If objects have the same density, their buoyancy behavior will be the same regardless of size.")]
#only("5")[#voiceover("So it cannot be that neither the small nor the large object floats while the medium one does.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Objects with the same density have the same buoyancy characteristics 🎈]
#v(20pt)
#only("2-")[- If one object floats, all objects of the same density will float, regardless of size 📏]
#v(20pt)
#only("3-")[- Since the medium object floats, the small and large objects must also float 🌊]
#v(20pt)
#only("4-")[Therefore, the correct answer is #text(weight: "bold")[c) both] ✅]
#only("1")[#voiceover("Let's go through this step-by-step. First, it's important to understand that objects with the same density will have the same buoyancy characteristics.")]
#only("2")[#voiceover("This means that if one object of a certain density floats, all objects of that same density will also float, regardless of their size.")]
#only("3")[#voiceover("In this case, we're told that the medium-sized object floats. Therefore, both the small and large objects, which have the same density, must also float.")]
#only("4")[#voiceover("So the correct answer is c) both the small and large objects will float along with the medium object.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

objects = ['Small', 'Medium', 'Large']
y_pos = np.arange(len(objects))

plt.figure(figsize=(8, 4))
bars = plt.barh(y_pos, [1, 2, 3], align='center', alpha=0.5)
bars[0].set_color('lightblue')
bars[1].set_color('skyblue')  
bars[2].set_color('lightblue')  
plt.yticks(y_pos, objects)
plt.xlabel('Size')
plt.title('Objects of Same Density')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization. We have three objects of different sizes but the same density, represented by the bars.")
]
#only("2")[
#voiceover("If the medium object, shown in a darker blue, floats, then the small and large objects, in lighter blue, must also float.")
]
#only("3")[
#voiceover("The size doesn't matter for buoyancy if the density is the same. That's why the correct answer is that both the small and large objects will also float.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Density, not size, determines buoyancy 🎈]
#v(20pt)  
#only("2-")[- Objects of the same density will have the same buoyancy behavior 🌊]
#v(20pt)
#only("3-")[- If one floats, they all float! 🛥️]
#only("1")[
#voiceover("To summarize, the key takeaway is that density, not size, is what determines an object's buoyancy.")
]
#only("2")[
#voiceover("Objects of the same density will exhibit the same buoyancy behavior, regardless of their size.")
]
#only("3")[
#voiceover("So if one object of a certain density floats, all objects of that density will float, no matter how big or small they are!")
]
]