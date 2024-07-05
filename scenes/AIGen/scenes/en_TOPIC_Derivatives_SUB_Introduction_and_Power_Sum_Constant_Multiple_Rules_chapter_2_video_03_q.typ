#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following function:")
  ]

  #text(size: 30pt, weight: "bold")[Polynomial Derivative]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 3x^3 + 2x^2 $]
  ]

  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals three x cubed plus two x squared.")
  ]

  #only("3")[
    #voiceover("What is the derivative f prime of x for this function?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 3x^3 + 2x^2$.", 
answerOptions: ("$f'(x) = 9x^2 + 4x$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)