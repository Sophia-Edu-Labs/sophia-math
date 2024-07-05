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

  #text(size: 30pt, weight: "bold")[Constant Multiple Rule]
  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 7x^3 $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative of this function?
  ]

  #only("2")[
    #voiceover("f of x equals seven times x cubed.")
  ]

  #only("3")[
    #voiceover("What is the derivative of this function? Think about how we can apply the constant multiple rule here.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 7x^3$.", 
answerOptions: ("The derivative of $f(x) = 7x^3$ is $f'(x) = 21x^2$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)