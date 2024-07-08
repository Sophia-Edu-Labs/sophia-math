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
    Consider the power function $f(x) = 4x^3$
  ]
  #v(20pt)

  #only("2-")[
    Calculate $f(2)$
  ]

  #only("1")[
    #voiceover("Let's practice evaluating power functions. Consider the function f of x equals 4 times x cubed.")
  ]

  #only("2")[
    #voiceover("Your task is to calculate f of 2. In other words, what is the value of this function when x equals 2?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(2)$ for the power function $f(x) = 4x^3$?", 
answerOptions: ("$f(2) = 32$", "$f(2) = -60$"), 
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