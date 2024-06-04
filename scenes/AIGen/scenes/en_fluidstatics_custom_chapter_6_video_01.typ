#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Agricultural Irrigation Systems]
#v(40pt)
#only("1-")[- Deliver water efficiently over varying elevations 🌾💧]
#v(20pt)
#only("2-")[- Elevation differences affect pressure requirements 🏔️⚖️]
#only("1")[
#voiceover("Agricultural irrigation systems are designed to deliver water efficiently to crops over varying elevations, such as fields on hills or terraces.")
]
#only("2")[
#voiceover("These elevation differences affect the pressure requirements of the irrigation system.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Calculation]
#v(40pt)
#only("1-")[$ p = rho dot g dot h $]
#v(20pt)
#only("2-")[- $p$: pressure (Pa)]
#v(10pt)
#only("3-")[- $rho$: density of water (1000 kg/m³)]
#v(10pt)
#only("4-")[- $g$: gravitational acceleration (9.81 m/s²)]
#v(10pt)
#only("5-")[- $h$: height difference (m)]
#only("1")[
#voiceover("The pressure required to lift water to a certain height can be calculated using the formula p equals rho times g times h.")
]
#only("2")[
#voiceover("Here, p represents the pressure in Pascals,")
]
#only("3")[
#voiceover("rho is the density of water, which is approximately 1000 kilograms per cubic meter,")
]
#only("4")[
#voiceover("g is the gravitational acceleration, which is 9.81 meters per second squared,")
]
#only("5")[
#voiceover("and h is the height difference in meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- Lift water to a height of 30 m]
#v(20pt)
#only("2-")[$ p = 1000 dot 9.81 dot 30 $]
#v(20pt)
#only("3-")[$ p = 294300 $ Pa]
#only("1")[
#voiceover("Let's consider an example where we need to lift water to a height of 30 meters.")
]
#only("2")[
#voiceover("Using the formula, we calculate the pressure as 1000 times 9.81 times 30.")
]
#only("3")[
#voiceover("This gives us a pressure of 294,300 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure vs. Elevation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```import matplotlib.pyplot as plt
import numpy as np

h = np.linspace(0, 50, 100)
p = 1000 * 9.81 * h

plt.figure(figsize=(6, 4))
plt.plot(h, p/1000, 'b-', linewidth=2)
plt.xlabel('Elevation (m)')
plt.ylabel('Pressure (kPa)')
plt.title('Pressure vs. Elevation')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the relationship between pressure and elevation. As the elevation increases, the pressure required to lift water also increases linearly.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Irrigation systems must account for elevation differences 🌾🏔️]
#v(20pt)
#only("2-")[- Pressure increases with height: $p = rho dot g dot h$ 📈]
#v(20pt)
#only("3-")[- Efficient design is crucial for water delivery 💧✅]
#only("1")[
#voiceover("In summary, agricultural irrigation systems must account for elevation differences when delivering water to crops.")
]
#only("2")[
#voiceover("The pressure required increases linearly with height, as described by the formula p equals rho times g times h.")
]
#only("3")[
#voiceover("Efficient design of irrigation systems, considering these pressure requirements, is crucial for effective water delivery in agricultural settings.")
]
]