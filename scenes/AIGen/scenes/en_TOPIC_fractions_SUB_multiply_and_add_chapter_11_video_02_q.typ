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
    #text(size: 24pt)[Subtract 3/10 from 7/10]
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[Can you perform this subtraction?]
  ]

  #only("2")[
    #voiceover("Subtract three-tenths from seven-tenths.")
  ]

  #only("3")[
    #voiceover("Can you perform this subtraction? Take a moment to think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{3}{10}$ from $\frac{7}{10}$.", 
answerOptions: ("$\frac{4}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)