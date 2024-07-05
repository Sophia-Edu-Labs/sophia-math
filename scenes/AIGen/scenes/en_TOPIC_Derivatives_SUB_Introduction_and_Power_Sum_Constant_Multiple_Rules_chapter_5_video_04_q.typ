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
    #text(size: 24pt)[
      $ f(x) = 8x^7 $
    ]
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Find the derivative of $f(x)$.]
  ]

  #only("2")[
    #voiceover("f of x equals 8 times x to the power of 7.")
  ]

  #only("3")[
    #voiceover("What is the derivative of this function?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Find the derivative of $f(x) = 8x^7$.", 
answerOptions: ("$f'(x) = 56x^6$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)