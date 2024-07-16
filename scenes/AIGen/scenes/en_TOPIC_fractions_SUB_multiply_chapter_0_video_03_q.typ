#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions with Whole Numbers]
  #v(40pt)

  #only("1-")[Multiply 4 by 2/3]
  #v(20pt)

  #only("2-")[Choose the correct answer:]
  #v(20pt)

  #only("3-")[a) 4/3]
  #v(10pt)
  #only("4-")[b) 6/3]
  #v(10pt)
  #only("5-")[c) 8/3]
  #v(10pt)
  #only("6-")[d) 10/3]

  #only("1")[
    #voiceover("Let's practice multiplying fractions with whole numbers. Here's our question: Multiply 4 by two-thirds.")
  ]

  #only("2")[
    #voiceover("We need to choose the correct answer from the following options.")
  ]

  #only("3")[
    #voiceover("Is it four-thirds?")
  ]

  #only("4")[
    #voiceover("Or maybe six-thirds?")
  ]

  #only("5")[
    #voiceover("Could it be eight-thirds?")
  ]

  #only("6")[
    #voiceover("Or is it ten-thirds?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $4$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{4}{3}$", "$\frac{6}{3}$", "$\frac{8}{3}$", "$\frac{10}{3}$"),
correctAnswerIndex: 2 
)