#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Volume]
#v(40pt)
#only("1-")[Of three differently sized objects with the same mass, the one with the medium volume floats. Which other object also floats?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) the small one]#only("2-")[#text(fill:red)[a) the small one]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) the large one]#only("3-")[#text(fill:green)[b) the large one]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) both]#only("4-")[#text(fill:red)[c) both]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) neither]#only("5-")[#text(fill:red)[d) neither]]

#only("1")[#voiceover("Great job! You've selected the correct answer. Let's go through the solution step by step.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Concepts]
#v(40pt)
#only("1-")[- Buoyancy: upward force exerted by a fluid on an object 🌊]
#v(20pt)
#only("2-")[- Archimedes' principle: buoyant force equals weight of displaced fluid 🎈]
#v(20pt)
#only("3-")[- For objects with the same mass, larger volume $arrow$ more fluid displaced $arrow$ greater buoyancy 📈]

#only("1")[#voiceover("First, let's recall that buoyancy is the upward force exerted by a fluid on an object immersed in it.")]
#only("2")[#voiceover("Archimedes' principle states that the buoyant force on an object is equal to the weight of the fluid displaced by the object.")]
#only("3")[#voiceover("For objects with the same mass, a larger volume means more fluid is displaced, resulting in a greater buoyant force.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Given: Three objects with the same mass but different volumes]
#v(20pt)
#only("2-")[- The medium-volume object floats $arrow$ its buoyant force $>=$ its weight]
#v(20pt)
#only("3-")[- The large-volume object displaces more fluid than the medium one]
#v(20pt)
#only("4-")[- Thus, the large-volume object experiences an even greater buoyant force and also floats 🚢]

#only("1")[#voiceover("In this problem, we have three objects with the same mass but different volumes.")]
#only("2")[#voiceover("We know that the medium-volume object floats, which means its buoyant force is greater than or equal to its weight.")]
#only("3")[#voiceover("The large-volume object will displace more fluid than the medium one, as it has a larger volume.")]
#only("4")[#voiceover("Therefore, the large-volume object will experience an even greater buoyant force compared to the medium-volume object, and it will also float.")]
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

volumes = ['Small', 'Medium', 'Large']
buoyancy = [0.8, 1.2, 1.6]

plt.figure(figsize=(8, 6))
plt.bar(volumes, buoyancy, color=['red', 'green', 'green'], alpha=0.7)
plt.axhline(1, color='black', linestyle='--', label='Weight')
plt.ylim(0, 2)
plt.xlabel('Object Volume')
plt.ylabel('Buoyant Force (relative to weight)')
plt.title('Buoyancy vs Volume (Same Mass)')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[This graph shows the buoyant force relative to the object's weight for each volume.]
#v(20pt)
#only("2-")[The dashed line represents the weight. If buoyancy $>=$ weight, the object floats.]
#v(20pt)
#only("3-")[Both the medium and large objects have buoyancy $>$ weight, so they float. 🛥️]

#only("1")[#voiceover("This graph visualizes the buoyant force relative to the object's weight for each volume.")]
#only("2")[#voiceover("The dashed line represents the weight. If the buoyant force is greater than or equal to the weight, the object will float.")]
#only("3")[#voiceover("We can see that both the medium and large objects have a buoyant force greater than their weight, so they will both float.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- For objects with the same mass, a larger volume results in greater buoyancy]
#v(20pt)
#only("2-")[- If the medium-volume object floats, the large-volume object will also float 🏊]
#v(20pt)
#only("3-")[- The small-volume object may not have enough buoyancy to float 🪨]

#only("1")[#voiceover("In conclusion, for objects with the same mass, a larger volume results in greater buoyancy due to more fluid being displaced.")]
#only("2")[#voiceover("If the medium-volume object floats, the large-volume object will also float because it experiences an even greater buoyant force.")]
#only("3")[#voiceover("The small-volume object, on the other hand, may not have enough buoyancy to overcome its weight and float.")]
]