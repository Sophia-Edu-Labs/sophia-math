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

  #text(size: 30pt, weight: "bold")[Power Rule Application]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = 5x^4 $]
  ]

  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals five times x to the fourth power.")
  ]

  #only("3")[
    #voiceover("Our task is to find the derivative of this function. What is f prime of x?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 5x^4$.", 
answerOptions: ("$f'(x) = 20x^3$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)