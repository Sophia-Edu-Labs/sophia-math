#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[- Consider the linear system:]
#v(20pt)
#only("2-")[  $x + y = 2$]
#v(10pt)
#only("3-")[  $2x - y = 3$]
#v(40pt)
#only("4-")[Represent this system as a matrix equation 🧮]

#only("1")[
#voiceover("Let's consider the following linear system of equations:")
]
#only("2")[
#voiceover("x plus y equals 2,")
]
#only("3")[
#voiceover("and 2x minus y equals 3.")
]
#only("4")[
#voiceover("Your task is to represent this system as a matrix equation.")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Represent the linear system $x + y = 2$, $2x - y = 3$ as a matrix equation.",
answerOptions: ("The matrix equation is $mat(1, 1; 2, -1) mat(x; y) = mat(2; 3)$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)