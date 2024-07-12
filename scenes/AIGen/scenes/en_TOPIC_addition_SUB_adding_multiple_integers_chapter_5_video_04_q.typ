#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Multiple Two-Digit Integers]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    #align(center)[
      $18 + 28 + 38$
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding multiple integers with two digits. Calculate the sum of 18, 28, and 38.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $18 + 28 + 38$.", 
answerOptions: ("$\begin{matrix} \\text{Sum} & = & 84 \end{matrix}$", "$\begin{matrix} \\text{Sum} & = & -164 \end{matrix}$"), 
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