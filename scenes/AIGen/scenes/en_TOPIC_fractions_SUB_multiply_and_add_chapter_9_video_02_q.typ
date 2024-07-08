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
    #text(size: 24pt)[Subtract $3/4$ from $5/4$]
  ]

  #only("2")[
    #voiceover("We need to subtract three-fourths from five-fourths. How would you approach this problem?")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Can you solve this subtraction?]
  ]

  #only("3")[
    #voiceover("Think about how you would perform this subtraction. Remember, when subtracting fractions with the same denominator, we only subtract the numerators.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{3}{4}$ from $\frac{5}{4}$.", 
answerOptions: ("$\frac{1}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)