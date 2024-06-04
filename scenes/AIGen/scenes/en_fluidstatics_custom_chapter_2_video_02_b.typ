#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Forces on a Dam 🌊]
#v(40pt)
#only("1-")[- Given: 2 m wide, 4 m high dam section]
#only("2-")[- Top edge 1 m below water surface]
#only("3-")[- Formula: $F = rho dot g dot h dot A$]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step. We are given a dam section that is 2 meters wide and 4 meters high.")
]
#only("2")[
#voiceover("The top edge of this section is 1 meter below the water surface.")
]
#only("3")[
#voiceover("To calculate the total force on this section, we'll use the formula F equals rho times g times h times A, where rho is the density of water, g is the acceleration due to gravity, h is the average depth, and A is the area of the section.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Calculate Average Depth 📏]
#v(40pt)
#only("1-")[- Top depth: 1 m, Bottom depth: 5 m]
#only("2-")[- $h = (h_1 + h_2) / 2$]
#only("3-")[- $h = (1 + 5) / 2 = 3$ m]
#only("1")[
#voiceover("First, let's calculate the average depth. The depth at the top edge is 1 meter, and at the bottom, it's 5 meters (1 meter plus the height of the section).")
]
#only("2")[
#voiceover("To find the average depth, we use the formula h equals h1 plus h2, all divided by 2, where h1 is the depth at the top and h2 is the depth at the bottom.")
]
#only("3")[
#voiceover("Plugging in the values, we get h equals 1 plus 5, divided by 2, which equals 3 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Calculate Area 🟥]
#v(40pt)
#only("1-")[- Width: 2 m, Height: 4 m]
#only("2-")[- $A = w dot h$]
#only("3-")[- $A = 2 dot 4 = 8$ m²]
#only("1")[
#voiceover("Next, let's calculate the area of the section. We know the width is 2 meters and the height is 4 meters.")
]
#only("2")[
#voiceover("The area of a rectangle is given by the formula A equals w times h, where w is the width and h is the height.")
]
#only("3")[
#voiceover("So, the area A equals 2 times 4, which is 8 square meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Plug into Formula 🧮]
#v(40pt)
#only("1-")[- $rho = 1000$ kg/m³, $g = 9.81$ m/s², $h = 3$ m, $A = 8$ m²]
#only("2-")[- $F = rho dot g dot h dot A$]
#only("3-")[- $F = 1000 dot 9.81 dot 3 dot 8 = 235440$ N]
#only("1")[
#voiceover("Now, let's plug everything into the formula. The density of water, rho, is 1000 kilograms per cubic meter. The acceleration due to gravity, g, is 9.81 meters per second squared. We calculated the average depth, h, to be 3 meters, and the area, A, to be 8 square meters.")
]
#only("2")[
#voiceover("Substituting these values into the formula F equals rho times g times h times A...")
]
#only("3")[
#voiceover("We get F equals 1000 times 9.81 times 3 times 8, which equals 235,440 Newtons. This is the total force on the given section of the dam.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

dam_width = 2
dam_height = 4
water_height = 5

fig, ax = plt.subplots()

dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=1, edgecolor='r', facecolor='none')
water = plt.Rectangle((0, 0), dam_width, water_height, linewidth=1, edgecolor='b', facecolor='b', alpha=0.5)

ax.add_patch(dam)
ax.add_patch(water)

ax.set_aspect('equal')
ax.set_xlim(-1, 3)
ax.set_ylim(0, 6)

ax.text(1, 2, 'Dam Section', ha='center', va='center', color='r')
ax.text(1, 4.5, 'Water', ha='center', va='center', color='w')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the problem. The red outline represents the dam section, and the blue area represents the water pressing against it.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎉]
#v(40pt)
#only("1-")[- Total force on the dam section: 235,440 N]
#only("2-")[- Key steps: find average depth, calculate area, use formula]
#only("3-")[- Well done! 👏]
#only("1")[
#voiceover("In conclusion, the total force on the given 2 meter wide, 4 meter high section of the dam, with the top edge 1 meter below the water surface, is 235,440 Newtons.")
]
#only("2")[
#voiceover("The key steps were finding the average depth, calculating the area of the section, and then using the formula F equals rho times g times h times A.")
]
#only("3")[
#voiceover("Well done on solving this problem! Keep up the great work!")
]
]