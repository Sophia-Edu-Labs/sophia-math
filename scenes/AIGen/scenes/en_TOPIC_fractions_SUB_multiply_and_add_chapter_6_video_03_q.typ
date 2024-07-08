#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following addition problem:")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Add the following fractions:]
    #v(20pt)
    #align(center)[
      $3/8 + 1/8$
    ]
  ]

  #only("2")[
    #voiceover("Add three-eighths and one-eighth. What is the result of this addition?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Add $\frac{3}{8}$ and $\frac{1}{8}$.", 
answerOptions: ("$\frac{3}{8} + \frac{1}{8} = \frac{4}{8} = \frac{1}{2}$", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)