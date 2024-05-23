#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Function for Area]
#v(40pt)
#only("1-")[- Rectangle with length $2x$ and width $x + 3$]
#v(20pt)
#only("2-")[- Area of a rectangle: $A = l * w$]
#v(20pt)
#only("3-")[Create a composite function $A(x)$ to model the area.]
#only("1")[
#voiceover("Consider a rectangle where the length is $2x$ and the width is $x + 3$.")
]
#only("2")[
#voiceover("Recall that the area of a rectangle is given by the formula $A = l * w$, where $l$ is the length and $w$ is the width.")
]
#only("3")[
#voiceover("Your task is to create a composite function $A(x)$ that models the area of this rectangle in terms of $x$.")
]
]#questionDef(
questionText: "Create a composite function $A(x)$ to model the area of a rectangle where the length is $2x$ and the width is $x + 3$.",
answerOptions: ("The composite function is $A(x) = (2x)(x + 3) = 2x^2 + 6x$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)