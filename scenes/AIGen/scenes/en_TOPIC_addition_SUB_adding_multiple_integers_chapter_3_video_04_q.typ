#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Single-Digit Integers]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    #align(center)[
      #text(size: 24pt)[$ 3 + 3 + 3 + 3 $]
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding single-digit integers. Calculate the sum of three plus three plus three plus three.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $3 + 3 + 3 + 3$.", 
answerOptions: ("$\begin{matrix} 12 \end{matrix}$", "$\begin{matrix} -20 \end{matrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{matrix} \key{a} \end{matrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)