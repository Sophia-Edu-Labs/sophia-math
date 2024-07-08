#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns üben, die Produktregel der Differentiation anzuwenden.")
  ]
  #text(size: 30pt, weight: "bold")[Übung zur Produktregel]
  #v(40pt)

  #only("2-")[
    Differenziere:
    #v(10pt)
    $ f(x) = x^2 e^x $
  ]
  #v(20pt)
  #only("3-")[
    Finde:
    #v(10pt)
    $ f'(1) $
  ]

  #only("2")[
    #voiceover("Hier ist unsere Aufgabe: Differenziere die Funktion f von x gleich x Quadrat mal e hoch x.")
  ]

  #only("3")[
    #voiceover("Und dann finde den Wert von f Strich bei x gleich 1.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = x^2 e^x$ und finde $f'(1)$.", 
answerOptions: ("$f'(1) = 3.718$", "$f'(1) = -3.436$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)