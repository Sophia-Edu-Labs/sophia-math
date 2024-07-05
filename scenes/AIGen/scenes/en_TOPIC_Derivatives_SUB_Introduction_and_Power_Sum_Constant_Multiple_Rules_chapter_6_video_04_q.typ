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

  #text(size: 30pt, weight: "bold")[Derivative Using Sum Rule]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 3x^4 + 2x^3 + x^2 $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals three x to the fourth power, plus two x cubed, plus x squared.")
  ]

  #only("3")[
    #voiceover("Your task is to find the derivative of this function, f prime of x. Remember to apply the sum rule and the power rule where necessary.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 3x^4 + 2x^3 + x^2$.", 
answerOptions: ("$f'(x) = 12x^3 + 6x^2 + 2x$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)