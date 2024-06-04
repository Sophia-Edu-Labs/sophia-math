#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Agricultural Irrigation System]
#v(40pt)
#only("1-")[
- Water needs to be lifted to varying heights 🚰
]
#v(20pt)
#only("2-")[
- Pressure required depends on height and density 📏🌊
]
#only("1")[
#voiceover("In an agricultural irrigation system, water needs to be lifted to varying heights to reach different parts of the field.")
]
#only("2")[
#voiceover("The pressure required to lift the water depends on the height it needs to be lifted to and the density of water.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Pump Pressure]
#v(40pt)
#only("1-")[
- Use formula: $ p = rho dot g dot h $
  - $ p $ = pressure (Pa)
  - $ rho $ = density of water (1000 kg/m³)
  - $ g $ = acceleration due to gravity (9.81 m/s²)
  - $ h $ = height (m)
]
#only("1")[
#voiceover("To calculate the required pump pressure, we can use the formula p equals rho times g times h, where p is the pressure in Pascals, rho is the density of water which is 1000 kilograms per cubic meter, g is the acceleration due to gravity which is 9.81 meters per second squared, and h is the height the water needs to be lifted to in meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
Calculate the required pump pressure to lift water to a height of 30 m. 
]
#v(20pt)
#only("2-")[
Use $ p = rho dot g dot h $ where $ rho $ for water is 1000 kg/m³. 
]
#v(20pt)
#only("3-")[
Answer in Pascals (Pa).
]
#only("1")[
#voiceover("Now it's your turn: Calculate the required pump pressure to lift water to a height of 30 meters.")
]
#only("2")[
#voiceover("Use the formula p equals rho times g times h, where rho for water is 1000 kilograms per cubic meter.")
]
#only("3")[
#voiceover("Give your answer in Pascals.")
]
]#questionDef(
questionText: "What is the required pump pressure to lift water to a height of 30 m? Use $ p = \rho \cdot g \cdot h $ where $ \rho $ for water is $1000 \, \text{kg/m}^3$. Answer in Pascals (Pa).",
answerOptions: ("$294300$ Pa", "$30000$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)