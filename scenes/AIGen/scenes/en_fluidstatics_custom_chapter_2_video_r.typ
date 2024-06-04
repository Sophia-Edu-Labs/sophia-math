#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Forces on a Dam 🌊]
#v(40pt)
#only("1-")[- Force depends on depth and area]
#v(20pt)
#only("2-")[- Deeper sections experience greater force]
#only("1")[
#voiceover("The force exerted by water on a dam section depends on two key factors: the depth of the section and its area.")
]
#only("2")[
#voiceover("Deeper sections of the dam experience greater force due to the increased water pressure at greater depths.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Force 🧮]
#v(40pt)
#only("1-")[$ F = rho dot g dot h dot A $]
#v(20pt)
#only("2-")[- $rho$: water density (kg/m³)]
#v(10pt)
#only("3-")[- $g$: gravitational acceleration (m/s²)]
#v(10pt)
#only("4-")[- $h$: depth (m)]
#v(10pt)
#only("5-")[- $A$: area (m²)]
#only("1")[
#voiceover("The force on a dam section can be calculated using the formula F equals rho times g times h times A.")
]
#only("2")[
#voiceover("Here, rho represents the density of water in kilograms per cubic meter.")
]
#only("3")[
#voiceover("g is the gravitational acceleration in meters per second squared.")
]
#only("4")[
#voiceover("h is the depth of the section in meters.")
]
#only("5")[
#voiceover("And A is the area of the section in square meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Forces 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Dam dimensions
dam_height = 10
dam_width = 20

# Create a grid of points
x = np.linspace(0, dam_width, 100)
y = np.linspace(0, dam_height, 100)
X, Y = np.meshgrid(x, y)

# Calculate the force at each point
rho = 1000  # Water density (kg/m^3)
g = 9.81    # Gravitational acceleration (m/s^2)
F = rho * g * Y

# Create the plot
plt.figure(figsize=(8, 6))
plt.contourf(X, Y, F, cmap='viridis')
plt.colorbar(label='Force (N/m²)')
plt.xlabel('Width (m)')
plt.ylabel('Height (m)')
plt.title('Force Distribution on a Dam')
plt.show()
```,
width: 360pt),
caption: [Force distribution on a dam. Deeper sections experience greater force, as indicated by the color gradient.],
)
]
]
#only("1")[
#voiceover("This visualization shows the force distribution on a dam. The color gradient indicates that deeper sections experience greater force.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Force on a dam section depends on depth and area]
#v(20pt)
#only("2-")[- Deeper sections experience greater force]
#v(20pt)
#only("3-")[- Force can be calculated using $ F = rho dot g dot h dot A $]
#only("1")[
#voiceover("To summarize, the force on a dam section depends on its depth and area.")
]
#only("2")[
#voiceover("Deeper sections of the dam experience greater force due to increased water pressure.")
]
#only("3")[
#voiceover("The force can be calculated using the formula F equals rho times g times h times A, where rho is the water density, g is the gravitational acceleration, h is the depth, and A is the area of the section.")
]
]