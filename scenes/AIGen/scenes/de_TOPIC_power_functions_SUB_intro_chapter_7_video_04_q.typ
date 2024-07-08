#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Auswertung der Potenzfunktion]
  #v(40pt)

  #only("1-")[
    Betrachte die Potenzfunktion:
    #v(10pt)
    $ f(x) = 10 / x $
  ]

  #v(20pt)

  #only("2-")[
    Berechne:
    #v(10pt)
    $ f(2) = ? $
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine Potenzfunktion auszuwerten. Betrachte die Funktion f von x gleich zehn geteilt durch x.")
  ]

  #only("2")[
    #voiceover("Berechne nun den Wert von f von 2. Mit anderen Worten, was ist das Ergebnis, wenn wir 2 in diese Funktion einsetzen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die Potenzfunktion $f(x) = \frac{10}{x}$?", 
answerOptions: ("$f(2) = 5$", "$f(2) = -6$"), 
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