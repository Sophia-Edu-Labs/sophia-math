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
    #text(size: 24pt)[$ 4/7 $]
  ]

  #v(20pt)

  #only("3-")[
    Can you change this fraction to an equivalent fraction with a denominator of 14? 🤔
  ]

  #only("2")[
    #voiceover("We have the fraction four sevenths.")
  ]

  #only("3")[
    #voiceover("Your task is to change this fraction to an equivalent fraction with a denominator of 14. Think about what operations you might need to perform on both the numerator and denominator to achieve this. Remember, whatever you do to the denominator, you must also do to the numerator to keep the fraction equivalent.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Change $\frac{4}{7}$ to a fraction with a denominator of $14$.", 
answerOptions: ("$\frac{8}{14}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)