#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $9/2$]
  #v(20pt)

  #only("2-")[Question: What is $9/2$ as a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Consider the fraction nine over two.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction, nine over two, into its decimal form. What decimal number does nine over two equal?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{9}{2}$ as a decimal?", 
answerOptions: ("$4.5$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)