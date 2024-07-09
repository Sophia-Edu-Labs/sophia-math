#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving a Quadratic Equation]
  #v(40pt)

  #only("1-")[Consider the quadratic equation:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$x^2 + 3x - 10 = 0$]]
  #v(40pt)

  #only("3-")[Solve this equation by factorizing. 🧮]

  #only("1")[
    #voiceover("Let's practice solving a quadratic equation.")
  ]

  #only("2")[
    #voiceover("Consider the quadratic equation: x squared plus three x minus ten equals zero.")
  ]

  #only("3")[
    #voiceover("Your task is to solve this equation using the factorization method. Remember, factorizing involves finding two numbers that multiply to give the constant term and add up to the coefficient of x. Good luck!")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Solve the quadratic equation $x^2 + 3x - 10 = 0$ by factorizing.", 
answerOptions: ("The quadratic equation $x^2 + 3x - 10 = 0$ can be factorized as $(x + 5)(x - 2) = 0$. Therefore, the solutions are $x = -5$ and $x = 2$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)