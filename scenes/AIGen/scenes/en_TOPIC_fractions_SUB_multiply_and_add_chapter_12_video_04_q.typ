#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following addition problem:")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add $1/4$ and $1/2$]
  ]

  #only("2")[
    #voiceover("Add one-fourth and one-half. What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{1}{4}$ and $\frac{1}{2}$.", 
answerOptions: ("$\frac{3}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)