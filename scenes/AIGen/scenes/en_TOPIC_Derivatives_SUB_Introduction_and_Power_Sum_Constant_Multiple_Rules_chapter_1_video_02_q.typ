#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
  #v(40pt)

  #only("1-")[What is the derivative of $x^3$?]
  #v(20pt)

  #only("2-")[a) $3x^2$]
  #v(10pt)
  #only("3-")[b) $x^2$]
  #v(10pt)
  #only("4-")[c) $3x$]
  #v(10pt)
  #only("5-")[d) $x^3$]

  #only("1")[
    #voiceover("Let's test your understanding of the power rule for derivatives. Consider the function x cubed. What is its derivative?")
  ]
  #only("2")[
    #voiceover("Is it three x squared,")
  ]
  #only("3")[
    #voiceover("or perhaps just x squared,")
  ]
  #only("4")[
    #voiceover("maybe three x,")
  ]
  #only("5")[
    #voiceover("or could it be x cubed again?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What is the derivative of $x^3$?", 
answerOptions: ("$3x^2$", "$x^2$", "$3x$", "$x^3$"),
correctAnswerIndex: 0 
)