#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen von kubischen Gleichungen]
  #v(40pt)

  #only("1-")[
    Löse die Gleichung:
    #v(20pt)
    $ x^3 = 27 $
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine kubische Gleichung zu lösen. Deine Aufgabe ist es, die Gleichung x hoch drei gleich 27 zu lösen.")
  ]

  #only("2-")[
    #text(fill: blue)[Tipp: Denke an Kubikwurzeln!]
  ]

  #only("2")[
    #voiceover("Als Tipp, überlege, welche Operation das Gegenteil des Kubikierens ist.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die Gleichung $x^3 = 27$.", 
answerOptions: ("$x = 3$", "$x = -2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)