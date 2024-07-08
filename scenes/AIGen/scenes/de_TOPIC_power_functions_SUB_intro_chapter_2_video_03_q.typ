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
    $ f(x) = x^4 $
  ]

  #v(20pt)

  #only("2-")[
    Frage:
    #v(10pt)
    Was ist der Wert von $f(-2)$?
  ]

  #only("1")[
    #voiceover("Lass uns eine Frage zur Auswertung einer Potenzfunktion betrachten.")
  ]

  #only("2")[
    #voiceover("Gegeben die Potenzfunktion f von x gleich x hoch vier, was ist der Wert von f von minus zwei?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Was ist der Wert von $f(-2)$ für die Potenzfunktion $f(x) = x^4$?", 
answerOptions: ("$f(-2) = 16$", "$f(-2) = -28$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(-2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)