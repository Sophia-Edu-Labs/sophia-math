#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Applications 🌍]
#v(40pt)
#only("1-")[- Physics 🔭]
#v(20pt)
#only("2-")[- Engineering 🏗️]
#v(20pt)
#only("3-")[- Economics 📈]
#v(20pt)
#only("4-")[- Biology 🌿]

#only("1")[
#voiceover("Power functions have numerous real-world applications across various fields. In physics, they are used to model relationships between quantities such as distance, time, and velocity.")
]
#only("2")[
#voiceover("In engineering, power functions are employed to describe the behavior of materials under stress or the efficiency of machines.")
]
#only("3")[
#voiceover("Economists use power functions to analyze economic growth, income distribution, and production functions.")
]
#only("4")[
#voiceover("In biology, power functions are applied to model population growth, metabolic rates, and allometric scaling relationships.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Gravity 🪐]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the gravitational force function
def F(r, m1, m2, G):
    return G * m1 * m2 / r**2

# Set up the parameters
m1 = 6e24  # Mass of Earth (kg)
m2 = 7.34e22  # Mass of the Moon (kg)
G = 6.67e-11  # Gravitational constant (m^3 kg^-1 s^-2)
r = np.linspace(3.8e8, 4e8, 100)  # Range of distances (m)

# Calculate the gravitational force
F_gravity = F(r, m1, m2, G)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(r, F_gravity, linewidth=2, color='blue')
plt.xlabel('Distance (m)')
plt.ylabel('Gravitational Force (N)')
plt.title('Gravitational Force between Earth and Moon')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Newton's law of universal gravitation states that the gravitational force between two objects is proportional to the product of their masses and inversely proportional to the square of the distance between them. This relationship is described by the power function $F = G (m_1 m_2) / r^2$, where $F$ is the gravitational force, $G$ is the gravitational constant, $m_1$ and $m_2$ are the masses of the objects, and $r$ is the distance between them.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Fluid Dynamics 💧]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the drag force function
def F_drag(rho, v, C_d, A):
    return 0.5 * rho * v**2 * C_d * A

# Set up the parameters
rho = 1.225  # Density of air (kg/m^3)
C_d = 0.5  # Drag coefficient (dimensionless)
A = 1  # Cross-sectional area (m^2)
v = np.linspace(0, 100, 100)  # Range of velocities (m/s)

# Calculate the drag force
F_drag_values = F_drag(rho, v, C_d, A)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(v, F_drag_values, linewidth=2, color='red')
plt.xlabel('Velocity (m/s)')
plt.ylabel('Drag Force (N)')
plt.title('Drag Force vs. Velocity')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("In fluid dynamics, the drag force experienced by an object moving through a fluid is proportional to the square of its velocity. This relationship is described by the power function $F_d = 0.5 rho v^2 C_d A$, where $F_d$ is the drag force, $rho$ is the fluid density, $v$ is the velocity, $C_d$ is the drag coefficient, and $A$ is the cross-sectional area of the object.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 📝]
#v(40pt)
#only("1-")[- Power functions have diverse applications 🌈]
#v(20pt)
#only("2-")[- Used to model relationships in various fields 🔬]
#v(20pt)
#only("3-")[- Examples: Gravity, fluid dynamics 🌍💧]
#v(20pt)
#only("4-")[- Essential tool for understanding the world 🔧]

#only("1")[
#voiceover("In summary, power functions have diverse applications across many fields of study.")
]
#only("2")[
#voiceover("They are used to model relationships between quantities in physics, engineering, economics, and biology, among others.")
]
#only("3")[
#voiceover("We've seen examples of power functions in Newton's law of universal gravitation and the drag force experienced by objects moving through fluids.")
]
#only("4")[
#voiceover("Understanding power functions is essential for making sense of the world around us and solving real-world problems.")
]
]