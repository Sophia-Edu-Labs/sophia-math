#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("-1")[
$"Area" = integral_0^1 [x^2 - x] dif x$
]
#v(40pt)
#only("2")[
#voiceover("To solve this integral, we can use the power rule for integration. The power rule states that the integral of x to the power of n is equal to x to the power of n plus 1, divided by n plus 1, plus a constant C.")
]
#only("3")[
#voiceover("Let's apply this rule to our integral. For the first term, x squared, n equals 2. So the integral of x squared is x cubed divided by 3.")
]
#only("4")[
#voiceover("For the second term, x, n equals 1. So the integral of x is x squared divided by 2.")
]
#only("5")[
#voiceover("Putting this together, we get:")
]
#only("6-")[
$= [x^3/3 - x^2/2]_0^1$
]
#only("6")[
#voiceover("Now, we need to evaluate this at the limits of integration, 1 and 0, and then subtract.")
]
#only("7")[
#voiceover("When x equals 1, we get 1 cubed divided by 3 minus 1 squared divided by 2, which equals 1 third minus 1 half.")
]
#only("8")[
#voiceover("When x equals 0, we get 0 cubed divided by 3 minus 0 squared divided by 2, which equals 0 minus 0.")
]
#only("9-")[
$= (1/3 - 1/2) - (0 - 0)$
]
#only("9")[
#voiceover("Simplifying, 1 third minus 1 half equals negative 1 sixth. Subtracting 0 minus 0, which is just 0, we get:")
]
#only("10-")[
$= 1/6$
]
#only("10")[
#voiceover("Therefore, the area between the curves f of x equals x squared and g of x equals x over the interval 0 to 1 is 1 sixth square units. 📏")
]
]