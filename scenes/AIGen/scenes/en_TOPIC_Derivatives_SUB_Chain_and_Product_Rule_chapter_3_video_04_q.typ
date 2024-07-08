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
    #text()[$ f(x) = (2x^2 + 3x + 1)^4 $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals the quantity two x squared plus three x plus one, all raised to the power of four.")
  ]

  #only("3")[
    #voiceover("Your task is to find the derivative of this function, f prime of x. Remember to apply the chain rule where necessary.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = (2x^2 + 3x + 1)^4$.", 
answerOptions: ("$f'(x) = 4(2x^2 + 3x + 1)^3 \cdot (4x + 3)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)