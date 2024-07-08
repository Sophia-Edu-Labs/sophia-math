#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Evaluation]
#v(40pt)

#only("1-")[Consider the power function $f(x) = 7x^2$]
#v(20pt)

#only("2-")[Find the value of $f(3)$]

#only("1")[
#voiceover("Let's practice evaluating a power function. Consider the function f of x equals seven times x squared.")
]

#only("2")[
#voiceover("Your task is to find the value of f of 3. In other words, what is the output when we input 3 into this function?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(3)$ for the power function $f(x) = 7x^2$?", 
answerOptions: ("$f(3) = 63$", "$f(3) = -122$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(3) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)