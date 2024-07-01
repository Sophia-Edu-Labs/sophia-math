#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Representation]
  #v(40pt)

  #only("1-")[
    Consider the array:
    #v(20pt)
    $ mat(1, 2; 3, 4) $
  ]

  #only("1")[
    #voiceover("Let's consider a numeric exercise about matrices. How would you describe the array shown on the screen?")
  ]

  #only("2-")[
    How would you describe this array?
  ]

  #only("2")[
    #voiceover("Take a moment to think about how you would characterize this arrangement of numbers. What mathematical object does it represent?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "How would you describe the array $[[1, 2], [3, 4]]$?", 
answerOptions: ("$\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$", "$\begin{bmatrix} 2 & 0 \\\\ -2 & -4 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)