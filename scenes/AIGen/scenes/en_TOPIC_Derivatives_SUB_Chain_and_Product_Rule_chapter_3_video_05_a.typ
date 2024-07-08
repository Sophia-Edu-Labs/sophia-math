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
$f(x) = (x^2 + 1)^3$
]

#v(20pt)

#only("2-")[
Let $u = x^2 + 1$
]

#v(20pt)

#only("3-")[
Then $f(x) = u^3$
]

#v(20pt)

#only("4-")[
$f'(x) = 3u^2 dot dif u/dif x$
]

#v(20pt)

#only("5-")[
$dif u/dif x = 2x$
]

#v(20pt)

#only("6-")[
$f'(x) = 3(x^2 + 1)^2 dot (2x)$
]

#v(20pt)

#only("7-")[
$f'(0) = 3(0^2 + 1)^2 dot (2 dot 0) = 3 dot 1^2 dot 0 = 0$
]

#only("1")[
#voiceover("Great job on solving this problem! Let's go through the solution step by step. We start with the function f of x equals x squared plus 1, all cubed.")
]

#only("2")[
#voiceover("To apply the chain rule, we first identify the outer and inner functions. Let's set u equal to x squared plus 1.")
]

#only("3")[
#voiceover("This allows us to rewrite our function as f of x equals u cubed.")
]

#only("4")[
#voiceover("Now, we can apply the chain rule. The derivative of f with respect to x equals 3 u squared, times the derivative of u with respect to x.")
]

#only("5")[
#voiceover("The derivative of u with respect to x is simply 2x.")
]

#only("6")[
#voiceover("Substituting back u equals x squared plus 1, and the derivative of u, we get: f prime of x equals 3 times x squared plus 1 squared, times 2x.")
]

#only("7")[
#voiceover("Finally, to find f prime of 0, we simply substitute x with 0. This gives us 3 times 0 squared plus 1 squared, times 2 times 0, which simplifies to 3 times 1 squared times 0, which equals 0.")
]
]