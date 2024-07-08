#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice applying the chain rule with the following exercise.")
  ]
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)
  #only("2-")[
    Differentiate $f(x) = (x^2 + 1)^3$ and find $f'(0)$
  ]
  #only("2")[
    #voiceover("Differentiate f of x, which equals x squared plus 1, all cubed. Then, find f prime of zero.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = (x^2 + 1)^3$ and find $f'(0)$.", 
answerOptions: ("$f'(0) = 0$", "$f'(0) = 4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(0) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)