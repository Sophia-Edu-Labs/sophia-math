#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composing Functions]
#v(40pt)

#only("1-")[Let's consider the functions:]
#v(20pt)
#only("2-")[- $f(x) = x^2$]
#v(10pt)
#only("3-")[- $g(x) = 3x + 1$]
#v(40pt)

#only("4-")[What is $f(g(x))$? 🤔]

#only("1")[
#voiceover("Let's consider composing two functions.")
]
#only("2")[
#voiceover("We have the function f of x equals x squared,")
]
#only("3")[
#voiceover("and the function g of x equals three x plus one.")
]
#only("4")[
#voiceover("The question is: What is f of g of x?")
]
]#questionDef(
questionText: "Given $f(x) = x^2$ and $g(x) = 3x + 1$, what is $f(g(x))$?",
answerOptions: ("The answer is $f(g(x)) = (3x + 1)^2 = 9x^2 + 6x + 1$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)