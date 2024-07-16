#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)

  #only("1-")[Multiply 6 by 5/6]
  #v(20pt)

  #only("2-")[a) 5/6]
  #v(10pt)
  #only("3-")[b) 10/6]
  #v(10pt)
  #only("4-")[c) 15/6]
  #v(10pt)
  #only("5-")[d) 30/6]

  #only("1")[
    #voiceover("Let's practice multiplying fractions with whole numbers. Here's our question: Multiply 6 by five-sixths.")
  ]

  #only("2")[
    #voiceover("Is the answer five-sixths?")
  ]

  #only("3")[
    #voiceover("Or is it ten-sixths?")
  ]

  #only("4")[
    #voiceover("Maybe it's fifteen-sixths?")
  ]

  #only("5")[
    #voiceover("Or could it be thirty-sixths?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $6$ by $\frac{5}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "$\frac{10}{6}$", "$\frac{15}{6}$", "$\frac{30}{6}$"),
correctAnswerIndex: 0 
)