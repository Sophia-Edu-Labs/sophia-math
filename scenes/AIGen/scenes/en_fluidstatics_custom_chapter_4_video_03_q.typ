#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hot Air Balloon 🎈]
#v(40pt)
#only("1-")[
- Inflated to 1550 m³ at ground level
]
#v(20pt)
#only("2-")[
- Air density formula: $rho_"air"(h) = a e^(-b h)$
]
#v(10pt)
#only("3-")[  
  - $a = 1.247$ kg/m³
  - $b = 0.000104$
]
#only("1")[
#voiceover("Consider a hot air balloon inflated to a volume of 1550 cubic meters at ground level.")
]
#only("2")[
#voiceover("The air density varies with height according to the formula rho air of h equals a times e to the power of negative b times h.")
]
#only("3")[  
#voiceover("The constants a and b are given as 1.247 kilograms per cubic meter and 0.000104, respectively.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question ❓]
#v(40pt)
#only("1-")[
Calculate the maximum height the balloon can reach. 📏
]
#only("1")[
#voiceover("Calculate the maximum height, in meters, that this hot air balloon can reach.")
]
]#questionDef(
questionText: "What is the maximum height the hot air balloon can reach, in meters? Use the given formula and constants.",
answerOptions: ("$2000$", "$1000$"),
correctAnswerIndex: 0,
freeTextDetail: (
  fallbackOptionIndex: 1,
  answerOptionsEquality: (
    a: (
      roundingDecimalPlaces: 2,
      tolerance: none
    )
  ),
  answerOptionMatcher:("$\key{a}$"),
  answerOptionsTypes: (
    "a": "number"
  )
),
)