#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Deep-Sea Diving 🤿]

#v(40pt)
#only("1-")[
- Depth: 1000 m 📏
- Seawater density ($rho$): 1020 kg/m³ 💧
- Diver volume ($V$): 0.075 m³ 👤
- Acceleration due to gravity ($g$): 9.81 m/s² 🌍
]

#v(40pt)
#only("2-")[
#text(size: 25pt)[Buoyant Force ($F_A$) = ?]
]

#v(40pt)
#only("3-")[
#text(size: 25pt)[Use: $F_A = rho dot V dot g$]
]

#only("1")[
#voiceover("Consider a diver at a depth of 1000 meters in seawater. The density of seawater is 1020 kilograms per cubic meter.")
]

#only("2")[
#voiceover("If the diver's volume is 0.075 cubic meters, determine the buoyant force acting on the diver at this depth.")
]

#only("3")[
#voiceover("Use the formula F sub A equals rho times V times g, where F sub A is the buoyant force, rho is the density of seawater, V is the volume of the diver, and g is the acceleration due to gravity.")
]
]#questionDef(
questionText: "What is the buoyant force $F_A$ acting on the diver? (Answer in Newtons)",
answerOptions: ("$750.255$ N", "$0$ N"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 3,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ N"),
answerOptionsTypes: (
"a": "number"
)
),
)