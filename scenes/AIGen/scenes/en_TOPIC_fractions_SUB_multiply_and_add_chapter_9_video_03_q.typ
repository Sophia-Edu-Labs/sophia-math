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

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtract $1/8$ from $5/8$]
  ]

  #only("2")[
    #voiceover("We need to subtract one-eighth from five-eighths. How would you approach this problem?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[What is the result of $5/8 - 1/8$?]
  ]

  #only("3")[
    #voiceover("In other words, what is the result when we subtract one-eighth from five-eighths?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{1}{8}$ from $\frac{5}{8}$.", 
answerOptions: ("$\frac{4}{8}$ or \frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)