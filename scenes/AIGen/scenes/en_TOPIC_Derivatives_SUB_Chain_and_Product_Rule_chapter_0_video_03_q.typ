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
    #text()[$ f(x) = (3x^2 + 2x + 1)^5 $]
  ]
  #v(40pt)

  #only("3-")[
    Can you find $f'(x)$ using the chain rule?
  ]

  #only("2")[
    #voiceover("f of x equals the quantity three x squared plus two x plus one, all raised to the power of five.")
  ]

  #only("3")[
    #voiceover("Your task is to find f prime of x using the chain rule. Take a moment to think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Use the chain rule to differentiate $f(x) = (3x^2 + 2x + 1)^5$.", 
answerOptions: ("$f'(x) = 5(3x^2 + 2x + 1)^4 	imes (6x + 2)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)