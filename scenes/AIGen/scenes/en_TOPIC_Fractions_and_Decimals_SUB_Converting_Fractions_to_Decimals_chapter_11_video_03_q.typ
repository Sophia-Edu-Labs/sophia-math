#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $21/8$]
  #v(20pt)

  #only("2-")[Can you convert this to a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Consider the fraction twenty-one over eight.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction into its decimal form. Think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{21}{8}$ as a decimal?", 
answerOptions: ("$2.625$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)