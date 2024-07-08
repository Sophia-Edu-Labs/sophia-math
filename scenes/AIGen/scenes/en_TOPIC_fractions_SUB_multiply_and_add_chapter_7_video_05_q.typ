#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add the following fractions:]
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      $5/12 + 1/4$
    ]
  ]

  #only("2")[
    #voiceover("We're going to add two fractions.")
  ]

  #only("3")[
    #voiceover("Our task is to add five twelfths and one fourth. How would you approach this problem?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{5}{12}$ and $\frac{1}{4}$.", 
answerOptions: ("$\frac{8}{12} = \frac{2}{3}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)