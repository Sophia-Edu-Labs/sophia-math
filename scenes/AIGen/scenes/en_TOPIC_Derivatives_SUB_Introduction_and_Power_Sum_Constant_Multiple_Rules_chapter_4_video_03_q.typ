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

  #text(size: 30pt, weight: "bold")[Derivative of a Polynomial]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 2x^3 + 5x^2 + x $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals two x cubed plus five x squared plus x.")
  ]

  #only("3")[
    #voiceover("Can you find the derivative of this function? Remember to apply the power rule, sum rule, and constant multiple rule as needed.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 2x^3 + 5x^2 + x$.", 
answerOptions: ("$f'(x) = 6x^2 + 10x + 1$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)