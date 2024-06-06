#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Behavior]
#v(40pt)
#only("1-")[Consider the function $f(x) = x^6$.]
// The function is introduced on slide 1 and stays visible
#v(20pt)
#only("2-")[What happens as $x \arrow infinity$? 🤔]
// The question is posed on slide 2 and stays visible
#only("1")[
#voiceover("Consider the power function f of x equals x to the sixth power.")
]
#only("2")[
#voiceover("What happens to the value of this function as x approaches infinity?")
]
]

#questionDef(
questionText: "As $x \arrow infinity$, what happens to $f(x) = x^6$?",
answerOptions: ("$f(x) \arrow infinity$", "$f(x) \arrow 0$", "$f(x)$ oscillates", "$f(x)$ approaches a constant"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
)
)#questionDef(
questionText: "As $x \to \infty$, what happens to $f(x) = x^6$?",
answerOptions: ("$f(x) \to \infty$", "$f(x) \to 0$", "$f(x)$ oscillates", "$f(x)$ approaches a constant"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
)
)