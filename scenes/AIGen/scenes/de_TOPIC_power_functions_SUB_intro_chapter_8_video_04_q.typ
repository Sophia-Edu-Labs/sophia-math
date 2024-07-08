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
    $ f(x) = 27 / x^3 $
  ]

  #v(20pt)

  #only("2-")[
    Frage: Was ist der Wert von $f(1/3)$?
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Auswertung einer Potenzfunktion betrachten.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Was ist der Wert von f von ein Drittel für die Potenzfunktion f von x gleich 27 geteilt durch x hoch drei?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(\frac{1}{3})$ für die Potenzfunktion $f(x) = \frac{27}{x^3}$?", 
answerOptions: ("$729$", "$-1454$"), 
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