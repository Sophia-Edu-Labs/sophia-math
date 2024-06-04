#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hot Air Balloon Flight 🎈]
#v(40pt)
#only("1-")[
Lift a total mass of 640 kg in Uster (464 m above sea level)
]
#only("2-")[
- $ V = m / (rho_"air" - rho_"gas") $
- $ rho_"air" = 1.188 $ kg/m³ 
- $ rho_"gas" = 0.60 $ kg/m³
]
#only("1")[
#voiceover("Consider a hot air balloon flight where you need to lift a total mass of 640 kg, including the balloon, passengers, and gondola, in Uster, which is 464 meters above sea level.")
]
#only("2")[
#voiceover("To calculate the minimum volume of the balloon needed, use the formula V equals m divided by rho air minus rho gas, where rho air is 1.188 kilograms per cubic meter and rho gas is 0.60 kilograms per cubic meter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Question ❓]
#v(40pt)
#only("1-")[
What is the minimum volume of the balloon needed? (Answer in m³)
]
#only("1")[
#voiceover("What is the minimum volume of the balloon needed? Give your answer in cubic meters.")
]
#v(40pt)
]
#questionDef(
  questionText: "What is the minimum volume of the balloon needed in cubic meters?",
  answerOptions: ("$1088$", "$500$"),
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