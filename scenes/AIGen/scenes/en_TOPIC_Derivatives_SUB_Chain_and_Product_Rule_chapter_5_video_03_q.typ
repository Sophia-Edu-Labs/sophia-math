#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Chain Rule Application]]
  #v(40pt)

  #only("2-")[
    Differentiate $f(x) = (2x + 3)^5$ and find $f'(2)$
  ]

  #only("1")[
    #voiceover("Let's practice applying the chain rule with a numerical exercise.")
  ]

  #only("2")[
    #voiceover("Here's our question: Differentiate f of x equals two x plus three, all raised to the fifth power, and then find f prime of two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = (2x + 3)^5$ and find $f'(2)$.", 
answerOptions: ("$f'(2) = 3840$", "$f'(2) = -7676$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)