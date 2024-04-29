#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Curves]
#v(40pt)
#only("1-")[
Consider the curves:
- $f(x) = x^3$
- $g(x) = x^2$
]
#v(40pt)
#only("2-")[
Over the interval $[-1, 1]$
]
#v(20pt)
#only("3-")[
$"Area" = integral_(-1)^1 [f(x) - g(x)] dif x$
]
#v(20pt)
#only("4-")[
$= integral_(-1)^1 [x^3 - x^2] dif x$
]
#v(20pt)
#only("5-")[
$= [x^4/4 - x^3/3]_(-1)^1$
]
#v(20pt)
#only("6")[
$= (1/4 - 1/3) - (-1/4 - (-1)/3)$
]
#only("7")[
$= -1/12 - (-1/12)$
]
#only("8-")[
$= 0$
]
#only("1")[#voiceover("That's not quite right. So we have the curves f of x equals x cubed and g of x equals x squared.")]
#only("2")[#voiceover("We want to find the area between these curves over the interval from negative 1 to 1.")]
#only("3")[#voiceover("To find the area, we set up the integral of f of x minus g of x from negative 1 to 1.")]
#only("4")[#voiceover("This simplifies to the integral of x cubed minus x squared from negative 1 to 1.")]
#only("5")[#voiceover("We evaluate the integral, which gives us x to the fourth power over 4 minus x cubed over 3, evaluated from negative 1 to 1.")]
#only("6")[#voiceover("Plugging in the bounds, we get 1/4 minus 1/3 minus the quantity negative 1/4 minus negative 1/3.")]
#only("7")[#voiceover("Simplifying, this becomes negative 1/12 minus negative 1/12.")]
#only("8")[#voiceover("The negatives cancel out, leaving us with an area of 0.")]
]