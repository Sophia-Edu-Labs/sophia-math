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
    #text()[$ f(x) = (4x^3 + 2x)^5 $]
  ]

  #v(40pt)

  #only("3-")[
    Can you differentiate this function using the chain rule?
  ]

  #only("2")[
    #voiceover("f of x equals the quantity four x cubed plus two x, all raised to the power of five.")
  ]

  #only("3")[
    #voiceover("Your task is to differentiate this function using the chain rule. Take a moment to think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = (4x^3 + 2x)^5$ using the chain rule.", 
answerOptions: ("$f'(x) = 5(4x^3 + 2x)^4 \cdot (12x^2 + 2)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)