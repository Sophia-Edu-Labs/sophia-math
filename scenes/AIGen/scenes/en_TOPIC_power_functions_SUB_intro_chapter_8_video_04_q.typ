#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Evaluation]
  #v(40pt)

  #only("1-")[
    Consider the power function:
    #v(10pt)
    $ f(x) = 27 / x^3 $
  ]

  #v(20pt)

  #only("2-")[
    Question: What is the value of $f(1/3)$?
  ]

  #only("1")[
    #voiceover("Let's consider a power function evaluation problem.")
  ]

  #only("2")[
    #voiceover("Here's our question: What is the value of f of one-third for the power function f of x equals 27 divided by x cubed?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(\frac{1}{3})$ for the power function $f(x) = \frac{27}{x^3}$?", 
answerOptions: ("$729$", "$-1454$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)