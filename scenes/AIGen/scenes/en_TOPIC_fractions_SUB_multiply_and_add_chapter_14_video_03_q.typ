#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following fraction problem.")
  ]

  #text(size: 30pt, weight: "bold")[Equivalent Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Change $3/4$ to a fraction with a denominator of 16]
  ]

  #only("2")[
    #voiceover("We need to change the fraction three-fourths to an equivalent fraction with a denominator of sixteen. Think about how we can modify both the numerator and denominator to achieve this.")
  ]

  #v(20pt)

  #only("3-")[
    #text(size: 20pt)[🤔 How can we adjust both numerator and denominator?]
  ]

  #only("3")[
    #voiceover("Consider what operation we need to perform on the denominator to change it from four to sixteen. How would this operation affect the numerator?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{3}{4}$ to a fraction with a denominator of $16$.", 
answerOptions: ("$\frac{12}{16}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)