#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vector Description]
  #v(40pt)

  #only("1-")[Which of the following best describes a vector?]
  #v(20pt)

  #only("2-")[a) A single number]
  #v(10pt)
  #only("3-")[b) A multi-dimensional number]
  #v(10pt)
  #only("4-")[c) A rectangular array of numbers]
  #v(10pt)
  #only("5-")[d) None of the above]

  #only("1")[
    #voiceover("In our exploration of vectors, let's consider a fundamental question: Which of the following options best describes a vector?")
  ]

  #only("2")[
    #voiceover("Is a vector simply a single number, like the scalar values we're familiar with from basic arithmetic?")
  ]

  #only("3")[
    #voiceover("Or perhaps it's more accurate to think of a vector as a multi-dimensional number, representing multiple components in space?")
  ]

  #only("4")[
    #voiceover("Alternatively, could a vector be best described as a rectangular array of numbers, similar to how we might visualize a matrix?")
  ]

  #only("5")[
    #voiceover("Or is it possible that none of these descriptions accurately capture the essence of a vector?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following best describes a vector?", 
answerOptions: ("A single number", "A multi-dimensional number", "A rectangular array of numbers", "None of the above"),
correctAnswerIndex: 1 
)