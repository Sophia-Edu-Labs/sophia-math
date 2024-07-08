#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen von Potenzgleichungen]
  #v(40pt)

  #only("1-")[
    Löse die Gleichung:
    #v(20pt)
    $ 2x^4 = 32 $
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine Potenzgleichung zu lösen. Deine Aufgabe ist es, die Gleichung zu lösen: 2 mal x hoch vier ist gleich 32.")
  ]

  #only("2")[
    #voiceover("Nimm dir Zeit, um dieses Problem zu lösen. Denke daran, die Eigenschaften von Exponenten und Wurzeln zu nutzen, um die Gleichung zu vereinfachen und zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die Gleichung $2x^4 = 32$.", 
answerOptions: ("$x = 2$", "$x = 0$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)