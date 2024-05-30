#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Depth]
#v(40pt)
What happens to the small fish's buoyancy as it dives from 10 m to 30 m?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It approximately doubles.]#only("2-")[#text(fill:red)[a) It approximately doubles.]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) It approximately triples.]#only("3-")[#text(fill:red)[b) It approximately triples.]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It approximately quadruples.]#only("4-")[#text(fill:red)[c) It approximately quadruples.]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) It remains about the same.]#only("5-")[#text(fill:green)[d) It remains about the same.]]
#only("1")[#voiceover("That's right, great job! The buoyancy of the fish remains about the same as it dives deeper. Let's see why.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy]
#v(40pt)
#only("1-")[- Upward force exerted by a fluid on an object 🌊]
#v(20pt)
#only("2-")[- Depends on the #text(weight: "bold")[volume] of fluid displaced 📏]
#v(20pt)
#only("3-")[- Archimedes' principle: $"Buoyant force" = "weight of displaced fluid"$]
#only("1")[#voiceover("Buoyancy is the upward force exerted by a fluid on an immersed object.")]
#only("2")[#voiceover("The magnitude of the buoyant force depends on the volume of the fluid displaced by the object.")]
#only("3")[#voiceover("This is known as Archimedes' principle: the buoyant force is equal to the weight of the fluid displaced by the object.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Depth]
#v(40pt)
#only("1-")[- As the fish dives, the #text(weight: "bold")[pressure] increases 🌡]
#v(20pt)
#only("2-")[- But the fish's #text(weight: "bold")[volume] remains constant 🐠]
#v(20pt)
#only("3-")[- So the #text(weight: "bold")[buoyant force] stays the same 🎈]
#only("1")[#voiceover("As the fish dives from 10 meters to 30 meters, the pressure of the water around it increases.")]
#only("2")[#voiceover("However, assuming the fish doesn't significantly compress, its volume remains constant.")]
#only("3")[#voiceover("Since the volume of water displaced by the fish doesn't change, the buoyant force acting on the fish also remains constant.")]
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

depths = [10, 20, 30]
buoyancy = [1, 1, 1]  

plt.figure(figsize=(8, 6))
plt.plot(depths, buoyancy, 'bo-')
plt.xlabel('Depth (m)')
plt.ylabel('Relative Buoyancy')
plt.title('Buoyancy vs Depth')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a graph showing the relative buoyancy of the fish at different depths. As you can see, the buoyancy remains constant at 1, regardless of the depth.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Buoyancy depends on displaced fluid volume 🌊]
#v(20pt)
#only("2-")[- Fish's volume remains constant with depth 🐠]
#v(20pt)
#only("3-")[- Therefore, buoyancy is unchanged 🎈]
#only("1")[#voiceover("To summarize, buoyancy depends on the volume of fluid displaced by an object.")]
#only("2")[#voiceover("As the fish dives, its volume remains constant, assuming no significant compression.")]
#only("3")[#voiceover("As a result, the buoyant force acting on the fish remains about the same, regardless of the depth. Great work understanding this concept!")]
]