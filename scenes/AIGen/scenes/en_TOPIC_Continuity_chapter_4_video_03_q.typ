#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's consider the function")
]

#text(size: 30pt, weight: "bold")[Continuity of the function]

#v(40pt)

#only("2-")[#text()[$ f(x) = 1/x $]]

#v(40pt)

#only("3-")[Is $f(x)$ continuous at $x = 1$? 🤔]

#only("2")[
#voiceover("f of x equals one over x.")
]

#only("3")[
#voiceover("Is the function f continuous at x equals one?")
]

]#questionDef(
  questionText: "Is the function $f(x) = \frac{1}{x}$ continuous at $x = 1$?",
  answerOptions: ("Yes, $f(x)$ is continuous at $x = 1$, because $\lim_{x \\to 1} \frac{1}{x} = \frac{1}{1} = 1$ and $f(1) = 1$, or an equivalent statement.", "No, $f(x)$ is not continuous at $x = 1$, or the answer is incorrect."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)