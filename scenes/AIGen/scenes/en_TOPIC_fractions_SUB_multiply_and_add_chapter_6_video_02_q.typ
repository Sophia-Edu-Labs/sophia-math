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
    #text(size: 24pt)[Add the following fractions:]
    #v(20pt)
    #align(center)[$ 1/4 + 2/4 $]
  ]

  #only("2")[
    #voiceover("Add one-fourth and two-fourths. What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{1}{4}$ and $\frac{2}{4}$.", 
answerOptions: ("$\frac{3}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)