#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fraction to Decimal]
  #v(40pt)

  #only("1-")[Consider the fraction: $13/8$]
  #v(20pt)

  #only("2-")[Convert this fraction to a decimal. 🔢]

  #only("1")[
    #voiceover("Let's practice converting fractions to decimals. Here's our question:")
  ]

  #only("2")[
    #voiceover("What is thirteen eighths as a decimal? Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{13}{8}$ as a decimal?", 
answerOptions: ("$1.625$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)