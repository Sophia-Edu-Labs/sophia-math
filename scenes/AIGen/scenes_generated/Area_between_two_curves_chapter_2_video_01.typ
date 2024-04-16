#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[- Consider two functions $f(x)$ and $g(x)$]
#v(20pt)
#only("2-")[- Integrate their difference over an interval $[a, b]$]
#v(20pt)
#only("3-")[$ "Area" = integral_a^b [f(x) - g(x)] dif x $]
#only("1")[
#voiceover("To find the area between two curves, we first consider two functions, f of x and g of x.")
]
#only("2")[
#voiceover("We then integrate the difference between these functions over a given interval, from a to b.")
]
#only("3")[
#voiceover("Mathematically, this is expressed as the integral from a to b of f of x minus g of x, with respect to x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1]
#v(40pt)
#only("1-")[Find the area between $f(x) = 2x$ and $g(x) = x$ over $[0, 1]$.]
#v(20pt)
#only("2-")[$ "Area" = integral_0^1 [2x - x] dif x $]
#v(20pt)
#only("3-")[$ = integral_0^1 [x] dif x = [x^2/2]_0^1 = 1/2 $]
#only("1")[
#voiceover("Let's consider a simple example. We want to find the area between the functions f of x equals 2x and g of x equals x, over the interval from 0 to 1.")
]
#only("2")[
#voiceover("We set up the integral as the integral from 0 to 1 of 2x minus x, with respect to x.")
]
#only("3")[
#voiceover("Simplifying, we get the integral from 0 to 1 of x, with respect to x. Evaluating this, we get x squared over 2, evaluated from 0 to 1, which gives us 1/2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2]
#v(40pt)
#only("1-")[Find the area between $f(x) = x^2$ and $g(x) = x$ over $[0, 1]$.]
#v(20pt)
#only("2-")[$ "Area" = integral_0^1 [x^2 - x] dif x $]
#v(20pt)
#only("3-")[$ = [x^3/3 - x^2/2]_0^1 = 1/3 - 1/2 = 1/6 $]
#only("1")[
#voiceover("Now, let's consider another example. We want to find the area between the functions f of x equals x squared and g of x equals x, again over the interval from 0 to 1.")
]
#only("2")[
#voiceover("We set up the integral as the integral from 0 to 1 of x squared minus x, with respect to x.")
]
#only("3")[
#voiceover("Evaluating this, we get x cubed over 3 minus x squared over 2, evaluated from 0 to 1. This gives us 1/3 minus 1/2, which simplifies to 1/6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#only("1")[
#voiceover("Let's visualize the area we just calculated.")
]
#v(60pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, 1, 100)
f = x**2
g = x
plt.figure(figsize=(8, 6))
plt.plot(x, f, label='$f(x) = x^2$')
plt.plot(x, g, label='$g(x) = x$')
plt.fill_between(x, f, g, where=(x >= 0) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(0, 1)
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
#voiceover("Here, the blue curve represents f of x equals x squared, and the orange line represents g of x equals x. The shaded region is the area we calculated, which is 1/6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[- Set up the integral of the difference of the functions]
#v(20pt)
#only("2-")[- Evaluate the integral using the given interval]
#v(20pt)
#only("3-")[- The result is the area between the two curves 📏🌈]
#only("1")[
#voiceover("To recap, when finding the area between two curves, we first set up the integral of the difference of the functions.")
]
#only("2")[
#voiceover("We then evaluate this integral using the given interval.")
]
#only("3")[
#voiceover("The result of this calculation gives us the area between the two curves over that interval.")
]
]