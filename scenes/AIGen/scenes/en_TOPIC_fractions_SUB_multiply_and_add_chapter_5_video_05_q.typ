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

  #only("2-")[#text(size: 24pt)[$ 1/2 $]]
  #v(20pt)

  #only("3-")[Can you change this fraction to an equivalent fraction with a denominator of 4?]

  #only("2")[
    #voiceover("We have the fraction one-half.")
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction to an equivalent fraction with a denominator of 4. How would you approach this?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{1}{2}$ to a fraction with a denominator of $4$.", 
answerOptions: ("$\frac{2}{4}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)