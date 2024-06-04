#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydroelectric Power Plants]
#v(40pt)
#only("1-")[- Convert potential energy of water into electrical energy 💡]
#v(20pt)
#only("2-")[- Use turbines to harness the energy 🌊]
#only("1")[
#voiceover("Hydroelectric power plants are designed to convert the potential energy of water into usable electrical energy.")
]
#only("2")[
#voiceover("This conversion is achieved through the use of turbines, which harness the energy of moving water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Potential Energy]
// The title "Potential Energy" is shown on this slide
#v(40pt)
#only("1-")[- Energy stored in water due to its height 📏]
// The point about potential energy being stored due to height is shown from slide 1 onward
#v(20pt)
#only("2-")[$ E_p = m dot g dot h $]
// The formula for potential energy is shown from slide 2 onward
#v(20pt)
#only("3-")[where $m$ = mass, $g$ = gravity, $h$ = height]
// The explanation of the formula variables is shown from slide 3 onward
#only("1")[
#voiceover("The potential energy in this context is the energy stored in the water due to its height relative to a lower reference point.")
]
#only("2")[
#voiceover("This potential energy can be calculated using the formula E sub p equals m times g times h.")
]
#only("3")[
#voiceover("In this equation, m represents the mass of the water, g is the acceleration due to gravity, and h is the height of the water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Turbines]
// The title "Turbines" is shown on this slide
#v(40pt)
#only("1-")[- Water flows through turbines, causing them to rotate 🔄]
// The point about water flowing through turbines causing rotation is shown from slide 1 onward
#v(20pt)
#only("2-")[- Rotation drives generators to produce electricity ⚡]
// The point about rotation driving generators is shown from slide 2 onward
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple illustration of a turbine
fig, ax = plt.subplots()
turbine = plt.Circle((0.5, 0.5), 0.2, color='skyblue')
ax.add_patch(turbine)
plt.arrow(0.5, 0.7, 0, -0.4, head_width=0.05, head_length=0.1, fc='k', ec='k')
plt.arrow(0.5, 0.3, 0, 0.4, head_width=0.05, head_length=0.1, fc='k', ec='k')
plt.text(0.6, 0.5, 'Turbine', fontsize=12)
plt.text(0.1, 0.8, 'Water Flow', fontsize=10)
plt.text(0.1, 0.2, 'Rotation', fontsize=10)
plt.axis('equal')
plt.axis('off')
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("As the water flows through the turbines, it causes them to rotate.")
]
#only("2")[
#voiceover("This rotation then drives generators, which convert the mechanical energy into electrical energy.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hydroelectric power plants convert water's potential energy into electricity 🌊 → ⚡]
#v(20pt)
#only("2-")[- Potential energy depends on the height of the water 📏]
#v(20pt)
#only("3-")[- Turbines and generators facilitate this energy conversion 🔄]
#only("1")[
#voiceover("In summary, hydroelectric power plants convert the potential energy of water, which depends on its height, into electrical energy.")
]
#only("2")[
#voiceover("The higher the water, the more potential energy it possesses.")
]
#only("3")[
#voiceover("This conversion is made possible by the use of turbines, which are rotated by the flowing water, and generators, which convert this mechanical energy into usable electricity.")
]
]