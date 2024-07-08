#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion Auswertung]
  #v(40pt)

  #only("1-")[
    Betrachte die Potenzfunktion:
    #v(20pt)
    $ f(x) = -2x^3 $
  ]

  #v(40pt)

  #only("2-")[
    Berechne:
    #v(20pt)
    $ f(3) = ? $
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine Potenzfunktion mit einem negativen Koeffizienten auszuwerten.")
  ]

  #only("2")[
    #voiceover("Gegeben die Funktion f von x gleich minus zwei mal x hoch drei, was ist der Wert von f von 3?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(3)$ für die Potenzfunktion $f(x) = -2x^3$?", 
answerOptions: ("$f(3) = -54$", "$f(3) = 112$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(3) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)