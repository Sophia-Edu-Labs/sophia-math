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

  #text(size: 30pt, weight: "bold")[Derivative of a Polynomial Function]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 5x^5 + 3x^4 + x^3 $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals 5 times x to the fifth power, plus 3 times x to the fourth power, plus x cubed.")
  ]

  #only("3")[
    #voiceover("Your task is to find the derivative of this function. Remember to apply the power rule, sum rule, and constant multiple rule as needed.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 5x^5 + 3x^4 + x^3$.", 
answerOptions: ("$f'(x) = 25x^4 + 12x^3 + 3x^2$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)