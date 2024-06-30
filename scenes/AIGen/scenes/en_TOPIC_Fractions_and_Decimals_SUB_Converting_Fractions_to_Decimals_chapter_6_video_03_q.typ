#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $7/10$]
  #v(20pt)

  #only("2-")[Convert this fraction to a decimal. 🔢]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Here's our question for today:")
  ]

  #only("2")[
    #voiceover("What is seven tenths as a decimal? Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{10}$ as a decimal?", 
answerOptions: ("$0.7$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)