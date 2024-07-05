#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
#v(40pt)

#only("1-")[
$f(x) = 6x^5$
]

#v(20pt)

#only("2-")[
$f'(x) = 6 dot 5 dot x^(5-1)$
]

#v(20pt)

#only("3-")[
$f'(x) = 30x^4$
]

#only("1")[
#voiceover("Great job! You've correctly applied the power rule for derivatives. Let's break down the solution step by step.")
]

#only("2")[
#voiceover("We start with the function f of x equals 6 x to the fifth power. To find the derivative, we apply the power rule. This rule states that when we differentiate x to the n-th power, we multiply by the exponent and reduce the power by 1. So, we multiply 6 by 5, and reduce the exponent of x from 5 to 4.")
]

#only("3")[
#voiceover("Simplifying this, we get the final result: f prime of x equals 30 x to the fourth power. This is indeed the correct derivative of our original function.")
]

#only("4")[
#voiceover("Remember, the power rule is a fundamental tool in calculus, allowing us to quickly differentiate polynomial functions. Practice using this rule with various exponents to become more comfortable with it.")
]
]