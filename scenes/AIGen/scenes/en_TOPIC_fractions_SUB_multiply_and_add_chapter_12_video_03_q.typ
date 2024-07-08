#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following fraction problem.")
  ]

  #text(size: 30pt, weight: "bold")[Equivalent Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Change $2/3$ to a fraction with a denominator of 9]
  ]

  #only("2")[
    #voiceover("We need to change two-thirds to an equivalent fraction with a denominator of nine. How can we approach this?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{2}{3}$ to a fraction with a denominator of $9$.", 
answerOptions: ("$\frac{6}{9}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)