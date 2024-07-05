#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ableitungsberechnung]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = 2x^3 + x^2$
  ]

  #v(20pt)

  #only("2-")[
    Gesucht: $f'(1)$
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Summenregel für Ableitungen anzuwenden.")
  ]

  #only("2")[
    #voiceover("Wir haben die Funktion f von x gleich zwei x hoch drei plus x quadrat gegeben. Unsere Aufgabe ist es, den Wert ihrer Ableitung bei x gleich 1 zu finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 2x^3 + x^2$ bei $x = 1$?", 
answerOptions: ("$\frac{d}{dx} f(x) \bigg|_{x=1} = 8$", "$\frac{d}{dx} f(x) \bigg|_{x=1} = -12$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{d}{dx} f(x) \bigg|_{x=1} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)