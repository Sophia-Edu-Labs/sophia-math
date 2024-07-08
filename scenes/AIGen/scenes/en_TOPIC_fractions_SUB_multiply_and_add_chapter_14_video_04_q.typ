#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following addition problem with fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add the following fractions:]
  ]

  #v(20pt)

  #only("3-")[
    $ 2/3 + 1/6 $
  ]

  #v(40pt)

  #only("4-")[
    What is the result of this addition?
  ]

  #only("2")[
    #voiceover("We need to add two fractions.")
  ]

  #only("3")[
    #voiceover("The fractions we need to add are two thirds and one sixth.")
  ]

  #only("4")[
    #voiceover("Can you determine the sum of these fractions?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{2}{3}$ and $\frac{1}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)