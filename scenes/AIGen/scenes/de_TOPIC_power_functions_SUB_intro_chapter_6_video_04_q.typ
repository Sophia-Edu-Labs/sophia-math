#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Auswertung der Potenzfunktion]
  #v(40pt)

  #only("1-")[
    Betrachte die Potenzfunktion:
    #v(10pt)
    $ f(x) = -5x^4 $
  ]

  #v(20pt)

  #only("2-")[
    Frage: Was ist der Wert von $f(2)$?
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine Potenzfunktion auszuwerten. Betrachte die Funktion f von x gleich minus fünf mal x hoch vier.")
  ]

  #only("2")[
    #voiceover("Nun wollen wir den Wert von f von 2 finden. Mit anderen Worten, was ist das Ergebnis, wenn wir 2 in diese Funktion einsetzen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die Potenzfunktion $f(x) = -5x^4$?", 
answerOptions: ("$f(2) = -80$", "$f(2) = 164$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)