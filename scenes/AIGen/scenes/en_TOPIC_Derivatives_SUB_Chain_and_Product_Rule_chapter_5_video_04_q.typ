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

  #text(size: 30pt, weight: "bold")[Chain Rule Application]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = (x^2 + 4x + 4)^3 $]
  ]

  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals the quantity x squared plus four x plus four, all raised to the power of three.")
  ]

  #only("3")[
    #voiceover("Your task is to find the derivative of this function. Remember to apply the chain rule where necessary.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = (x^2 + 4x + 4)^3$.", 
answerOptions: ("$f'(x) = 3(x^2 + 4x + 4)^2 	imes (2x + 4)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)