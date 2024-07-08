#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Anwendung der Produktregel]]
  #v(40pt)

  #only("2-")[
    Differenziere $f(x) = x e^x$ mit der Produktregel und finde $f'(1)$.
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Produktregel üben.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Differenziere f von x gleich x mal e hoch x mit der Produktregel und finde dann f Strich von 1.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = x e^x$ mit der Produktregel und finde $f'(1)$.", 
answerOptions: ("$f'(x) = 2.7183 e^x + x e^x$ und $f'(1) = 5.4366$", "$f'(x) = -1.4366000000000003 e^x + x e^x$ und $f'(1) = -6.873200000000001$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = \key{a} e^x + x e^x$ und $f'(1) = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)