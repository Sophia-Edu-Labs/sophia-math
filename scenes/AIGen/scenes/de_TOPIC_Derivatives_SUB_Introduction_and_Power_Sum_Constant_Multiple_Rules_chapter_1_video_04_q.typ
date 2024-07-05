#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns üben, die Potenzregel für Ableitungen anzuwenden.")
  ]
  #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  #v(40pt)

  #only("2-")[
    Betrachte die Funktion $f(x) = 4x^5$
  ]
  #v(20pt)

  #only("3-")[
    Finde $f'(1)$
  ]

  #only("2")[
    #voiceover("Betrachte die Funktion f von x gleich 4 mal x hoch fünf.")
  ]

  #only("3")[
    #voiceover("Finde den Wert der Ableitung dieser Funktion bei x gleich 1.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 4x^5$ bei $x = 1$?", 
answerOptions: ("$20$", "$-36$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)