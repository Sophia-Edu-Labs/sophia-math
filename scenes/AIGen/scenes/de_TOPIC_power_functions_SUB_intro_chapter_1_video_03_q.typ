#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Auswertung kubischer Funktionen]
  #v(40pt)

  #only("1-")[
    Betrachte die kubische Funktion:
    #v(10pt)
    $ f(x) = 2x^3 + 3x^2 + x + 1 $
  ]

  #v(20pt)

  #only("2-")[
    Frage: Was ist der Wert von $f(1)$?
  ]

  #only("1")[
    #voiceover("Lass uns das Auswerten kubischer Funktionen üben. Betrachte die folgende kubische Funktion:")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, den Wert von f von 1 zu bestimmen. Mit anderen Worten, was ist der Funktionswert, wenn x gleich 1 ist?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(1)$ für die kubische Funktion $f(x) = 2x^3 + 3x^2 + x + 1$?", 
answerOptions: ("$f(1) = 7$", "$f(1) = -10$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$f(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)