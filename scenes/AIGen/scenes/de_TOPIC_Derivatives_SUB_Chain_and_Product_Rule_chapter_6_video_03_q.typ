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
    Differenziere $f(x) = x^3 \ln(x)$ und finde $f'(1)$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Produktregel üben. Deine Aufgabe ist es, die Funktion f von x gleich x hoch drei mal den natürlichen Logarithmus von x zu differenzieren und dann den Wert von f Strich bei x gleich 1 zu finden.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = x^3 \ln(x)$ und finde $f'(1)$. ", 
answerOptions: ("$f'(1) = 3$", "$f'(1) = -2$"), 
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