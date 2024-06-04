#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Forces on a Dam 🌊]
#v(40pt)
#only("1-")[- Water exerts force on the dam 💪]
#v(20pt)
#only("2-")[- Force increases with depth ⬇]
#v(20pt)
#only("3-")[- Force also depends on the submerged area 🟦]
#only("1")[
#voiceover("When a dam holds back water, the water exerts a force on the dam.")
]
#only("2")[
#voiceover("This force increases as we go deeper into the water. That's because the pressure of water increases with depth.")
]
#only("3")[
#voiceover("The force also depends on the area of the dam that's submerged under water. A larger submerged area means a greater force.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydrostatic Pressure 📏]
#v(40pt)
#only("1-")[$ p = rho g h $]
#v(20pt)
#only("2-")[- $p$: pressure (Pa)]
#v(10pt)
#only("3-")[- $rho$: density of water (1000 kg/m³)]
#v(10pt)
#only("4-")[- $g$: acceleration due to gravity (9.81 m/s²)]
#v(10pt)
#only("5-")[- $h$: depth (m)]
#only("1")[
#voiceover("The pressure at a certain depth is given by this formula: pressure equals density times acceleration due to gravity times depth.")
]
#only("2")[
#voiceover("Here, p represents pressure, which is measured in Pascals.")
]
#only("3")[
#voiceover("Rho is the density of water, which is about 1000 kilograms per cubic meter.")
]
#only("4")[
#voiceover("g is the acceleration due to gravity, approximately 9.81 meters per second squared.")
]
#only("5")[
#voiceover("And h is the depth under the surface of the water, measured in meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Force on the Dam 🌊💪]
#v(40pt)
#only("1-")[$ F = p A $]
#v(20pt)
#only("2-")[- $F$: force (N)]
#v(10pt)
#only("3-")[- $p$: pressure (Pa)]
#v(10pt)
#only("4-")[- $A$: submerged area (m²)]
#only("1")[
#voiceover("The force on the dam is then calculated by multiplying the pressure by the submerged area of the dam.")
]
#only("2")[
#voiceover("F represents the force, measured in Newtons.")
]
#only("3")[
#voiceover("p is the pressure, which we calculated in the previous step.")
]
#only("4")[
#voiceover("And A is the submerged area of the dam, measured in square meters.")
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

h = np.linspace(0, 10, 100)  # Depth from 0 to 10 meters
rho = 1000  # Density of water (kg/m³)
g = 9.81    # Acceleration due to gravity (m/s²)
A = 1       # Area (m²)

p = rho * g * h             # Pressure
F = p * A                   # Force

plt.figure(figsize=(6, 4))
plt.plot(h, F/1000, linewidth=2, color='blue')
plt.xlabel('Depth (m)')
plt.ylabel('Force (kN)')
plt.title('Force on Dam vs Depth')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows how the force on the dam increases with depth. The depth is on the horizontal axis, and the force in kilonewtons is on the vertical axis. As you can see, the force increases linearly with depth.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Water exerts force on dams 🌊💪]
#v(20pt)
#only("2-")[- Force increases with depth and submerged area ⬇🟦]
#v(20pt)
#only("3-")[- Pressure: $p = rho g h$]
#v(20pt)
#only("4-")[- Force: $F = p A$]
#only("1")[
#voiceover("To summarize, water exerts a force on dams.")
]
#only("2")[
#voiceover("This force increases with the depth of the water and the submerged area of the dam.")
]
#only("3")[
#voiceover("The pressure is calculated using the formula p equals rho g h.")
]
#only("4")[
#voiceover("And the force is calculated by multiplying the pressure by the submerged area.")
]
]