#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $3/5$]
  #v(20pt)

  #only("2-")[Question: What is $3/5$ as a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Consider the fraction three-fifths.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction, three-fifths, into its decimal representation. What decimal number is equivalent to three-fifths?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{3}{5}$ as a decimal?", 
answerOptions: ("$0.6$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)