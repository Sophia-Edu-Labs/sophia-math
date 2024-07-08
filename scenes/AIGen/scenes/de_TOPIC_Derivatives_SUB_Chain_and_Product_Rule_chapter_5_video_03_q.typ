#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]]
  #v(40pt)

  #only("2-")[
    Differenziere $f(x) = (2x + 3)^5$ und finde $f'(2)$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Kettenregel mit einer numerischen Übung üben.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Differenziere f von x gleich zwei x plus drei, alles hoch fünf, und finde dann f Strich von zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = (2x + 3)^5$ und finde $f'(2)$.", 
answerOptions: ("$f'(2) = 3840$", "$f'(2) = -7676$"), 
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