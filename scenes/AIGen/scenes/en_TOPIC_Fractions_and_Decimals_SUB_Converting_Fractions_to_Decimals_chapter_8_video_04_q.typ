#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting a Fraction to a Decimal]
  #v(40pt)

  #only("1-")[Consider the fraction: $7/20$]
  #v(20pt)

  #only("2-")[Question: What is this fraction as a decimal? 🤔]

  #only("1")[
    #voiceover("Let's practice converting more complex fractions to decimals. Consider the fraction seven twentieths.")
  ]

  #only("2")[
    #voiceover("Your task is to convert this fraction, seven twentieths, into its decimal form. Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{7}{20}$ as a decimal?", 
answerOptions: ("$0.35$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)