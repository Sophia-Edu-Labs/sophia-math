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
      $4/9 + 1/3$
    ]
  ]

  #only("2")[
    #voiceover("We're going to add two fractions.")
  ]

  #only("3")[
    #voiceover("The problem is to add four-ninths and one-third. What is the sum of these fractions?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{4}{9}$ and $\frac{1}{3}$.", 
answerOptions: ("$\frac{7}{9}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)