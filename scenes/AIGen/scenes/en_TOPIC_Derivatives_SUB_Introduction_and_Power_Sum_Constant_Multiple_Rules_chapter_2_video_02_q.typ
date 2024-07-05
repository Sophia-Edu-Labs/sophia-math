#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative of a Sum]
  #v(40pt)

  #only("1-")[What is the derivative of $f(x) = x^2 + x$?]
  #v(20pt)

  #only("2-")[a) $2x + 1$]
  #v(10pt)
  #only("3-")[b) $x^2 + 1$]
  #v(10pt)
  #only("4-")[c) $2x + x$]
  #v(10pt)
  #only("5-")[d) $2x$]

  #only("1")[
    #voiceover("Let's test your understanding of derivatives. We have a function f of x equal to x squared plus x. What is the derivative of this function?")
  ]

  #only("2")[
    #voiceover("Is it two x plus one,")
  ]

  #only("3")[
    #voiceover("or is it x squared plus one,")
  ]

  #only("4")[
    #voiceover("or maybe two x plus x,")
  ]

  #only("5")[
    #voiceover("or is it simply two x?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What is the derivative of $f(x) = x^2 + x$?", 
answerOptions: ("$2x + 1$", "$x^2 + 1$", "$2x + x$", "$2x$"),
correctAnswerIndex: 0 
)