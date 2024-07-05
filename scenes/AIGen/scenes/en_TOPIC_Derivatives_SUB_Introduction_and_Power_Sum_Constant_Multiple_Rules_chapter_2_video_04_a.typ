#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative of Sum]
#v(40pt)

#only("1-")[
$f(x) = x^3 + x^2$
]

#v(20pt)

#only("2-")[
$f'(x) = (x^3 + x^2)'$
]

#v(20pt)

#only("3-")[
$f'(x) = (x^3)' + (x^2)'$
]

#v(20pt)

#only("4-")[
$f'(x) = 3x^2 + 2x$
]

#v(20pt)

#only("5-")[
$f'(2) = 3(2)^2 + 2(2) = 12 + 4 = 16$
]

#only("1")[
#voiceover("Great job! That's correct. Let's walk through the solution step by step. We start with our function f of x equals x cubed plus x squared.")
]

#only("2")[
#voiceover("To find the derivative, we apply the sum rule. This rule states that the derivative of a sum is the sum of the derivatives.")
]

#only("3")[
#voiceover("So, we can separate the terms and find the derivative of each independently.")
]

#only("4")[
#voiceover("The derivative of x cubed is 3 x squared, and the derivative of x squared is 2x. Adding these together, we get f prime of x equals 3 x squared plus 2x.")
]

#only("5")[
#voiceover("Finally, we need to evaluate this at x equals 2. Plugging in 2, we get 3 times 2 squared, which is 12, plus 2 times 2, which is 4. 12 plus 4 equals 16, which is our final answer.")
]
]