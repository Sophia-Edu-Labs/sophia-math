#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's evaluate a power function at a specific value.")
]
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
// The title "Evaluating Power Functions" is shown on this slide
#v(40pt)
#only("2-")[
Evaluate $ f(x) = x^5 $ at $ x = 1 $
]
// The mathematical expression to evaluate is shown from slide 2 onward
#only("2")[
#voiceover("Evaluate f of x equals x to the power of 5 at x equals 1.")
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
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$f(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)