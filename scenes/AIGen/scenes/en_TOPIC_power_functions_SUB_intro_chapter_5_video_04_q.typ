#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Evaluation]
#v(40pt)

#only("1-")[Consider the power function $f(x) = 8 / x^2$]
#v(20pt)

#only("2-")[Calculate $f(1/2)$]

#only("1")[
#voiceover("Let's practice evaluating a power function. Consider the function f of x equals 8 divided by x squared.")
]

#only("2")[
#voiceover("Your task is to calculate f of one-half. In other words, what is the value of this function when x equals one-half?")
]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f\left(\frac{1}{2}\right)$ for the power function $f(x) = \frac{8}{x^2}$?", 
answerOptions: ("$f\left(\frac{1}{2}\right) = 32$", "$f\left(\frac{1}{2}\right) = -60$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f\left(\frac{1}{2}\right) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)