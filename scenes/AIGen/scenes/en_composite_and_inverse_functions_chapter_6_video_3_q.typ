#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Function]
#v(40pt)
#only("1-")[Given: $f(x) = x^3$]
#v(40pt)
#only("2-")[Find the domain and range of $f^{-1}(x)$.]
#only("1")[
#voiceover("Consider the function f of x equals x cubed.")
]
#only("2")[
#voiceover("What are the domain and range of its inverse function, f inverse of x?")
]
]#questionDef(
questionText: "What are the domain and range of the inverse function $f^{-1}(x)$ for $f(x) = x^3$?",
answerOptions: ("Domain: all real numbers, Range: all real numbers", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)