#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
// The title "Evaluating Power Functions" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Let's evaluate the power function f of x equals x to the power of 5 at x equals 1.")
]
#only("2-")[
Calculate $ f(x) = x^5 $ at $ x = 1 $
]
// The mathematical expression to calculate is shown from slide 2 onward
#only("2")[
#voiceover("Calculate the value of the function f of x equals x to the power of 5 at x equals 1.")
]
]

//Type: Numeric
#questionDef(
questionText: "Evaluate $f(x) = x^5$ at $x = 1$.", 
answerOptions: ("$f(1) = 1$", "$f(1) = 2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)