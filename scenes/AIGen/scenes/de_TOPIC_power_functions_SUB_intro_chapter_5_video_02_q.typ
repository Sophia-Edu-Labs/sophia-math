#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion Berechnung]
  #v(40pt)

  #only("1-")[
    Betrachte die Potenzfunktion $f(x) = 4x^3$
  ]
  #v(20pt)

  #only("2-")[
    Berechne $f(2)$
  ]

  #only("1")[
    #voiceover("Lass uns üben, Potenzfunktionen zu berechnen. Betrachte die Funktion f von x gleich 4 mal x hoch 3.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, f von 2 zu berechnen. Mit anderen Worten, was ist der Wert dieser Funktion, wenn x gleich 2 ist?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die Potenzfunktion $f(x) = 4x^3$?", 
answerOptions: ("$f(2) = 32$", "$f(2) = -60$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)