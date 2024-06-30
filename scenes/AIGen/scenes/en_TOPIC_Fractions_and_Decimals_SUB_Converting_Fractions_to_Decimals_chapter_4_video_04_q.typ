#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fraction to Decimal]
  #v(40pt)

  #only("1-")[Consider the fraction: $7/8$]
  #v(20pt)

  #only("2-")[Convert this fraction to a decimal. 🔢]

  #only("1")[
    #voiceover("Let's practice converting more complex fractions to decimals. Consider the fraction seven-eighths.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction, seven-eighths, into its decimal representation. Remember, we're dealing with a fraction that's not over a power of ten, so this might require some additional steps. Think about how you can approach this conversion.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{8}$ as a decimal?", 
answerOptions: ("$0.875$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)