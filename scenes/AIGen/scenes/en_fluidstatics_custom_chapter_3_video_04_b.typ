#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure Difference]
#v(40pt)
#only("1-")[- Given: $h = 50 "cm" = 0.5 "m"$, $rho = 1060 "kg/m"^3$]
#v(20pt)
#only("2-")[- Use: $Delta p = rho dot g dot h$]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step. We are given that the height difference between the head and the heart is 50 centimeters, which is equal to 0.5 meters, and the blood density is 1060 kilograms per cubic meter.")
]
#only("2")[
#voiceover("To find the pressure difference, we use the formula delta p equals rho times g times h, where rho is the density, g is the acceleration due to gravity, and h is the height difference.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ Delta p = rho dot g dot h$]
#v(10pt)
#only("2-")[$ Delta p = 1060 dot 9.81 dot 0.5$]
#v(10pt)
#only("3-")[$ Delta p = 5193 "Pa"$]
#only("1")[
#voiceover("Let's substitute the given values into the formula.")
]
#only("2")[
#voiceover("Delta p equals 1060 times 9.81 times 0.5.")
]
#only("3")[
#voiceover("Calculating this, we get 5193 Pascals. This is the pressure difference between the head and the heart due to the height difference and blood density.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 8))

# Draw the head and heart
head_center = (0.5, 0.8)
heart_center = (0.5, 0.3)
head = plt.Circle(head_center, 0.1, color='lightblue', zorder=10)
heart = plt.Circle(heart_center, 0.1, color='red', zorder=10)
ax.add_artist(head)
ax.add_artist(heart)

# Draw the body
body = plt.Rectangle((0.4, 0.2), 0.2, 0.6, color='lightgray', zorder=5)
ax.add_patch(body)

# Draw the height difference
ax.annotate('', xy=head_center, xytext=heart_center, 
            arrowprops=dict(arrowstyle='<->', color='black', lw=2))
ax.text(0.52, 0.55, '0.5 m', fontsize=12, color='black')

# Set up the axes
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_aspect('equal')
ax.axis('off')

# Add labels
ax.text(0.5, 0.9, 'Head', fontsize=14, ha='center', va='center')
ax.text(0.5, 0.2, 'Heart', fontsize=14, ha='center', va='center')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the problem. The blue circle represents the head, and the red circle represents the heart. The arrow shows the height difference of 0.5 meters between them.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎉]
#v(40pt)
#only("1-")[- Height difference: $h = 0.5 "m"$ ⬆]
#v(20pt)
#only("2-")[- Blood density: $rho = 1060 "kg/m"^3$ 🩸]
#v(20pt) 
#only("3-")[- Formula: $Delta p = rho dot g dot h$ 🧮]
#v(20pt)
#only("4-")[- Pressure difference: $Delta p = 5193 "Pa"$ ✅]
#only("1")[
#voiceover("To recap, the height difference between the head and the heart is 0.5 meters.")
]
#only("2")[
#voiceover("The blood density is 1060 kilograms per cubic meter.")
]
#only("3")[
#voiceover("We used the formula delta p equals rho times g times h to calculate the pressure difference.")
]
#only("4")[
#voiceover("The pressure difference is 5193 Pascals. Great work on solving this problem!")
]
]