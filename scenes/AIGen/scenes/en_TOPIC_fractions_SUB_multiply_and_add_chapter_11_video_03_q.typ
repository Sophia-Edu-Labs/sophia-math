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
    #align(center)[$ 2/5 $ from $ 3/4 $]
  ]

  #only("2")[
    #voiceover("Here's our question: Subtract two-fifths from three-fourths. Take a moment to think about how you might approach this problem.")
  ]

  #only("3-")[
    #text(size: 20pt)[
      How would you:
      - Find a common denominator?
      - Rewrite the fractions?
      - Perform the subtraction?
    ]
  ]

  #only("3")[
    #voiceover("As you consider this problem, think about how you would find a common denominator, rewrite the fractions, and then perform the subtraction. Good luck!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Subtract $\frac{2}{5}$ from $\frac{3}{4}$.", 
answerOptions: ("$\frac{3}{4} - \frac{2}{5} = \frac{15}{20} - \frac{8}{20} = \frac{7}{20}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)