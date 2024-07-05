#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung an einem Punkt]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = x^3 + x^2$
  ]

  #v(20pt)

  #only("2-")[
    Finde: $f'(2)$
  ]

  #only("1")[
    #voiceover("Betrachten wir die Funktion f von x gleich x hoch drei plus x hoch zwei.")
  ]

  #only("2")[
    #voiceover("Wir müssen den Wert der Ableitung bei x gleich 2 finden. Mit anderen Worten, berechne f Strich von 2.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = x^3 + x^2$ bei $x = 2$?", 
answerOptions: ("$16$", "$-28$"), 
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