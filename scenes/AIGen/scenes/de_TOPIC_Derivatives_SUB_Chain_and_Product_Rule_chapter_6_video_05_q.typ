#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[
    Differenziere $f(x) = x^2 e^x$ und finde $f'(0)$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Produktregel üben. Deine Aufgabe ist es, die Funktion f von x gleich x quadrat mal e hoch x zu differenzieren und dann den Wert von f Strich bei x gleich null zu finden.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differenziere $f(x) = x^2 e^x$ und finde $f'(0)$. Was ist $f'(0)$?", 
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