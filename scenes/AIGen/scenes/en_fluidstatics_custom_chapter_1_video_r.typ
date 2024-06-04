#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in High Buildings 🌊]
#v(40pt)
#only("1-")[- Water pressure varies with height due to gravity 🌍]
#v(20pt)
#only("2-")[- Pressure decreases as elevation increases 📈]
#v(20pt)
#only("3-")[- Changes in reservoir level affect pressure distribution 🚰]
#only("1")[
#voiceover("In high buildings, water pressure varies with height due to the force of gravity acting on the water column.")
]
#only("2")[
#voiceover("As elevation increases, the water pressure decreases. This means that taps on higher floors will have lower water pressure compared to those on lower floors.")
]
#only("3")[
#voiceover("Adjustments in the water level of the reservoir supplying the building will affect the overall pressure distribution. If the reservoir level drops, the water pressure at all points in the building will decrease.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Calculation 📏]
#v(40pt)
#only("1-")[- Pressure difference: $Delta p = rho dot g dot h$]
#v(20pt)
#only("2-")[- $rho$: water density, $g$: gravitational acceleration, $h$: height difference]
#only("1")[
#voiceover("The pressure difference between two points in a building can be calculated using the formula delta p equals rho times g times h.")
]
#only("2")[
#voiceover("In this equation, rho represents the density of water, g is the gravitational acceleration, and h is the height difference between the two points.")
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

# Building parameters
ground_pressure = 4 # bar
height = 50 # m
reservoir_drop = 2 # m

# Water properties
rho = 1000 # kg/m^3
g = 9.81 # m/s^2

# Calculate pressure at different heights
heights = np.linspace(0, height, 100)
pressures = ground_pressure - rho * g * heights / 100000 # Convert Pa to bar

# Calculate pressure after reservoir drop
pressures_drop = ground_pressure - rho * g * (heights + reservoir_drop) / 100000

# Plot the pressure distribution
plt.figure(figsize=(8, 6))
plt.plot(pressures, heights, label='Initial Pressure')
plt.plot(pressures_drop, heights, '--', label='Pressure after Reservoir Drop')
plt.xlabel('Pressure (bar)')
plt.ylabel('Height (m)')
plt.ylim(0, height)
plt.xlim(0, ground_pressure)
plt.legend()
plt.grid(True)
plt.title('Water Pressure Distribution in a High Building')
plt.show()
```,
width: 360pt),
caption: [Water pressure distribution in a high building before and after a reservoir level drop.],
)
]
]
#only("1")[
#voiceover("This graph visualizes the water pressure distribution in a high building. The solid line represents the initial pressure, while the dashed line shows the pressure after a drop in the reservoir level.")
]
#only("2")[
#voiceover("As you can see, the water pressure decreases linearly with height. After the reservoir level drops, the pressure at all points in the building decreases by a constant amount.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Water pressure in buildings varies with height due to gravity 🌍]
#v(20pt)
#only("2-")[- Pressure decreases as elevation increases 📈]
#v(20pt)
#only("3-")[- Changes in reservoir level affect the overall pressure distribution 🚰]
#v(20pt)
#only("4-")[- Pressure difference calculated using $Delta p = rho dot g dot h$ 📏]
#only("1")[
#voiceover("To summarize, water pressure in high buildings varies with height due to the force of gravity.")
]
#only("2")[
#voiceover("The pressure decreases as elevation increases, meaning taps on higher floors have lower water pressure.")
]
#only("3")[
#voiceover("Adjustments in the reservoir level supplying the building affect the overall pressure distribution.")
]
#only("4")[
#voiceover("The pressure difference between two points can be calculated using the formula delta p equals rho times g times h, where rho is the water density, g is the gravitational acceleration, and h is the height difference.")
]
]