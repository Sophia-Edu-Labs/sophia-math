#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Lass uns üben, die Kettenregel anzuwenden, mit der folgenden Aufgabe.")
  ]
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)
  #only("2-")[
    Differenziere $f(x) = (x^2 + 1)^3$ und finde $f'(0)$
  ]
  #only("2")[
    #voiceover("Differenziere f von x, das gleich x Quadrat plus 1, alles hoch 3 ist. Finde dann f Strich von null.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = (x^2 + 1)^3$ und finde $f'(0)$.", 
answerOptions: ("$f'(0) = 0$", "$f'(0) = 4$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(0) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)