#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("1-")[
    Differentiate $f(x) = (2x + 3)^4$ using the chain rule and find $f'(1)$
  ]

  #only("1")[
    #voiceover("Let's practice applying the chain rule. We need to differentiate the function f of x equals two x plus three, all raised to the fourth power. Then, we'll evaluate the derivative at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = (2x + 3)^4$ using the chain rule and find $f'(1)$. ", 
answerOptions: ("$f'(x) = 8(2x + 3)^3$ and $f'(1) = 512$", "$f'(x) = -12(2x + 3)^-2$ and $f'(1) = -1020$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$f'(x) = \key{a}(2x + 3)^\key{b}$ and $f'(1) = \key{c}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
) 
), 
)