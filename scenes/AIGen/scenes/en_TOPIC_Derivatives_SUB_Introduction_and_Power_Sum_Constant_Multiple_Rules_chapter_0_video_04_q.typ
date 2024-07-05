#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Positive Derivative]
  #v(40pt)
  
  #only("1-")[If the derivative of a function is positive at a point, what can you infer about the function at that point?]
  #v(20pt)
  
  #only("2-")[a) The function is increasing]
  #v(10pt)
  #only("3-")[b) The function is decreasing]
  #v(10pt)
  #only("4-")[c) The function has a maximum]
  #v(10pt)
  #only("5-")[d) The function is constant]
  
  #only("1")[
    #voiceover("Let's consider a question about derivatives. If the derivative of a function is positive at a point, what can you infer about the function at that point?")
  ]
  #only("2")[
    #voiceover("Is it that the function is increasing?")
  ]
  #only("3")[
    #voiceover("Or is the function decreasing?")
  ]
  #only("4")[
    #voiceover("Maybe the function has a maximum at that point?")
  ]
  #only("5")[
    #voiceover("Or could it be that the function is constant?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "If the derivative of a function is positive at a point, what can you infer about the function at that point?", 
answerOptions: ("The function is increasing", "The function is decreasing", "The function has a maximum", "The function is constant"),
correctAnswerIndex: 0 
)