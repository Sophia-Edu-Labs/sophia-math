#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Differenzieren mit Ketten- und Produktregel]
  #v(40pt)

  #only("1-")[
    Differenziere $f(x) = x \sin(x^2)$ und finde $f'(1)$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Kombinieren der Kettenregel und der Produktregel üben. Deine Aufgabe ist es, die Funktion f von x gleich x mal Sinus von x Quadrat zu differenzieren und dann den Wert von f Strich bei x gleich 1 zu finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = x \sin(x^2)$ und finde $f'(1)$. ", 
answerOptions: ("$f'(1) = 1.682941969615793$", "$f'(1) = 0.634116060768414$"), 
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