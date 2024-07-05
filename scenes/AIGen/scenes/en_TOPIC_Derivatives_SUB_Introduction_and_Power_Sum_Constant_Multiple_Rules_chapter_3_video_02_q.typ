#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative of a Constant Multiple]
  #v(40pt)

  #only("1-")[What is the derivative of $5x^2$?]
  #v(20pt)

  #only("2-")[a) $10x$]
  #v(10pt)
  #only("3-")[b) $5x$]
  #v(10pt)
  #only("4-")[c) $5x^2$]
  #v(10pt)
  #only("5-")[d) $10$]

  #only("1")[
    #voiceover("Let's test your understanding of the constant multiple rule for derivatives. Consider the function five x squared. What is its derivative?")
  ]

  #only("2")[
    #voiceover("Is it ten x?")
  ]

  #only("3")[
    #voiceover("Or is it five x?")
  ]

  #only("4")[
    #voiceover("Maybe it's just five x squared?")
  ]

  #only("5")[
    #voiceover("Or could it be simply ten?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What is the derivative of $5x^2$?", 
answerOptions: ("$10x$", "$5x$", "$5x^2$", "$10$"),
correctAnswerIndex: 0 
)