#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertibility and Inverses]
#v(40pt)
#only("1-")[
Consider the function:
#v(20pt)
$f(x) = 3x + 2$
]
#only("2-")[
#v(40pt)
- Is $f(x)$ invertible? 🤔
]
#only("3-")[
#v(40pt)  
- If so, what is its inverse $f^(-1)(x)$? 🔍
]

#only("1")[
#voiceover("Consider the function f of x equals three x plus two.")
]
#only("2")[
#voiceover("Is this function invertible?")
]
#only("3")[  
#voiceover("If it is, what is its inverse function, f inverse of x?")
]
]#questionDef(
questionText: "Is the function $f(x) = 3x + 2$ invertible? If so, what is its inverse $f^{-1}(x)$?",
answerOptions: ("Yes, $f(x)$ is invertible. Its inverse is $f^{-1}(x) = \\frac{x - 2}{3}$, or an equivalent statement.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)