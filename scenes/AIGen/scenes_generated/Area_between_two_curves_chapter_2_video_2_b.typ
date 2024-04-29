#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "en")

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
- $f(x) = 2x$
- $g(x) = x$
- Interval: $[0, 1]$
]
#v(40pt)
#only("2-")[
#text(size: 24pt, weight: "bold")[Step 1: Set up the integral]
]
#v(20pt)
#only("2-")[
$"Area" = integral_a^b [f(x) - g(x)] dif x$
]
#only("1")[#voiceover("No, that wasn't right. To find the area between the curves f of x equals 2x and g of x equals x over the interval 0 to 1, we will follow these steps:")]
#only("2")[#voiceover("First, we set up the integral. The general formula for the area between two curves is the integral from a to b of f of x minus g of x with respect to x.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
- $f(x) = 2x$
- $g(x) = x$
- Interval: $[0, 1]$
]
#v(40pt)
#only("1-")[
#text(size: 24pt, weight: "bold")[Step 2: Substitute the functions and limits]
]
#v(20pt)
#only("2-")[
$"Area" = integral_0^1 [2x - x] dif x$
]
#only("3-")[
$= integral_0^1 [x] dif x$
]
#only("1")[#voiceover("Next, we substitute the given functions and limits into the integral. f of x is 2x, g of x is x, a is 0, and b is 1.")]
#only("2")[#voiceover("This gives us the integral from 0 to 1 of 2x minus x with respect to x.")]
#only("3")[#voiceover("Simplifying the integrand, we get the integral from 0 to 1 of x with respect to x.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[
- $f(x) = 2x$
- $g(x) = x$
- Interval: $[0, 1]$
]
#v(40pt)
#only("1-")[
#text(size: 24pt, weight: "bold")[Step 3: Evaluate the integral]
]
#v(20pt)
#only("2-")[
$"Area" = integral_0^1 [x] dif x$
]
#only("3-")[
$= [x^2/2]_0^1$
]
#only("4-")[
$= (1^2/2) - (0^2/2)$
]
#only("5-")[
$= 1/2$
]
#only("1")[#voiceover("Now, we evaluate the integral using the power rule. The integral of x with respect to x is x squared over 2.")]
#only("2")[#voiceover("So, we have x squared over 2 evaluated from 0 to 1.")]
#only("3")[#voiceover("Plugging in the limits, we get 1 squared over 2 minus 0 squared over 2.")]
#only("4")[#voiceover("Simplifying, we arrive at the final answer:")]
#only("5")[#voiceover("The area between the curves f of x equals 2x and g of x equals x over the interval 0 to 1 is 1/2 square units. 📐")]
]
