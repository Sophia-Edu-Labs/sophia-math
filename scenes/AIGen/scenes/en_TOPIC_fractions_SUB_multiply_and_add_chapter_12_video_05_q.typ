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
    #text(size: 24pt)[Subtract $2/7$ from $5/7$]
  ]

  #only("2")[
    #voiceover("We need to subtract two sevenths from five sevenths. How would you approach this problem?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{2}{7}$ from $\frac{5}{7}$.", 
answerOptions: ("$\frac{3}{7}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)