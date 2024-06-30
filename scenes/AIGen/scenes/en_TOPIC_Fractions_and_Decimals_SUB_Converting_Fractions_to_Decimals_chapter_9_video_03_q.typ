#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $11/5$]
  #v(20pt)

  #only("2-")[Can you convert this to a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. We'll focus on a specific example.")
  ]

  #only("2")[
    #voiceover("Here's our question: What is eleven fifths as a decimal? Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{11}{5}$ as a decimal?", 
answerOptions: ("$2.2$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)