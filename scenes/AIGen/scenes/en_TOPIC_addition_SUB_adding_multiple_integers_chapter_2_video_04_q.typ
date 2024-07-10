#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding four single-digit integers.")
  ]
  #text(size: 30pt, weight: "bold")[Adding Single-Digit Integers]
  #v(40pt)
  #only("2-")[
    Calculate: 3 + 4 + 5 + 6
  ]
  #only("2")[
    #voiceover("Calculate the sum of three, four, five, and six.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $3 + 4 + 5 + 6$.", 
answerOptions: ("$\begin{matrix} \\text{Sum} & = & 18 \end{matrix}$", "$\begin{matrix} \\text{Sum} & = & -32 \end{matrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{matrix} \\text{Sum} & = & \key{a} \end{matrix}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)