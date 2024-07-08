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

  #text(size: 30pt, weight: "bold")[Changing Fraction Denominator]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[$ 3/4 $]
    ]
  ]

  #only("2")[
    #voiceover("We have the fraction three-fourths.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Change this fraction to have a denominator of 8.]
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction so that it has a denominator of 8, while maintaining its original value. How would you approach this problem?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{3}{4}$ to a fraction with a denominator of $8$.", 
answerOptions: ("$\frac{6}{8}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)