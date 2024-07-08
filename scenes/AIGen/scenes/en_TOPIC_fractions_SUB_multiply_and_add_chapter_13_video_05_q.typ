#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following subtraction problem involving fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtract $1/3$ from $5/6$]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[What is the result of this subtraction?]
  ]

  #only("2")[
    #voiceover("Subtract one-third from five-sixths.")
  ]

  #only("3")[
    #voiceover("What is the result of this subtraction? Take a moment to think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{1}{3}$ from $\frac{5}{6}$.", 
answerOptions: ("$\frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)