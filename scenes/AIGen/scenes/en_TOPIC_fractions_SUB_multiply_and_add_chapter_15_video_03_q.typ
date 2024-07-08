#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following fraction problem:")
  ]

  #text(size: 30pt, weight: "bold")[Equivalent Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Change $4/5$ to a fraction with a denominator of 20.]
  ]

  #only("2")[
    #voiceover("Change four-fifths to a fraction with a denominator of twenty.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[🤔 How can we modify the fraction while keeping its value the same?]
  ]

  #only("3")[
    #voiceover("Think about how we can modify this fraction while keeping its value the same. What operation could we perform on both the numerator and denominator?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{4}{5}$ to a fraction with a denominator of $20$.", 
answerOptions: ("$\frac{16}{20}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)