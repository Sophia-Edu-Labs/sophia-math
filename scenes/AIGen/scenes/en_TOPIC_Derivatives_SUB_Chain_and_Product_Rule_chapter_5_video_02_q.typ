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
    #text()[$ f(x) = (3x^2 + 2x + 1)^6 $]
  ]
  #v(20pt)

  #only("3-")[
    Can you differentiate this function using the chain rule?
  ]

  #only("2")[
    #voiceover("f of x equals the quantity three x squared plus two x plus one, all raised to the power of six.")
  ]

  #only("3")[
    #voiceover("Your task is to differentiate this function using the chain rule. Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = (3x^2 + 2x + 1)^6$ using the chain rule.", 
answerOptions: ("$f'(x) = 6(3x^2 + 2x + 1)^5 	imes (6x + 2)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)