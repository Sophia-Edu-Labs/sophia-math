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
    #text(size: 24pt)[Subtract $2/5$ from $4/5$]
  ]

  #only("2")[
    #voiceover("We need to subtract two fifths from four fifths. How would you approach this problem?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[💡 Hint: The fractions have the same denominator]
  ]

  #only("3")[
    #voiceover("Notice that both fractions have the same denominator. This simplifies our calculation.")
  ]

  #v(20pt)

  #only("4-")[
    #text(size: 20pt)[❓ What is the result of this subtraction?]
  ]

  #only("4")[
    #voiceover("Can you determine the result of this subtraction? Take a moment to think about it before we move on to the solution in the next video.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{2}{5}$ from $\frac{4}{5}$.", 
answerOptions: ("$\frac{2}{5}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)