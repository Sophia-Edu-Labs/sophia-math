#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulics 101]
#v(40pt)
#only("1-")[- Using fluid pressure to lift heavy objects 🏋️]
#v(20pt)
#only("2-")[- Pressure transmitted uniformly in all directions 🌀]
#only("1")[
#voiceover("Hydraulics is a fascinating field that involves using fluid pressure to lift heavy objects. It's a powerful tool used in many applications, from car jacks to heavy machinery.")
]
#only("2")[
#voiceover("One of the key principles of hydraulics is that pressure is transmitted uniformly in all directions within a fluid. This means that when you apply pressure at one point in a fluid, that pressure is felt equally in all directions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How it Works]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 6))

# Draw the hydraulic system
ax.plot([0, 0], [0, 2], 'k-', linewidth=2)  # Left wall
ax.plot([4, 4], [0, 2], 'k-', linewidth=2)  # Right wall
ax.plot([0, 4], [0, 0], 'k-', linewidth=2)  # Bottom
ax.plot([0, 4], [2, 2], 'k-', linewidth=2)  # Top
ax.plot([1, 1], [0, 1], 'k-', linewidth=2)  # Piston 1
ax.plot([3, 3], [0, 1.5], 'k-', linewidth=2)  # Piston 2

# Add arrows for pressure
ax.arrow(1, 0.5, 0, 0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, 0, -0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, 0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(1, 0.5, -0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')

ax.arrow(3, 0.75, 0, 0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, 0, -0.4, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, 0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')
ax.arrow(3, 0.75, -0.4, 0, head_width=0.1, head_length=0.2, fc='r', ec='r')

ax.set_aspect('equal')
ax.set_xlim(-0.5, 4.5)
ax.set_ylim(-0.5, 2.5)
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a simple diagram of a hydraulic system. When force is applied to the small piston on the left, it creates pressure in the fluid. This pressure is then transmitted uniformly to the larger piston on the right.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mechanical Advantage]
#v(40pt)
#only("1-")[- Small force on small piston 🔧]
#v(20pt)
#only("2-")[- Creates large force on large piston 💪]
#only("1")[
#voiceover("The beauty of hydraulics lies in its ability to create a mechanical advantage. A small force applied to a small piston can create a much larger force on a larger piston.")
]
#only("2")[
#voiceover("This is because the pressure is equal throughout the system. So, the same pressure acting on a larger area results in a larger force. This is how hydraulics allows us to lift heavy loads with relatively little effort.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Applications]
#v(40pt)
#only("1-")[- Car jacks 🚗]
#v(20pt)
#only("2-")[- Construction equipment 🏗️]
#v(20pt)
#only("3-")[- Hydraulic presses 🗜️]
#only("1")[
#voiceover("Hydraulics is used in many everyday applications. For example, the car jack you might use to change a tire relies on hydraulic principles.")
]
#only("2")[
#voiceover("In construction, heavy equipment like excavators and bulldozers use hydraulic systems to operate their attachments.")
]
#only("3")[
#voiceover("Hydraulic presses, which can generate enormous forces, are used in manufacturing for tasks like stamping metal parts.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hydraulics uses fluid pressure to lift heavy objects 🏋️]
#v(20pt)
#only("2-")[- Pressure is transmitted uniformly in all directions 🌀]
#v(20pt)
#only("3-")[- Mechanical advantage: small force creates large force 🔧 → 💪]
#only("1")[
#voiceover("To recap, hydraulics is about using fluid pressure to lift heavy objects.")
]
#only("2")[
#voiceover("The key principle is that pressure is transmitted uniformly in all directions within a fluid.")
]
#only("3")[
#voiceover("And by leveraging this principle, hydraulic systems can create a mechanical advantage, where a small force input can generate a large force output. This is what makes hydraulics such a powerful and widely used technology.")
]
]