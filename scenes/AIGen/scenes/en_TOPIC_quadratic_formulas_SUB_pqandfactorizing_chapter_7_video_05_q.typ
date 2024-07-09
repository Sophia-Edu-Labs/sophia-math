#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)

  #only("1-")[Consider the quadratic equation:]
  #v(20pt)

  #only("2-")[#text(size: 24pt)[$ x^2 - 5x + 6 = 0 $]]
  #v(40pt)

  #only("3-")[Can you solve this equation by factoring? 🤔]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations by factoring.")
  ]

  #only("2")[
    #voiceover("Consider the quadratic equation: x squared minus 5x plus 6 equals zero.")
  ]

  #only("3")[
    #voiceover("Can you solve this equation by factoring? Take a moment to think about it, and try to work it out on your own.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Solve the quadratic equation $x^2 - 5x + 6 = 0$ by factorizing.", 
answerOptions: ("The quadratic equation $x^2 - 5x + 6 = 0$ can be factorized as $(x - 2)(x - 3) = 0$. Therefore, the solutions are $x = 2$ and $x = 3$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)