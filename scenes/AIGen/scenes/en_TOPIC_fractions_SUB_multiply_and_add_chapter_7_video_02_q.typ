#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding fractions with a simple exercise.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add the following fractions:]
  ]
  #v(20pt)

  #only("3-")[
    #align(center)[
      $3/7 + 2/7$
    ]
  ]

  #only("2")[
    #voiceover("We're going to add two fractions.")
  ]

  #only("3")[
    #voiceover("Here's our problem: Add three-sevenths and two-sevenths.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{3}{7}$ and $\frac{2}{7}$.", 
answerOptions: ("$\frac{5}{7}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)