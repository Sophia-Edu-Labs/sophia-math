#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in Buildings 🏙️]
#v(40pt)
#only("1-")[- Varies with height due to gravity 🌍]
#v(20pt)
#only("2-")[- Fluid column weight increases with height 📏]
#v(20pt)
#only("3-")[- Pressure = $ρgh$ (density × gravity × height) 🧮]
#only("1")[
#voiceover("In high-rise buildings, water pressure varies with height due to the gravitational force acting on the fluid column.")
]
#only("2")[
#voiceover("As the height of the fluid column increases, its weight also increases, leading to higher pressure at the bottom.")
]
#only("3")[
#voiceover("This pressure can be calculated using the formula 'p equals rho g h', where rho is the density of the fluid, g is the acceleration due to gravity, and h is the height of the fluid column.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Pressure Variation with Height 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

h = np.linspace(0, 100, 100)  # Height range from 0 to 100 meters
rho = 1000  # Density of water (kg/m^3)
g = 9.81  # Acceleration due to gravity (m/s^2)

p = rho * g * h / 1000  # Pressure in kPa

plt.figure(figsize=(6, 6))
plt.plot(p, h, linewidth=2, color='blue')
plt.xlabel('Pressure (kPa)')
plt.ylabel('Height (m)')
plt.title('Water Pressure vs. Height in a Building')
plt.grid(True)
plt.xlim(0, 1000)  # Pressure range from 0 to 1000 kPa
plt.ylim(0, 100)   # Height range from 0 to 100 meters
plt.annotate('Ground Floor', xy=(0, 0), xytext=(200, 10), arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Top Floor', xy=(rho*g*100/1000, 100), xytext=(600, 90), arrowprops=dict(facecolor='black', shrink=0.05))
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("This graph shows how water pressure varies with height in a building. The pressure increases linearly with height, with the highest pressure at the ground floor and the lowest pressure at the top floor.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications and Solutions 💡]
#v(40pt)
#only("1-")[- High pressure at lower floors 🌊]
#v(20pt)
#only("2-")[- Potential for leaks and damage 🚰]
#v(20pt)
#only("3-")[- Pressure-reducing valves 🔽]
#v(20pt)
#only("4-")[- Separate water systems for different zones 🏘️]
#only("1")[
#voiceover("The high water pressure at lower floors can cause issues such as leaks and damage to plumbing fixtures.")
]
#only("2")[
#voiceover("To mitigate these problems, engineers employ various solutions.")
]
#only("3")[
#voiceover("One common solution is the use of pressure-reducing valves, which help maintain a safe and consistent water pressure throughout the building.")
]
#only("4")[
#voiceover("Another approach is to design separate water systems for different zones of the building, each with its own pressure regulation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Water pressure varies with height due to gravity 🌍]
#v(20pt)
#only("2-")[- Pressure increases linearly with height 📈]
#v(20pt)
#only("3-")[- High pressure at lower floors can cause issues 🚰]
#v(20pt)
#only("4-")[- Solutions: pressure-reducing valves and separate water systems 💡]
#only("1")[
#voiceover("In summary, water pressure in high-rise buildings varies with height due to the gravitational force acting on the fluid column.")
]
#only("2")[
#voiceover("The pressure increases linearly with height, with the highest pressure at the ground floor.")
]
#only("3")[
#voiceover("This high pressure at lower floors can lead to potential leaks and damage.")
]
#only("4")[
#voiceover("To address these issues, engineers use pressure-reducing valves and design separate water systems for different zones of the building.")
]
]