#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $1/4$]
  #v(20pt)

  #only("2-")[Convert this fraction to a decimal. 🔢]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. We'll focus on a specific example.")
  ]

  #only("2")[
    #voiceover("Here's your task: Convert one-fourth to a decimal. Think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{1}{4}$ as a decimal?", 
answerOptions: ("$0.25$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)