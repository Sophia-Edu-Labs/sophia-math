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
    $ f(x) = -5x^4 $
  ]

  #v(20pt)

  #only("2-")[
    Question: What is the value of $f(2)$?
  ]

  #only("1")[
    #voiceover("Let's practice evaluating a power function. Consider the function f of x equals negative five times x to the fourth power.")
  ]

  #only("2")[
    #voiceover("Now, we want to find the value of f of 2. In other words, what is the result when we input 2 into this function?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(2)$ for the power function $f(x) = -5x^4$?", 
answerOptions: ("$f(2) = -80$", "$f(2) = 164$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)