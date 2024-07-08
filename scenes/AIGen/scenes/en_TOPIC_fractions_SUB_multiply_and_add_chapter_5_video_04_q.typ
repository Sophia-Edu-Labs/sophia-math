#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following fraction:")
  ]

  #text(size: 30pt, weight: "bold")[Changing Denominator]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[$ 5/6 $]
  ]

  #only("2")[
    #voiceover("We have the fraction five sixths.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Change this fraction to an equivalent fraction with denominator 12.]
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction to an equivalent fraction with a denominator of twelve.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{5}{6}$ to a fraction with a denominator of $12$.", 
answerOptions: ("$\frac{10}{12}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)