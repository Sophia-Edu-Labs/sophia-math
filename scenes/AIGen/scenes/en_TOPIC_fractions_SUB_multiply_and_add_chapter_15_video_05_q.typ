#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider a subtraction problem involving fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Fraction Subtraction]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtract $3/10$ from $9/10$]
  ]

  #only("2")[
    #voiceover("We need to subtract three tenths from nine tenths. What is the result of this operation?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{3}{10}$ from $\frac{9}{10}$.", 
answerOptions: ("$\frac{6}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)