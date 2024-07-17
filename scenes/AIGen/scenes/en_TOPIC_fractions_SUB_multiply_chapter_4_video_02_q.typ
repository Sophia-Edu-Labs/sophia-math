#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)
  #only("1")[
    #voiceover("Let's practice multiplying fractions.")
  ]
  #only("2-")[
    #text()[- Exercise: Multiply $1/2$ by $3/5$ 📚]
  ]
  #only("2")[
    #voiceover("Exercise: Multiply one half by three fifths.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Multiply $\frac{1}{2}$ by $\frac{3}{5}$.", 
answerOptions: ("$\frac{3}{10}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)