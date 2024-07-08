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
    #text(size: 28pt)[$ 3/8 $ from $ 7/8 $]
  ]

  #only("2")[
    #voiceover("Here's our question: Subtract three-eighths from seven-eighths.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 24pt)[Can you solve this?]
  ]

  #only("3")[
    #voiceover("Can you solve this? Give it a try before moving on to the solution!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{3}{8}$ from $\frac{7}{8}$.", 
answerOptions: ("$\frac{4}{8} = \frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)