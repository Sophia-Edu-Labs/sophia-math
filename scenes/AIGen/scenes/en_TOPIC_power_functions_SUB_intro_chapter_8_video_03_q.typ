#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying Power Functions]
  #v(40pt)

  #only("1-")[Consider the function:]
  #v(20pt)

  #only("2-")[#text(size: 24pt)[$ f(x) = 25x^(-1) $]]
  #v(40pt)

  #only("3-")[Can you simplify this function? 🤔]

  #only("1")[
    #voiceover("Let's tackle a challenging exercise on power functions.")
  ]

  #only("2")[
    #voiceover("Consider the function f of x equals 25 times x to the power of negative 1.")
  ]

  #only("3")[
    #voiceover("Your task is to simplify this function. Take a moment to think about how you might approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Simplify $f(x) = 25x^{-1}$.", 
answerOptions: ("$f(x) = \frac{25}{x}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)