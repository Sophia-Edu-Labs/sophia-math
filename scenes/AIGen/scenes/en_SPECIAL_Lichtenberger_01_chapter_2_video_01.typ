#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure and Depth]
#v(40pt)
#only("1-")[- Pressure increases with depth 🌊]
#v(20pt)
#only("2-")[- Formula: $ P = rho g h $]
#v(20pt)
#only("3-")[- $rho$ = density, $g$ = gravity, $h$ = depth]
#only("1")[
#voiceover("As an object descends deeper into a fluid, the pressure it experiences increases. This is because the weight of the fluid above the object increases with depth.")
]
#only("2")[
#voiceover("The pressure at a given depth can be calculated using the formula P equals rho g h, where P is the pressure,")
]
#only("3")[
#voiceover("rho is the density of the fluid, g is the acceleration due to gravity, and h is the depth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Depth]
#v(40pt)
#only("1-")[- Buoyant force depends on displaced fluid 🎈]
#v(20pt)
#only("2-")[- Formula: $ F_b = rho g V $]
#v(20pt)
#only("3-")[- $V$ = volume of displaced fluid]
#only("1")[
#voiceover("The buoyant force acting on an object also changes with depth. This force depends on the amount of fluid displaced by the object.")
]
#only("2")[
#voiceover("The buoyant force can be calculated using the formula F sub b equals rho g V, where F sub b is the buoyant force,")
]
#only("3")[
#voiceover("rho and g are the same as before, and V is the volume of fluid displaced by the object.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Objects]
#v(40pt)
#only("1-")[- Objects compress as they descend 📉]
#v(20pt)
#only("2-")[- Buoyancy changes with object's volume 🎡]
#v(20pt)
#only("3-")[- Equilibrium depth: $F_b = "weight"$ ⚖️]
#only("1")[
#voiceover("As an object descends, the increasing pressure can cause it to compress, reducing its volume. This compression is more significant for gases than for liquids or solids.")
]
#only("2")[
#voiceover("The change in an object's volume affects its buoyancy. If the object compresses, it displaces less fluid, reducing the buoyant force acting on it.")
]
#only("3")[
#voiceover("An object will reach an equilibrium depth when the buoyant force equals its weight. At this point, the object will neither rise nor sink.")
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
fig, ax = plt.subplots(figsize=(6, 6))

# Create a gradient background to represent depth
depth = np.linspace(0, 1, 100)
depth_gradient = np.vstack((depth, depth))
ax.imshow(depth_gradient, cmap='viridis', extent=[0, 1, 1, 0], aspect='auto', alpha=0.7)

# Plot arrows to show increasing pressure and buoyancy
ax.annotate('', xy=(0.2, 0.8), xytext=(0.2, 0.2), arrowprops=dict(facecolor='red', edgecolor='none', width=1, headwidth=8, headlength=10), annotation_clip=False)
ax.annotate('', xy=(0.8, 0.2), xytext=(0.8, 0.8), arrowprops=dict(facecolor='blue', edgecolor='none', width=1, headwidth=8, headlength=10), annotation_clip=False)

# Add labels
ax.text(0.22, 0.5, 'Increasing\nPressure', color='white', fontsize=12, ha='left', va='center')
ax.text(0.78, 0.5, 'Increasing\nBuoyancy', color='white', fontsize=12, ha='right', va='center')

# Set axis labels and title
ax.set_xlabel('Horizontal Position')
ax.set_ylabel('Depth')
ax.set_title('Pressure and Buoyancy vs. Depth')

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This visualization shows how pressure and buoyancy change with depth. The background color represents depth, with darker colors indicating greater depths. The red arrow shows increasing pressure, while the blue arrow shows increasing buoyancy.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Pressure increases with depth 🌊]
#v(20pt)
#only("2-")[- Buoyancy depends on displaced fluid 🎈]
#v(20pt)
#only("3-")[- Objects reach equilibrium depth when $F_b = "weight"$ ⚖️]
#only("1")[
#voiceover("In summary, pressure increases with depth in a fluid, following the formula P equals rho g h.")
]
#only("2")[
#voiceover("Buoyancy also changes with depth, as it depends on the volume of fluid displaced by an object, according to the formula F sub b equals rho g V.")
]
#only("3")[
#voiceover("Objects in a fluid will reach an equilibrium depth when the buoyant force equals their weight, at which point they will neither rise nor sink.")
]
]