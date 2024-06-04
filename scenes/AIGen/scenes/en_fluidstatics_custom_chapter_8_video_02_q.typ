#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[City Water Supply System]
#v(40pt)
#only("1-")[
- Water pressure varies with height 🌊
]
#v(20pt)
#only("2-")[
- Due to gravitational force on fluid column 🪨
]
#only("1")[
#voiceover("In a city water supply system, the water pressure varies with height.")
]
#only("2")[
#voiceover("This is due to the gravitational force acting on the fluid column.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Calculation]
#v(40pt)
#only("1-")[
- Pressure formula: $ p = rho dot g dot h $
]
#v(20pt)
#only("2-")[
  - $ rho $ = density of water (1000 kg/m³)
  - $ g $ = acceleration due to gravity (9.81 m/s²)
  - $ h $ = height difference (m)
]
#only("1")[
#voiceover("The pressure can be calculated using the formula p equals rho times g times h.")
]
#only("2")[
#voiceover("Here, rho is the density of water, which is 1000 kilograms per cubic meter, g is the acceleration due to gravity, 9.81 meters per second squared, and h is the height difference in meters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(6, 6))

ax.set_xlim(0, 10)
ax.set_ylim(-60, 10)

reservoir = plt.Rectangle((2, 0), 6, 5, linewidth=1, edgecolor='b', facecolor='lightskyblue')
ax.add_patch(reservoir)

tap = plt.Circle((5, -50), 1, linewidth=1, edgecolor='k', facecolor='w')
ax.add_patch(tap)

ax.annotate('Reservoir', xy=(5, 2.5), xytext=(6, 6), arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Tap', xy=(5, -50), xytext=(6, -45), arrowprops=dict(facecolor='black', shrink=0.05))

ax.plot([5, 5], [0, -50], 'k--')
ax.text(5.5, -25, '50 m', verticalalignment='center')

ax.set_aspect('equal')
ax.grid(True)

plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#v(20pt)
#only("2-")[
Calculate the pressure at a tap located 50 m below a reservoir. 💧
]
#only("1")[
#voiceover("Consider this scenario. A tap is located 50 meters below a reservoir.")
]
#only("2")[
#voiceover("Your task is to calculate the pressure at this tap.")
]
]

]#questionDef(
questionText: "What is the pressure at the tap located 50 m below the reservoir? Use $ p = \rho \cdot g \cdot h $ where $ \rho $ for water is $1000 \, \text{kg/m}^3 $. Give your answer in Pascals.",
answerOptions: ("$490500$ Pa", "$0$ Pa"),
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