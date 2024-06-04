#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply Systems]
#v(40pt)
#only("1-")[- Rely on gravity and pressure differences 🌍]
#v(20pt)
#only("2-")[- Distribute water from reservoirs to various parts of the city 🏙️]
#only("1")[
#voiceover("City water supply systems rely on gravity and pressure differences to function effectively.")
]
#only("2")[
#voiceover("These systems distribute water from reservoirs to various parts of the city.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Calculation]
#v(40pt)
#only("1-")[- Pressure at a tap $p = rho dot g dot h$]
#v(20pt)
#only("2-")[- $rho$ (water density) = 1000 kg/m³]
#v(20pt)
#only("3-")[- Example: Tap 50 m below reservoir]
#v(20pt)
#only("4-")[$ p = 1000 dot 9.81 dot 50 = 490500 $ Pa]
#only("1")[
#voiceover("The pressure at a tap can be calculated using the formula p equals rho times g times h, where rho is the density of water, g is the acceleration due to gravity, and h is the elevation difference.")
]
#only("2")[
#voiceover("The density of water is approximately 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("For example, let's consider a tap located 50 meters below a reservoir.")
]
#only("4")[
#voiceover("Using the formula, we calculate the pressure at the tap to be 490,500 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Factors Affecting Pressure]
#v(40pt)
#only("1-")[- Elevation difference is the most significant factor 📏]
#v(20pt)
#only("2-")[- Changes in reservoir level affect pressure distribution 🌊]
#v(20pt)
#only("3-")[- Example: Reservoir level drops by 2 m]
#v(20pt)
#only("4-")[$ p = 1000 dot 9.81 dot 48 = 470880 $ Pa]
#only("1")[
#voiceover("The elevation difference between the reservoir and the tap is the most significant factor affecting pressure in a city water supply system.")
]
#only("2")[
#voiceover("Changes in the reservoir level can affect the overall pressure distribution.")
]
#only("3")[
#voiceover("For instance, if the reservoir level drops by 2 meters, the pressure at the tap will change.")
]
#only("4")[
#voiceover("Using the updated elevation difference of 48 meters, we calculate the new pressure at the tap to be 470,880 Pascals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- City water supply systems use elevation differences to create pressure 🏙️]
#v(20pt)
#only("2-")[- Pressure is crucial for effective water distribution 💧]
#v(20pt)
#only("3-")[- Changes in reservoir level affect pressure distribution 🌊]
#only("1")[
#voiceover("In summary, city water supply systems use elevation differences to create pressure.")
]
#only("2")[
#voiceover("This pressure is crucial for effective water distribution throughout the city.")
]
#only("3")[
#voiceover("Changes in the reservoir level can significantly affect the pressure distribution in the system.")
]
]