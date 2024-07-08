#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  ]
  #v(40pt)

  #only("2-")[
    Differenziere:
    #v(10pt)
    $ f(x) = (x^2 + 2)^4 $
  ]
  #v(20pt)

  #only("3-")[
    Finde:
    #v(10pt)
    $ f'(1) $
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Kettenregel auf eine komplexere Funktion anzuwenden.")
  ]

  #only("2")[
    #voiceover("Hier ist unser Problem: Differenziere f von x, wobei f von x gleich x Quadrat plus 2, alles hoch vier ist.")
  ]

  #only("3")[
    #voiceover("Nachdem wir die Ableitung gefunden haben, müssen wir f Strich bei x gleich 1 auswerten.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = (x^2 + 2)^4$ und finde $f'(1)$.", 
answerOptions: ("$f'(1) = 64$", "$f'(1) = -124$"), 
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