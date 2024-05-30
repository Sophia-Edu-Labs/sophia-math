#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in Buildings 🏠💧]

#v(40pt)

#only("1-")[- Varies with height due to gravity 🌍]
#only("1")[#voiceover("Water pressure in buildings varies with height due to the gravitational force acting on the water column.")]

#v(20pt)

#only("2-")[- Calculated using $P = P_("ground floor") + rho dot g dot h$]
#only("2")[#voiceover("The overpressure at a certain height can be calculated using the formula P equals P ground floor plus rho times g times h, where rho is the density of water, g is the acceleration due to gravity, and h is the height difference.")]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define building parameters
ground_floor_pressure = 4.0  # bar
water_density = 1000  # kg/m^3
g = 9.81  # m/s^2
height = np.linspace(0, 20, 100)  # m

# Calculate pressure at different heights
pressure = ground_floor_pressure + water_density * g * height / 100000  # Convert Pa to bar

# Create the plot
plt.figure(figsize=(6, 8))
plt.plot(pressure, height, linewidth=2, color='blue')
plt.xlabel('Pressure (bar)')
plt.ylabel('Height (m)')
plt.title('Water Pressure vs. Height in a Building')
plt.grid(True)
plt.xlim(3.5, 6.5)
plt.ylim(0, 20)

# Annotate ground floor pressure
plt.annotate(f'Ground Floor\n{ground_floor_pressure} bar', xy=(ground_floor_pressure, 0), 
             xytext=(ground_floor_pressure+0.1, 2), arrowprops=dict(facecolor='black', shrink=0.05))

# Annotate pressure at a specific height
specific_height = 14
specific_pressure = ground_floor_pressure + water_density * g * specific_height / 100000
plt.plot(specific_pressure, specific_height, 'ro')
plt.annotate(f'{specific_pressure:.1f} bar', xy=(specific_pressure, specific_height),
             xytext=(specific_pressure+0.1, specific_height-1), arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[#voiceover("This graph shows how the water pressure changes with height in a building. The ground floor pressure is marked, and you can see how the pressure increases linearly as we go up the building due to the increasing weight of the water column.")]

#v(20pt)

#only("4-")[- Pressure decreases by $rho dot g dot Delta h$ if reservoir level drops]
#only("4")[#voiceover("If the water reservoir level drops by a certain amount, the pressure at each tap in the building will decrease by rho times g times the change in reservoir height. This is because the height of the water column above each tap is reduced.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Water pressure varies with height in buildings 📏]
#only("1")[#voiceover("To summarize, the key points are: Water pressure varies with height in buildings due to gravity acting on the water column.")]

#v(20pt)

#only("2-")[- Calculable using fluid statics principles 🧮]
#only("2")[#voiceover("This pressure variation can be calculated using the principles of fluid statics, specifically the formula relating pressure, density, gravity, and height.")]

#v(20pt)

#only("3-")[- Changes in reservoir level affect pressure throughout 🆙🔽]
#only("3")[#voiceover("And changes in the water reservoir level will affect the pressure at all points in the building's water system by an amount proportional to the change in reservoir height.")]

#v(20pt)

#only("4-")[- Understanding this is crucial for building design 🏗️]
#only("4")[#voiceover("Understanding these principles is crucial for designing safe and functional water systems in multi-story buildings.")]
]