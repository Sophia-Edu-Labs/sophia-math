#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative and Critical Points]
  #v(40pt)

  #only("1-")[If the derivative of a function at a point is zero, what can you infer about the function at that point?]
  #v(20pt)

  #only("2-")[a) The function has a maximum or minimum]
  #v(10pt)
  #only("3-")[b) The function is increasing]
  #v(10pt)
  #only("4-")[c) The function is decreasing]
  #v(10pt)
  #only("5-")[d) The function is constant]

  #only("1")[
    #voiceover("Let's consider a question about derivatives and their implications. If the derivative of a function at a point is zero, what can you infer about the function at that point?")
  ]

  #only("2")[
    #voiceover("Could it mean that the function has a maximum or minimum at that point?")
  ]

  #only("3")[
    #voiceover("Or perhaps it indicates that the function is increasing at that point?")
  ]

  #only("4")[
    #voiceover("Maybe it suggests that the function is decreasing at that point?")
  ]

  #only("5")[
    #voiceover("Or does it imply that the function is constant at that point?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "If the derivative of a function at a point is zero, what can you infer about the function at that point?", 
answerOptions: ("The function has a maximum or minimum", "The function is increasing", "The function is decreasing", "The function is constant"),
correctAnswerIndex: 0 
)