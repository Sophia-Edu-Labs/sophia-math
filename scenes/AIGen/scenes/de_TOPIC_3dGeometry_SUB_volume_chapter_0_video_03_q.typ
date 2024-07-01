#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns eine Frage zum Volumen eines Würfels betrachten.")
  ]
  #text(size: 30pt, weight: "bold")[Würfelvolumen]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[Was ist das Volumen eines Würfels mit einer Seitenlänge von 4 cm?]
    ]
  ]

  #only("2")[
    #voiceover("Was ist das Volumen eines Würfels mit einer Seitenlänge von 4 Zentimetern?")
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      #box(width: 150pt, height: 150pt, stroke: (thickness: 2pt))[
        #place(
          center,
          text(size: 24pt)[4 cm]
        )
      ]
    ]
  ]

  #only("3")[
    #voiceover("Betrachte einen Würfel, bei dem jede Seite 4 Zentimeter misst.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist das Volumen eines Würfels mit einer Seitenlänge von $4$ cm?", 
answerOptions: ("$\\text{Volumen} = 64$", "$\\text{Volumen} = -124$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volumen} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)