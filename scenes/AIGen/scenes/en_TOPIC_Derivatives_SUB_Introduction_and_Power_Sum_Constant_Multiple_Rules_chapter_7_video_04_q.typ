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

  #text(size: 30pt, weight: "bold")[Derivative using Constant Multiple Rule]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[$ f(x) = 9x^5 $]
  ]
  #v(20pt)

  #only("3-")[
    What is the derivative of this function?
  ]

  #only("2")[
    #voiceover("f of x equals nine times x to the fifth power.")
  ]

  #only("3")[
    #voiceover("Your task is to find the derivative of this function. Remember to apply the rules we've learned about derivatives, particularly the constant multiple rule. Good luck!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 9x^5$.", 
answerOptions: ("$f'(x) = 45x^4$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)