#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Let's recap how to compute the area between two curves for simple examples.")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("2")[
#voiceover("To find the area, we set up an integral and evaluate it using integration techniques.")
]
#only("2-5")[
- Set up the integral
- Evaluate using integration techniques
]
#v(40pt)
#only("3")[
#voiceover("For example, let's find the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1.")
]
#only("3-")[
$f(x) = x^2$

$g(x) = x$

Interval: $[0, 1]$
]
#v(40pt)
#only("4")[
#voiceover("We set up the integral by subtracting g of x from f of x and integrating over the given interval.")
]
#only("4-")[
$"Area" = integral_0^1 [f(x) - g(x)] dif x$

$= integral_0^1 [x^2 - x] dif x$
]
#v(40pt)
#only("5")[
#voiceover("Now, we evaluate the integral using the power rule and the fundamental theorem of calculus.")
]
#only("5-")[
$= [x^3/3 - x^2/2]_0^1$

$= (1/3 - 1/2) - (0 - 0)$

$= 1/6$
]
#v(40pt)
#only("6")[
#voiceover("So, the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1 is one-sixth square units.")
]
#only("6-")[
$->$ Area = $1/6$ square units 📏
]
]