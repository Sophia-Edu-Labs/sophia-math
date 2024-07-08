#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider an addition problem involving fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add the following fractions:]
    #v(20pt)
    #align(center)[$ 2/5 + 3/10 $]
  ]

  #only("2")[
    #voiceover("We need to add two fractions: two fifths and three tenths. What is the result of this addition?")
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