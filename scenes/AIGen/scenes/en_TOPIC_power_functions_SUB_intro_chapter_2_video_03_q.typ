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
    $ f(x) = x^4 $
  ]

  #v(20pt)

  #only("2-")[
    Question:
    #v(10pt)
    What is the value of $f(-2)$?
  ]

  #only("1")[
    #voiceover("Let's consider a question about evaluating a power function.")
  ]

  #only("2")[
    #voiceover("Given the power function f of x equals x to the fourth power, what is the value of f of negative two?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(-2)$ for the power function $f(x) = x^4$?", 
answerOptions: ("$f(-2) = 16$", "$f(-2) = -28$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(-2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)