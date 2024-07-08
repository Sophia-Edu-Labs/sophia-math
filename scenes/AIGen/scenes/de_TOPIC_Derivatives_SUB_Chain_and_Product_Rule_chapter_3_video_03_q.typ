#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]]
  #v(40pt)

  #only("2-")[
    Differenziere $f(x) = (5x + 1)^3$ und finde $f'(2)$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Kettenregel mit einer numerischen Übung üben.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Differenziere f von x, das gleich fünf x plus eins, alles hoch drei ist. Finde dann f Strich von zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = (5x + 1)^3$ und finde $f'(2)$.", 
answerOptions: ("$f'(2) = 540$", "$f'(2) = -1076$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)