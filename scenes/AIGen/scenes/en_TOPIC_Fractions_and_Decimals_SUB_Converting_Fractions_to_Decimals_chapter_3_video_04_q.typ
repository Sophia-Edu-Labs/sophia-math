#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting 1/5 to a Decimal]
  #v(40pt)

  #only("1-")[Consider the fraction: $1/5$]
  #v(20pt)

  #only("2-")[Question: What is $1/5$ as a decimal? 🤔]

  #only("1")[
    #voiceover("Let's look at an interesting fraction conversion problem.")
  ]

  #only("2")[
    #voiceover("Here's our question: What is one-fifth as a decimal? Take a moment to think about it. How would you approach this conversion?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "What is $\frac{1}{5}$ as a decimal?", 
answerOptions: ("$0.2$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)