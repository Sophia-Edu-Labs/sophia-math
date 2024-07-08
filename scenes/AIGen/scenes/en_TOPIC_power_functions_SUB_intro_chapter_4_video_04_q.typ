#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function with Negative Exponent]
  #v(40pt)

  #only("1-")[Consider a power function of the form:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$f(x) = a x^b$]]
  #v(20pt)
  #only("3-")[where $a = 2$ and the function passes through the point $(1, 2)$.]
  #v(20pt)
  #only("4-")[What is the value of the negative exponent $b$?]

  #only("1")[
    #voiceover("Let's explore a power function with a negative exponent.")
  ]

  #only("2")[
    #voiceover("We're looking at a function of the form f of x equals a times x to the power of b.")
  ]

  #only("3")[
    #voiceover("We're given that a equals 2, and the function passes through the point 1 comma 2.")
  ]

  #only("4")[
    #voiceover("Your task is to determine the value of the negative exponent b. Remember, a negative exponent means the function will decrease as x increases. Think about how you can use the given point and the value of a to find b.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Write the power function with a negative exponent that passes through the point $(1, 2)$ with $a = 2$.", 
answerOptions: ("$f(x) = 2x^{-1}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)