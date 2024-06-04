#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift System 🏗️]
#v(40pt)
#only("1-")[- Used to lift heavy objects 🏋️]
#only("1")[
#voiceover("A hydraulic lift system is used to lift heavy objects, such as cars or machinery.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Principles 🔑]
#v(40pt)
#only("1-")[- Force applied through a fluid in a closed system]
#v(20pt)
#only("2-")[- Utilizes principles of pressure and area]
#only("1")[
#voiceover("It works by applying force through a fluid in a closed system.")
]
#only("2")[
#voiceover("The system utilizes the principles of pressure and area to generate the lifting force.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How It Works 🛠️]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 6))

ax.set_xlim(0, 10)
ax.set_ylim(0, 10)
ax.set_aspect('equal')

ax.text(2, 8, 'Hydraulic Fluid', fontsize=12, color='blue')
ax.text(6, 2, 'Lift Platform', fontsize=12, color='green')

ax.add_patch(plt.Rectangle((1, 7), 4, 2, fill=True, color='blue', alpha=0.5))
ax.add_patch(plt.Rectangle((5, 1), 4, 2, fill=True, color='green', alpha=0.5))

ax.arrow(3, 6, 0, -2, head_width=0.5, head_length=0.5, fc='k', ec='k')
ax.text(3.2, 5, 'Force', fontsize=12)

ax.arrow(7, 4, 0, 2, head_width=0.5, head_length=0.5, fc='k', ec='k')
ax.text(7.2, 5, 'Lift', fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("When a force is applied to the fluid in a smaller cylinder, it creates pressure. This pressure is transmitted through the fluid to a larger cylinder, where it acts over a greater area. This multiplication of force allows heavy objects to be lifted with a relatively small input force.")
]
]


No corrections are necessary.]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Hydraulic lift system: lifts heavy objects 🏋️]
#v(20pt)
#only("2-")[- Uses force applied through fluid in closed system 💧]
#v(20pt)
#only("3-")[- Utilizes pressure and area principles 📏]
#only("1")[
#voiceover("In summary, a hydraulic lift system is used to lift heavy objects.")
]
#only("2")[
#voiceover("It uses force applied through a fluid in a closed system.")
]
#only("3")[
#voiceover("The system utilizes the principles of pressure and area to generate the lifting force, allowing heavy objects to be lifted with a relatively small input force.")
]
]