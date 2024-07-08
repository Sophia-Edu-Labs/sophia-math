#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Through Two Points]
  #v(40pt)

  #only("1-")[
    Consider the following information:
    - Points: (1, 3) and (2, 12)
    - $a = 3$
  ]
  #v(20pt)

  #only("2-")[
    Write the power function $f(x) = a x^b$ that passes through these points.
  ]

  #only("1")[
    #voiceover("Let's explore an exercise about power functions. We're given two points and a specific value for 'a'.")
  ]

  #only("2")[
    #voiceover("Your task is to write the power function f of x equals a times x to the power of b that passes through the points (1, 3) and (2, 12), given that a equals 3. Can you determine the value of b and write the complete function?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Write the power function that passes through the points $(1, 3)$ and $(2, 12)$ with $a = 3$.", 
answerOptions: ("$f(x) = 3x^2$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)