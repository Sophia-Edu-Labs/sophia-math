#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative Question 📈]
#v(40pt)
#only("1-")[
Find the derivative of the following function:
]
#v(20pt)
#only("2-")[
$f(x) = x^5$
]
#only("1")[
#voiceover("Here's a question for you:")
]
#only("2")[
#voiceover("Find the derivative of the function f of x equals x to the power of 5.")
]
]#questionDef(
questionText: "What is the derivative of the function $f(x) = x^5$?",
answerOptions: ("$f'(x) = 5x^4$", "$f'(x) = x^4$"),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)