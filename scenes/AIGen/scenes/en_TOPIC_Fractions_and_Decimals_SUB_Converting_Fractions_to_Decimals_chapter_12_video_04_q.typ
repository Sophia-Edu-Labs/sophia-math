#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $15/8$]
  #v(20pt)

  #only("2-")[🤔 Can you convert this to a decimal?]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Consider the fraction fifteen eighths.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction into its decimal form. Can you figure out what fifteen eighths is as a decimal?")
  ]
]



//Type: FREE 
#questionDef( 
questionText: "What is $\frac{15}{8}$ as a decimal?", 
answerOptions: ("$1.875$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)