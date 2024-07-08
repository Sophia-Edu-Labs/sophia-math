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
      #text(size: 24pt)[$ 3/5 $]
    ]
  ]

  #only("2")[
    #voiceover("We have the fraction three fifths.")
  ]

  #v(40pt)

  #only("3-")[
    #text(size: 20pt)[Change this fraction to an equivalent fraction with a denominator of 15.]
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction to an equivalent fraction with a denominator of 15.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{3}{5}$ to a fraction with a denominator of $15$.", 
answerOptions: ("$\frac{9}{15}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)