#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following subtraction problem with fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[Subtract $2/7$ from $6/7$]
    ]
  ]

  #only("2")[
    #voiceover("We need to subtract two sevenths from six sevenths. How would you approach this problem?")
  ]

  #v(40pt)

  #only("3-")[
    #align(center)[
      #text(size: 20pt)[What is the result of $6/7 - 2/7$?]
    ]
  ]

  #only("3")[
    #voiceover("In other words, what is the result when we subtract two sevenths from six sevenths?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{2}{7}$ from $\frac{6}{7}$.", 
answerOptions: ("$\frac{4}{7}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)