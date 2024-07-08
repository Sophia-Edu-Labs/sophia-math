#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice subtracting fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Subtract:]
    #v(20pt)
    #text(size: 28pt)[$ 1/4 $ from $ 3/4 $]
  ]

  #only("2")[
    #voiceover("In this exercise, we need to subtract one-fourth from three-fourths. Can you determine the result?")
  ]

  #only("3-")[
    #text(size: 24pt)[Write your answer as a fraction.]
  ]

  #only("3")[
    #voiceover("Remember to express your final answer as a fraction. Take your time to work it out!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{1}{4}$ from $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)