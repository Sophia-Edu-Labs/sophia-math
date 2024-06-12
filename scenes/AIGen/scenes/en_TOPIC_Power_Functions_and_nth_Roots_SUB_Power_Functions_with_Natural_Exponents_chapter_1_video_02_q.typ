#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's evaluate the power function at a specific point.")
]
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
// The title "Evaluating Power Functions" is shown on this slide
#v(40pt)
#only("2-")[
Evaluate $f(x) = x^3$ at $x = 2$
]
// The mathematical expression to evaluate is shown from slide 2 onward
#only("2")[
#voiceover("Evaluate the function f of x equals x cubed at x equals two.")
]
]

//Type: Numeric
#questionDef(
questionText: "Evaluate $f(x) = x^3$ at $x = 2$.", 
answerOptions: ("$f(2) = 8$", "$f(2) = -12$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)