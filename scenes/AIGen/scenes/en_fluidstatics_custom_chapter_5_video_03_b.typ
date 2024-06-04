#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyant Force 🌊]
#v(40pt)
#only("1-")[Not quite correct...]
#v(20pt)
#only("2-")[Let's break down the solution step by step.]
#only("1")[
#voiceover("Not quite. Let's take a look at the correct solution.")
]
#only("2")[
#voiceover("Let's break down the solution step by step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Diver's volume: $V = 0.075 m^3$]
#v(20pt)
#only("2-")[- Seawater density: $rho = 1020 "kg"/m^3$]
#v(20pt)
#only("3-")[- Acceleration due to gravity: $g = 9.81 m/s^2$]
#only("1")[
#voiceover("We are given the diver's volume as 0.075 cubic meters.")
]
#only("2")[
#voiceover("The density of seawater is 1020 kilograms per cubic meter.")
]
#only("3")[
#voiceover("And the acceleration due to gravity is 9.81 meters per second squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Formula]
#v(40pt)
#only("1-")[The formula for buoyant force is:]
#v(20pt)
#only("2-")[$ F_A = rho dot V dot g $]
#only("1")[
#voiceover("The formula for buoyant force is...")
]
#only("2")[
#voiceover("F sub A equals rho times V times g, where F sub A is the buoyant force, rho is the density of the fluid, V is the volume of the displaced fluid, and g is the acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Substitute the given values into the formula:]
#v(20pt)
#only("2-")[$ F_A = 1020 dot 0.075 dot 9.81 $]
#v(20pt)
#only("3-")[$ F_A = 750.255 N $]
#only("1")[
#voiceover("We substitute the given values into the formula.")
]
#only("2")[
#voiceover("F sub A equals 1020 times 0.075 times 9.81.")
]
#only("3")[
#voiceover("Simplifying, we get F sub A equals 750.255 Newtons.")
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

# Create a figure and a 3D Axes
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a cylinder
r = 0.2
h = 1.0
x = np.linspace(-r, r, 100)
z = np.linspace(0, h, 100)
X, Z = np.meshgrid(x, z)

Y = np.sqrt(r**2 - X**2)
ax.plot_surface(X, Y, Z, color='blue', alpha=0.5)
ax.plot_surface(X, -Y, Z, color='blue', alpha=0.5)

# Create arrows for buoyant force
ax.quiver(0, 0, 0, 0, 0, 1, length=0.5, color='red', arrow_length_ratio=0.2)
ax.text(0, 0, 0.6, 'Buoyant Force', color='red', ha='center')

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Diver and Buoyant Force')

# Adjust the view
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the diver and the buoyant force acting on them. The blue cylinder represents the diver, and the red arrow represents the upward buoyant force.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The buoyant force acting on the diver is 750.255 N. 🏊]
#only("1")[
#voiceover("In conclusion, the buoyant force acting on the diver with a volume of 0.075 cubic meters at this depth is 750.255 Newtons.")
]
]