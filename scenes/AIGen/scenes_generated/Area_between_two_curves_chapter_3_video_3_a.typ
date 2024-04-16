#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
#voiceover("Great! Let's solve this step by step.")
]
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("2-")[
- Given curves: $f(x) = sin(x)$ and $g(x) = cos(x)$
- Interval: $[0, pi/4]$
]
#only("2")[
#voiceover("We have the curves f of x equals sine of x and g of x equals cosine of x over the interval from 0 to pi over 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]
#v(40pt)
#only("1-")[
$"Area" = integral_a^b [f(x) - g(x)] dif x$, where $f(x) >= g(x)$ on $[a, b]$
]
#only("1")[
#voiceover("To find the area between two curves, we use the formula: the area equals the integral from a to b of f of x minus g of x with respect to x, where f of x is greater than or equal to g of x on the interval from a to b.")
]
#v(10pt)
#only("2-")[
$"Area" = integral_0^(pi/4) [sin(x) - cos(x)] dif x$
]
#only("2")[
#voiceover("In our case, we have the area equals the integral from 0 to pi over 4 of sine of x minus cosine of x with respect to x.")
]
#v(10pt)
#only("3-")[
$= [-cos(x) - sin(x)]_0^(pi/4)$
]
#only("3")[
#voiceover("We can evaluate this integral using the fundamental theorem of calculus. The antiderivative of sine of x is negative cosine of x, and the antiderivative of negative cosine of x is negative sine of x. So we get negative cosine of x minus sine of x, evaluated from 0 to pi over 4.")
]
#v(10pt)
#only("4-")[
$= (-cos(pi/4) - sin(pi/4)) - (-cos(0) - sin(0))$
]
#only("4")[
#voiceover("Plugging in the bounds, we get negative cosine of pi over 4 minus sine of pi over 4, minus negative cosine of 0 minus sine of 0.")
]
#v(10pt)
#only("5-")[
$= (-sqrt(2)/2 - sqrt(2)/2) - (-1 - 0)$
]
#only("5")[
#voiceover("Simplifying, we have negative square root of 2 over 2 minus square root of 2 over 2, minus negative 1 minus 0.")
]
#v(10pt)
#only("6-")[
$= 2 - sqrt(2)$
]
#only("6")[
#voiceover("This simplifies to 2 minus square root of 2. Therefore, the area between the curves sine of x and cosine of x over the interval from 0 to pi over 4 is 2 minus square root of 2.")
]
]

#slide()[
#only("1")[
#voiceover("Let's visualize the solution.")
]
#v(60pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, np.pi/4, 100)
y1 = np.sin(x)
y2 = np.cos(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = sin(x)')
plt.plot(x, y2, label='g(x) = cos(x)')
plt.fill_between(x, y1, y2, where=(y1 >= y2), alpha=0.3, label='Area')
plt.xlim(0, np.pi/4)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]]
#only("2")[
#voiceover("Here again is the graph showing the area we calculated, shaded in blue.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[
The area between the curves $f(x) = sin(x)$ and $g(x) = cos(x)$ over the interval $[0, pi/4]$ is $2 - sqrt(2)$.
]
#only("1")[
#voiceover("In conclusion, the area between the curves f of x equals sine of x and g of x equals cosine of x over the interval from 0 to pi over 4 is 2 minus square root of 2.")
]
]