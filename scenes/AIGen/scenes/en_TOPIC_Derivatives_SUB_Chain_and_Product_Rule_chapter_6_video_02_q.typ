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

  #text(size: 30pt, weight: "bold")[Product Rule Application]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x^4 e^x $]
  ]

  #v(40pt)

  #only("3-")[
    Can you differentiate this function using the product rule?
  ]

  #only("2")[
    #voiceover("f of x equals x to the fourth power times e to the x.")
  ]

  #only("3")[
    #voiceover("Your task is to differentiate this function using the product rule. Remember to apply the rule carefully and consider the derivatives of both parts of the product.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = x^4 e^x$ using the product rule.", 
answerOptions: ("Using the product rule, we have $f'(x) = \frac{d}{dx}(x^4) 	imes e^x + x^4 	imes \frac{d}{dx}(e^x)$. Therefore, $f'(x) = 4x^3 e^x + x^4 e^x = x^3 e^x (4 + x)$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)