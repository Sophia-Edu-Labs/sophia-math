#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Funktionen auswerten]
  #v(40pt)

  #only("1-")[
    Betrachte die quadratische Funktion:
    #v(10pt)
    $ f(x) = 3x^2 + 2x + 1 $
  ]

  #v(20pt)

  #only("2-")[
    Frage: Was ist der Wert von $f(2)$?
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Funktion auszuwerten. Betrachte die Funktion f von x gleich 3x zum Quadrat plus 2x plus 1.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, den Wert von f von 2 zu bestimmen. Mit anderen Worten, was ist der Output dieser Funktion, wenn wir 2 eingeben?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die quadratische Funktion $f(x) = 3x^2 + 2x + 1$?", 
answerOptions: ("$f(2) = 17$", "$f(2) = -30$"), 
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