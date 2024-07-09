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
  #only("2-")[#text(size: 24pt)[$x^2 + 6x + 9 = 0$]]
  #v(40pt)

  #only("3-")[Solve this equation by factorizing 🧮]

  #only("1")[
    #voiceover("Let's practice solving a quadratic equation.")
  ]

  #only("2")[
    #voiceover("Consider the quadratic equation: x squared plus six x plus nine equals zero.")
  ]

  #only("3")[
    #voiceover("Your task is to solve this equation by factorizing. Take a moment to think about how you would approach this problem.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Solve the quadratic equation $x^2 + 6x + 9 = 0$ by factorizing.", 
answerOptions: ("The quadratic equation can be factorized as $(x + 3)(x + 3) = 0$. Therefore, the solution is $x = -3$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)