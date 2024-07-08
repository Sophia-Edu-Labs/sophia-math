#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Product Rule Application]]
  #v(40pt)

  #only("2-")[
    Differentiate $f(x) = x e^x$ using the product rule and find $f'(1)$.
  ]

  #only("1")[
    #voiceover("Let's practice applying the product rule.")
  ]

  #only("2")[
    #voiceover("Here's our question: Differentiate f of x equals x times e to the x using the product rule, and then find f prime of 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = x e^x$ using the product rule and find $f'(1)$.", 
answerOptions: ("$f'(x) = 2.7183 e^x + x e^x$ and $f'(1) = 5.4366$", "$f'(x) = -1.4366000000000003 e^x + x e^x$ and $f'(1) = -6.873200000000001$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = \key{a} e^x + x e^x$ and $f'(1) = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)