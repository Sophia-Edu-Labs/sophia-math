#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Reciprocal Power Function]
  #v(40pt)

  #only("1-")[Consider the power function:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$ f(x) = x^3 $]]
  #v(40pt)

  #only("3-")[Question: Write the power function that is the reciprocal of $f(x)$.]

  #only("1")[
    #voiceover("Let's explore an exercise about power functions.")
  ]

  #only("2")[
    #voiceover("Consider the power function f of x equals x cubed.")
  ]

  #only("3")[
    #voiceover("Your task is to write the power function that is the reciprocal of this given function. Think about what it means for a function to be a reciprocal and how this applies to power functions.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Write the power function that is the reciprocal of $f(x) = x^3$.", 
answerOptions: ("$f(x) = x^{-3}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)