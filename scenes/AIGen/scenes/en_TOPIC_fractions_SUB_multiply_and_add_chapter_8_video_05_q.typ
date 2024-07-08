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
    #align(center)[$ 7/8 + 1/2 $]
  ]

  #only("2")[
    #voiceover("We need to add seven-eighths and one-half. What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{7}{8}$ and $\frac{1}{2}$.", 
answerOptions: ("$\frac{7}{8} + \frac{1}{2} = \frac{7}{8} + \frac{4}{8} = \frac{11}{8}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)