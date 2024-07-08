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

  #only("2-")[#text(size: 24pt)[$ 2/3 $]]
  #v(20pt)

  #only("3-")[#text(size: 20pt)[Can you change this fraction to have a denominator of 9?]]

  #only("2")[
    #voiceover("We have the fraction two-thirds.")
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction so that it has a denominator of 9, while keeping its value the same. How would you do this?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{2}{3}$ to a fraction with a denominator of $9$.", 
answerOptions: ("$\frac{6}{9}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)