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
    #text()[$ f(x) = x^2 cos(x) $]
  ]
  #v(40pt)

  #only("3-")[
    What is the derivative $f'(x)$?
  ]

  #only("2")[
    #voiceover("f of x equals x squared times cosine of x.")
  ]

  #only("3")[
    #voiceover("Can you determine the derivative of this function? Remember to apply the product rule carefully.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = x^2 \, \cos(x)$.", 
answerOptions: ("$f'(x) = 2x \, \cos(x) - x^2 \, \sin(x)$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)