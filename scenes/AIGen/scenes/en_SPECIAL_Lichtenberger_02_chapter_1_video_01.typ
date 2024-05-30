#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in Buildings 🏢]
#v(40pt)
#only("1-")[- Pressure varies with height 📏]
#v(20pt)
#only("2-")[- Due to gravitational force 🌍]
#v(20pt)
#only("3-")[- Acting on the water column 💧]
#only("1")[
#voiceover("In buildings, the water pressure varies depending on the height. This means that the pressure is different on different floors of the building.")
]
#only("2")[
#voiceover("This variation in pressure is due to the gravitational force of the Earth.")
]
#only("3")[
#voiceover("Gravity acts on the column of water in the pipes, creating a pressure that increases with depth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Formula]
#v(40pt)
#only("1-")[$ P = rho g h $]
#v(20pt)
#only("2-")[- $ P $: Pressure (Pa)]
#v(10pt)
#only("3-")[- $ rho $: Density of water (kg/m³)]
#v(10pt)
#only("4-")[- $ g $: Gravitational acceleration (m/s²)]
#v(10pt)
#only("5-")[- $ h $: Height of the water column (m)]
#only("1")[
#voiceover("The pressure can be calculated using the formula P equals rho g h.")
]
#only("2")[
#voiceover("Here, P represents the pressure, measured in Pascals.")
]
#only("3")[
#voiceover("Rho is the density of water, which is approximately 1000 kilograms per cubic meter.")
]
#only("4")[
#voiceover("g is the gravitational acceleration, which is about 9.81 meters per second squared on Earth.")
]
#only("5")[
#voiceover("And h is the height of the water column, measured in meters.")
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

h = np.linspace(0, 10, 100)  # Heights from 0 to 10 meters
rho = 1000  # Density of water (kg/m³)
g = 9.81  # Gravitational acceleration (m/s²)
P = rho * g * h  # Pressure calculation

plt.figure(figsize=(6, 6))
plt.plot(P/1000, h, linewidth=2, color='blue')  # Plotting pressure in kPa
plt.xlabel('Pressure (kPa)')
plt.ylabel('Height (m)')
plt.title('Water Pressure vs. Height')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows how the water pressure increases linearly with height. The pressure is plotted on the horizontal axis in kilopascals, while the height is on the vertical axis in meters.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Water pressure varies with height in buildings 🏢]
#v(20pt)
#only("2-")[- Gravitational force acts on the water column 🌍💧]
#v(20pt)
#only("3-")[- Pressure increases linearly with depth 📈]
#only("1")[
#voiceover("To summarize, water pressure in buildings varies with height.")
]
#only("2")[
#voiceover("This is because the gravitational force acts on the column of water in the pipes.")
]
#only("3")[
#voiceover("As a result, the pressure increases linearly as we go deeper, which is why the pressure is higher on lower floors of a building.")
]
]