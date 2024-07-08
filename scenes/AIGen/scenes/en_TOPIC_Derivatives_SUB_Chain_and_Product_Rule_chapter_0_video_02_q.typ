#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("1-")[The chain rule is used to differentiate which type of functions?]
  #v(20pt)

  #only("2-")[a) Polynomial functions]
  #v(10pt)
  #only("3-")[b) Composite functions]
  #v(10pt)
  #only("4-")[c) Trigonometric functions]
  #v(10pt)
  #only("5-")[d) Exponential functions]

  #only("1")[
    #voiceover("In our exploration of the chain rule, let's consider its application. The chain rule is a fundamental concept in calculus, but which specific type of functions does it help us differentiate?")
  ]

  #only("2")[
    #voiceover("Is it polynomial functions, such as x squared plus 3x plus 2?")
  ]

  #only("3")[
    #voiceover("Or perhaps composite functions, like the sine of x squared?")
  ]

  #only("4")[
    #voiceover("Maybe it's primarily used for trigonometric functions, like cosine of x?")
  ]

  #only("5")[
    #voiceover("Or could it be mainly for exponential functions, such as e to the power of x?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "The chain rule is used to differentiate which type of functions?", 
answerOptions: ("Polynomial functions", "Composite functions", "Trigonometric functions", "Exponential functions"),
correctAnswerIndex: 1 
)