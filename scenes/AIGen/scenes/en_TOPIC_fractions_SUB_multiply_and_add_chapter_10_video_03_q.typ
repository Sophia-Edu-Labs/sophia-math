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
    #text(size: 24pt)[Subtract $1/6$ from $5/6$]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[How would you approach this problem? 🤔]
  ]

  #only("2")[
    #voiceover("We need to subtract one-sixth from five-sixths.")
  ]

  #only("3")[
    #voiceover("Think about how you would approach this problem. Remember, when subtracting fractions with the same denominator, we keep the denominator the same and subtract the numerators.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{1}{6}$ from $\frac{5}{6}$.", 
answerOptions: ("$\frac{4}{6}$ or $\frac{2}{3}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)