#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Depth]
#v(40pt)
#only("1-")[The small fish dives from a depth of 10 m to a depth of 30 m. What happens to its buoyancy?]
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
#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Buoyancy does not double when diving from 10 m to 30 m.")]
#only("3")[#voiceover("Option b) is also incorrect. Buoyancy does not triple either in this scenario.")]
#only("4")[#voiceover("Option c) is incorrect as well. Buoyancy does not quadruple when the fish dives deeper.")]
#only("5")[#voiceover("The correct answer is d) It remains about the same. Let's see why in the next slide.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Buoyancy depends on:]
#v(20pt)
#only("2-")[1. 💧 Volume of water displaced]
#v(10pt)
#only("3-")[2. 🐟 Volume of the object (fish)]
#v(40pt)
#only("4-")[As the fish dives deeper, its volume stays constant. 📏]
#v(20pt)
#only("5-")[Therefore, the volume of water displaced also remains the same. 🌊]
#v(20pt)
#only("6-")[⇒ Buoyancy is unaffected by depth changes. 🎈]
#only("1")[#voiceover("Buoyancy depends on two factors:")]
#only("2")[#voiceover("First, the volume of water displaced by the object,")]
#only("3")[#voiceover("and second, the volume of the object itself, in this case, the fish.")]
#only("4")[#voiceover("As the fish dives from 10 meters to 30 meters, its volume does not change.")]
#only("5")[#voiceover("As a result, the volume of water displaced by the fish also remains constant.")]
#only("6")[#voiceover("This means that the buoyancy acting on the fish is not affected by the change in depth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

depths = [10, 30]
buoyancy = [1, 1]

plt.figure(figsize=(8, 6))
plt.plot(depths, buoyancy, marker='o', linestyle='-', color='blue', label='Buoyancy')
plt.xlabel('Depth (m)')
plt.ylabel('Relative Buoyancy')
plt.title('Buoyancy vs Depth')
plt.legend()
plt.grid(True)
plt.annotate('10 m', (depths[0], buoyancy[0]), textcoords="offset points", xytext=(0,10), ha='center')
plt.annotate('30 m', (depths[1], buoyancy[1]), textcoords="offset points", xytext=(0,10), ha='center')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[This graph shows that buoyancy remains constant as depth increases. 📈]
#only("1")[#voiceover("This graph illustrates that buoyancy remains constant as the fish dives from 10 meters to 30 meters depth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Buoyancy depends on displaced water volume and object volume 🌊🐟]
#v(20pt)
#only("2-")[- If object volume is constant, buoyancy doesn't change with depth 📏🎈]
#v(20pt)
#only("3-")[- For the diving fish, buoyancy remains about the same from 10 m to 30 m 🐠]
#only("1")[#voiceover("To summarize, buoyancy is determined by the volume of water displaced and the volume of the object.")]
#only("2")[#voiceover("If the object's volume remains constant, buoyancy will not change with depth.")]
#only("3")[#voiceover("In the case of the small fish diving from 10 meters to 30 meters, its buoyancy remains approximately the same.")]
]