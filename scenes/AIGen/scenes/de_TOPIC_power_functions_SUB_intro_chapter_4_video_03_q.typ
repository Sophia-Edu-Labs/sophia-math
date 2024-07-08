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
    #v(10pt)
    $ f(x) = 3 / x^2 $
  ]

  #v(20pt)

  #only("2-")[
    Frage: Was ist der Wert von $f(2)$?
  ]

  #only("1")[
    #voiceover("Lass uns eine Potenzfunktion mit einem negativen Exponenten betrachten.")
  ]

  #only("2")[
    #voiceover("Unsere Aufgabe ist es, diese Funktion bei x gleich 2 auszuwerten. Kannst du f von 2 berechnen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die Potenzfunktion $f(x) = \frac{3}{x^2}$?", 
answerOptions: ("$f(2) = 0.75$", "$f(2) = 2.5$"), 
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