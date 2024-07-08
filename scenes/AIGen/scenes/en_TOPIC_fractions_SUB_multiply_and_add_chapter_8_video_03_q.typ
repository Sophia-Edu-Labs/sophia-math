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
    #v(20pt)
    #align(center)[$ 5/6 + 1/3 $]
  ]

  #only("2")[
    #voiceover("We need to add five sixths and one third. What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{5}{6}$ and $\frac{1}{3}$.", 
answerOptions: ("$\frac{7}{6}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)