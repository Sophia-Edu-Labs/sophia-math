#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Constant Multiple Rule]
#v(40pt)

#only("1-")[
$f(x) = 6x^4$
]

#v(20pt)

#only("2-")[
$f'(x) = 6 dot 4x^3 = 24x^3$
]

#v(20pt)

#only("3-")[
$f'(1) = 24 dot 1^3 = 24$
]

#only("1")[
#voiceover("Great job! You've got the correct answer. Let's walk through the solution step-by-step. We start with our function f of x equals 6 x to the fourth power.")
]

#only("2")[
#voiceover("To find the derivative, we apply the constant multiple rule. The derivative of x to the fourth is 4 x cubed, and we multiply this by the constant 6. So, f prime of x equals 6 times 4 x cubed, which simplifies to 24 x cubed.")
]

#only("3")[
#voiceover("Now, we need to evaluate this at x equals 1. Plugging in 1 for x, we get 24 times 1 cubed. Since 1 cubed is just 1, our final answer is 24.")
]

#only("4")[
#voiceover("And there you have it! The value of the derivative of f of x equals 6 x to the fourth power at x equals 1 is 24. Well done on solving this problem!")
]
]