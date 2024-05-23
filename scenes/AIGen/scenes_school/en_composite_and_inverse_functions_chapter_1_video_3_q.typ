#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Decomposing a Function]
#v(40pt)
#only("1-")[Consider the function $k(x) = sqrt(3x + 2)$]
#v(40pt)
#only("2-")[Decompose $k(x)$ into two functions $f(x)$ and $g(x)$ such that $k(x) = f(g(x))$]
#v(40pt)
#only("3-")[What could be possible choices for $f(x)$ and $g(x)$?]
#only("1")[
#voiceover("Let's consider the function k of x equals square root of 3x plus 2.")
]
#only("2")[
#voiceover("The task is to decompose k of x into two functions f of x and g of x such that k of x equals f of g of x.")
]
#only("3")[
#voiceover("What could be possible choices for f of x and g of x?")
]
]#questionDef(
questionText: "Decompose $k(x) = \sqrt{3x + 2}$ into two functions $f(x)$ and $g(x)$ such that $k(x) = f(g(x))$. What could be possible choices for $f(x)$ and $g(x)$?",
answerOptions: ("One possible choice is $f(x) = \sqrt{x}$ and $g(x) = 3x + 2$.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)