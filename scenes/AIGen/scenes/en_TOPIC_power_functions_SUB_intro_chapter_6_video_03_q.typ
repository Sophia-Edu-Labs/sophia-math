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

  #only("2-")[#text(size: 24pt)[$ f(x) = 16x^(-2) $]]
  #v(40pt)

  #only("3-")[Can you simplify this function? 🤔]

  #only("1")[
    #voiceover("Let's practice simplifying power functions.")
  ]

  #only("2")[
    #voiceover("Consider the function f of x equals sixteen times x to the power of negative two.")
  ]

  #only("3")[
    #voiceover("Your task is to simplify this function. What form can we express this in to make it easier to understand or work with?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Simplify $f(x) = 16x^{-2}$.", 
answerOptions: ("$f(x) = \frac{16}{x^2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)