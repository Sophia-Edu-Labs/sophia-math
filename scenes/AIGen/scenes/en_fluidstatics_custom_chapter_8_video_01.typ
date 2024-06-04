#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply System 🏙️💧]
#v(40pt)
#only("1-")[- Relies on gravity and pressure differences]
#v(20pt)
#only("2-")[- Water distributed from reservoirs to various parts of the city]
#only("1")[
#voiceover("City water supply systems rely on the principles of gravity and pressure differences to distribute water effectively.")
]
#only("2")[
#voiceover("Water is stored in reservoirs at higher elevations and then distributed to various parts of the city through a network of pipes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gravity's Role 🌍]
#v(40pt)
#only("1-")[- Water naturally flows from higher to lower elevations]
#v(20pt)
#only("2-")[- Potential energy converted to kinetic energy]
#only("1")[
#voiceover("Gravity plays a crucial role in this process. Water naturally flows from higher elevations to lower elevations.")
]
#only("2")[
#voiceover("As water descends, its potential energy is converted into kinetic energy, providing the necessary force for distribution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Differences 📈📉]
#v(40pt)
#only("1-")[- Created by the weight of the water column]
#v(20pt)
#only("2-")[- Higher pressure at lower elevations]
#v(20pt)
#only("3-")[- Pressure calculated using: $p = rho g h$]
#only("1")[
#voiceover("Pressure differences are created by the weight of the water column above a given point.")
]
#only("2")[
#voiceover("As a result, water pressure is higher at lower elevations compared to higher elevations.")
]
#only("3")[
#voiceover("The pressure at a specific point can be calculated using the formula p equals rho g h, where rho is the density of water, g is the acceleration due to gravity, and h is the height of the water column.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Distribution Network 🚰🏠]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple plot representing a city water supply system
fig, ax = plt.subplots(figsize=(6, 4))

# Add a reservoir at a higher elevation
ax.add_patch(plt.Rectangle((0.5, 0.7), 0.4, 0.2, facecolor='blue', alpha=0.7))
ax.text(0.7, 0.8, 'Reservoir', ha='center')

# Add houses at lower elevations
house_coords = [(0.2, 0.2), (0.4, 0.3), (0.6, 0.2), (0.8, 0.3)]
for coord in house_coords:
    ax.add_patch(plt.Rectangle(coord, 0.1, 0.1, facecolor='gray', alpha=0.7))

# Connect the reservoir to the houses with pipes
for coord in house_coords:
    ax.plot([0.7, coord[0]+0.05], [0.7, coord[1]+0.1], color='black', linewidth=1)

# Add labels and title
ax.set_xlabel('Distance')
ax.set_ylabel('Elevation')
ax.set_title('City Water Supply System')

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
#voiceover("The water distribution network consists of pipes that carry water from the reservoirs to individual homes and buildings.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- City water supply systems rely on gravity and pressure differences 🌍📈📉]
#v(20pt)
#only("2-")[- Water flows from reservoirs at higher elevations to lower elevations 🏞️➡️🏙️]
#v(20pt)
#only("3-")[- Pressure is higher at lower elevations due to the weight of the water column 📏]
#only("1")[
#voiceover("To summarize, city water supply systems rely on the principles of gravity and pressure differences to distribute water effectively.")
]
#only("2")[
#voiceover("Water flows from reservoirs at higher elevations to lower elevations, where it is distributed to homes and buildings.")
]
#only("3")[
#voiceover("The pressure is higher at lower elevations due to the weight of the water column above, ensuring efficient water delivery throughout the city.")
]
]