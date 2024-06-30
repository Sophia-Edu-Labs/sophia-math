#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
  #v(40pt)

  #only("1-")[Consider the fraction: $4/25$]
  #v(20pt)

  #only("2-")[Question: What is this fraction as a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Consider the fraction four over twenty-five.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction, four over twenty-five, into its decimal form. What decimal number does this fraction represent?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{4}{25}$ as a decimal?", 
answerOptions: ("$0.16$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)