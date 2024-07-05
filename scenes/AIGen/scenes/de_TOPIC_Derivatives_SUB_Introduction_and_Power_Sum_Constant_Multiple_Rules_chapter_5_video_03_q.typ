#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  ]
  #v(40pt)

  #only("2-")[
    Berechne die Ableitung von $f(x) = 7x^6$ an der Stelle $x = 2$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Potenzregel für Ableitungen üben.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Berechne die Ableitung von f von x gleich 7 x hoch sechs, ausgewertet an der Stelle x gleich 2.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 7x^6$ an der Stelle $x = 2$?", 
answerOptions: ("$1792$", "$-3580$"), 
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