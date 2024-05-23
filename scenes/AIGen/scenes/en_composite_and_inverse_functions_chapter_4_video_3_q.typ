#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the following tables for functions f and g.")
]

#text(size: 30pt, weight: "bold")[Inverse Functions]
// The title "Inverse Functions" is shown on all slides

#v(40pt)

#only("2-")[
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [$f(x)$],
  [$x$, $f(x)$],
  [1, 3], 
  [2, 5],
  [3, 7],
  [4, 9]
)
#h(40pt)
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [$g(x)$],
  [$x$, $g(x)$],
  [3, 1],
  [5, 2],
  [7, 3],
  [9, 4]
)
]
// The tables for f(x) and g(x) are shown from slide 2 onward

#v(40pt)

#only("3-")[Is $g(x)$ the inverse of $f(x)$? 🤔]
// The question "Is g(x) the inverse of f(x)?" is shown from slide 3 onward

#only("2")[
#voiceover("Here we have the tables for functions f and g.")
]

#only("3")[
#voiceover("Based on these tables, can you determine if g of x is the inverse function of f of x?")
]

]#questionDef(
questionText: "Is $ g(x) $ the inverse of $ f(x) $?",
answerOptions: ("Yes, because for every pair $ (a, b) $ in the table of $ f(x) $, there is a corresponding pair $ (b, a) $ in the table of $ g(x) $.", "No, the tables do not show an inverse relationship between $ f(x) $ and $ g(x) $."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)