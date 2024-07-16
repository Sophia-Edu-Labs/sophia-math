#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following multiplication problem:")
  ]

  #text(size: 30pt, weight: "bold")[Multiplying a Whole Number by a Fraction]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Multiply 5 by 3/4]
  ]

  #only("2")[
    #voiceover("Multiply 5 by three-fourths.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[What is the result? 🤔]
  ]

  #only("3")[
    #voiceover("What is the result of this multiplication?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $5$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{15}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)