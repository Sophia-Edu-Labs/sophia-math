#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Why Steel Ships Float]

#v(40pt)

#only("2-")[- Steel density: $p_("steel") = 7.8 g/cm^3$ 🔩]
// The density of steel is shown from slide 2 onward

#only("2")[
#voiceover("First, we know that steel has a density of 7.8 grams per cubic centimeter.")
]

]


#slide()[

#text(size: 30pt, weight: "bold")[Buoyancy Principle]

#v(40pt)

#only("1-")[- Object floats if:
  - Average density < Water density (1 g/cm³) 🌊]

#only("2-")[- Depends on:
  - Material density
  - Object shape (volume) 🎈]

#only("1")[
#voiceover("An object floats if its average density is less than the density of water, which is 1 gram per cubic centimeter.")
]

#only("2")[
#voiceover("This depends on both the density of the material and the shape of the object, which determines its volume.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Steel Screw vs Ship]

#v(40pt)

#only("1-")[- Screw: 🔩
  - Small volume
  - High density (= material density)]

#only("2-")[- Ship: 🚢 
  - Large volume
  - Low average density (< water density)]

#only("1")[
#voiceover("A steel screw has a small volume and a high density equal to the density of steel. This makes it sink.")
]

#only("2")[
#voiceover("On the other hand, a steel ship has a large volume. This large volume includes a lot of air, which lowers the average density of the ship below the density of water, allowing it to float.")
]

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

# Set up the figure
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Screw
ax1.text(0.5, 0.7, '🔩', ha='center', fontsize=100)
ax1.text(0.5, 0.3, 'Sinks', ha='center', fontsize=20)
ax1.set_title('Steel Screw')
ax1.axis('off')

# Ship
ax2.text(0.5, 0.7, '🚢', ha='center', fontsize=100)
ax2.text(0.5, 0.3, 'Floats', ha='center', fontsize=20)
ax2.set_title('Steel Ship')
ax2.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual representation. The steel screw, being small and dense, sinks. The steel ship, being large and having a low average density, floats.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Buoyancy depends on average density 🎈]

#only("2-")[- Large volume + air pockets ⇒ low average density 🚢]

#only("3-")[- This allows steel ships to float 🌊]

#only("1")[
#voiceover("The key takeaway is that buoyancy depends on the average density of an object.")
]

#only("2")[
#voiceover("A large volume combined with air pockets results in a low average density.")
]

#only("3")[
#voiceover("This is what allows steel ships to float, despite being made of a material that is denser than water.")
]

]