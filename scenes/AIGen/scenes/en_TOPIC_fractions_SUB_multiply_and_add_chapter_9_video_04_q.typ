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
    #text(size: 24pt)[Subtract $2/5$ from $7/10$]
  ]

  #only("2")[
    #voiceover("We need to subtract two fifths from seven tenths. How would you approach this problem?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[❓ What steps would you take to solve this?]
  ]

  #only("3")[
    #voiceover("Think about what steps you would take to solve this problem. Remember, when subtracting fractions, we need to consider their denominators carefully.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{2}{5}$ from $\frac{7}{10}$.", 
answerOptions: ("$\frac{3}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)