#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Symmetry of Cubic Function]
  #v(40pt)

  #only("1-")[Consider the function:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$ f(x) = x^3 $]]
  #v(40pt)

  #only("3-")[Question: Describe the symmetry of this function.]

  #only("1")[
    #voiceover("Let's examine the symmetry of a specific cubic function.")
  ]

  #only("2")[
    #voiceover("Consider the function f of x equals x cubed.")
  ]

  #only("3")[
    #voiceover("Your task is to describe the symmetry of this function. Think about how the graph of this function would look and what properties it might have in terms of symmetry.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Describe the symmetry of the function $f(x) = x^3$.", 
answerOptions: ("The function $f(x) = x^3$ is an odd function. This means that it has rotational symmetry about the origin. Mathematically, this can be expressed as $f(-x) = -f(x)$ for all $x$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)