#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative of a Polynomial]
  #v(40pt)

  #only("1-")[What is the derivative of $3x^2 + 4x$?]
  #v(30pt)

  #only("2-")[a) $6x + 4$]
  #v(10pt)
  #only("3-")[b) $3x^2 + 4$]
  #v(10pt)
  #only("4-")[c) $6x + 4x$]
  #v(10pt)
  #only("5-")[d) $3x + 4$]

  #only("1")[
    #voiceover("Let's test your understanding of derivatives. We have a polynomial function: 3x squared plus 4x. What is its derivative?")
  ]
  #only("2")[
    #voiceover("Is it 6x plus 4?")
  ]
  #only("3")[
    #voiceover("Or is it 3x squared plus 4?")
  ]
  #only("4")[
    #voiceover("Maybe it's 6x plus 4x?")
  ]
  #only("5")[
    #voiceover("Or could it be 3x plus 4?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What is the derivative of $3x^2 + 4x$?", 
answerOptions: ("$6x + 4$", "$3x^2 + 4$", "$6x + 4x$", "$3x + 4$"),
correctAnswerIndex: 0 
)