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
    #align(center)[$ 2/5 + 3/10 $]
  ]

  #only("2")[
    #voiceover("Add the following fractions: two fifths plus three tenths.")
  ]

  #only("3-")[
    #text(size: 20pt)[What is the result?]
  ]

  #only("3")[
    #voiceover("What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{2}{5}$ and $\frac{3}{10}$.", 
answerOptions: ("$\frac{7}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)