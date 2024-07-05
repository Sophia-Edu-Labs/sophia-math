#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung der Potenzfunktion]
  #v(40pt)

  #only("1-")[
    Berechne die Ableitung von $f(x) = 6x^4$ an der Stelle $x = 1$
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Regel für konstante Vielfache bei Ableitungen anzuwenden. Berechne die Ableitung der Funktion f von x gleich 6 mal x hoch 4, ausgewertet an der Stelle x gleich 1.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert der Ableitung von $f(x) = 6x^4$ an der Stelle $x = 1$?", 
answerOptions: ("$24$", "$-44$"), 
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