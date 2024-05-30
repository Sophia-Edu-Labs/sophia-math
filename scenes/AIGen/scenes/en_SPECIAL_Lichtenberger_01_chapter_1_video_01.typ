#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure and Depth 🌊]
#v(40pt)
#only("1-")[- Pressure increases with depth 📏]
#only("2-")[- Due to weight of water above 🏋️]
#only("3-")[- Pressure = $"density" dot "gravity" dot "depth"$]
#only("4-")[- $p = ρ g h$]
#only("1")[
#voiceover("Let's explore how water pressure changes with depth. As we dive deeper into a body of water, the pressure increases.")
]
#only("2")[
#voiceover("This is because the deeper we go, the more water there is above us. The weight of this water column pushes down, creating pressure.")
]
#only("3")[
#voiceover("Mathematically, the pressure at a given depth is equal to the density of water multiplied by the acceleration due to gravity and the depth.")
]
#only("4")[
#voiceover("This can be expressed by the formula p equals ρ g h, where p is the pressure, ρ is the density of water, g is the acceleration due to gravity, and h is the depth.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Pressure Change 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

depth = np.linspace(0, 10, 100)  # Depth from 0 to 10 meters
rho = 1000  # Density of water (kg/m^3)
g = 9.81  # Acceleration due to gravity (m/s^2)
pressure = rho * g * depth  # Calculate pressure

plt.figure(figsize=(6, 4))
plt.plot(pressure, -depth, 'b-', linewidth=2)
plt.xlabel('Pressure (Pa)')
plt.ylabel('Depth (m)')
plt.title('Water Pressure vs Depth')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph showing how pressure changes with depth. The horizontal axis represents pressure, and the vertical axis represents depth. As we go deeper, moving down the vertical axis, the pressure increases linearly.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Water pressure increases with depth 🌊📏]
#only("2-")[- Weight of water above causes pressure 🏋️]
#only("3-")[- Formula: $p = ρ dot g dot h$ 📜]
#only("1")[
#voiceover("To summarize, water pressure increases as we go deeper due to the weight of the water above.")
]
#only("2")[
#voiceover("The more water there is above a certain point, the greater the pressure at that point.")
]
#only("3")[
#voiceover("This relationship is described by the formula p equals ρ g h, which relates pressure to depth, taking into account the density of water and the acceleration due to gravity.")
]
]