#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating House Design 🏠]
#v(40pt)
#only("1-")[- Calculating volume of displaced water 💧]
#v(20pt)
#only("2-")[- Given: Mass of house = 50 tons (50,000 kg) 🏗️]
#v(20pt)
#only("3-")[- Formula: $ V = m / rho $ 🧮]
#v(20pt)
#only("4-")[- Density of water: $ rho = 1000 "kg/m"^3 $ 🌊]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]
#only("2")[
#voiceover("We are given that the floating house weighs 50 tons, which is equivalent to 50,000 kilograms.")
]
#only("3")[
#voiceover("To find the volume of water displaced, we can use the formula V equals m divided by rho, where V is the volume, m is the mass, and rho is the density.")
]
#only("4")[
#voiceover("We know that the density of water is 1000 kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution 🎯]
#v(40pt)
#only("1-")[$ V = m / rho $]
#v(20pt)
#only("2-")[$ V = 50000 / 1000 $]
#v(20pt)
#only("3-")[$ V = 50 "m"^3 $]
#only("1")[
#voiceover("So, let's plug in the values into the formula. Volume equals mass divided by density.")
]
#only("2")[
#voiceover("That's 50,000 kilograms divided by 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("Simplifying this, we get that the volume of water displaced is 50 cubic meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and a 3D Axes
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a cube
X, Y, Z = np.meshgrid(np.arange(2), np.arange(5), np.arange(5))
cube = (X < 1) & (Y < 5) & (Z < 5)
colors = np.empty(cube.shape, dtype=object)
colors[cube] = 'blue'

# Plot the cube
ax.voxels(cube, facecolors=colors, edgecolor='k', alpha=0.5)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('50 m³ Cube')

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Here's a visualization of what 50 cubic meters looks like. It's a cube with dimensions 5 meters by 5 meters by 2 meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔄]
#v(40pt)
#only("1-")[- Mass of floating house: 50,000 kg 🏗️]
#v(20pt)
#only("2-")[- Density of water: 1000 kg/m³ 🌊]
#v(20pt)
#only("3-")[- Formula: Volume = Mass / Density 🧮]
#v(20pt)
#only("4-")[- Volume of water displaced: 50 m³ 💧]
#only("1")[
#voiceover("To recap, we were given the mass of the floating house as 50,000 kilograms.")
]
#only("2")[
#voiceover("We also knew that the density of water is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("Using the formula that volume equals mass divided by density,")
]
#only("4")[
#voiceover("we calculated that the volume of water displaced by the floating house is 50 cubic meters.")
]
]