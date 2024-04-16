#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
To find the area between two curves, which mathematical operation is used?
#v(40pt)
#only("-1")[- Differentiation]#only("2-")[#text(fill:red)[- Differentiation]]
#v(10pt)
#only("-2")[- Integration]#only("3-")[#text(fill:green)[- Integration]]
#v(10pt)
#only("-3")[- Summation]#only("4-")[#text(fill:red)[- Summation]]
#v(10pt)
#only("-4")[- Multiplication]#only("5-")[#text(fill:red)[- Multiplication]]
#only("1")[#voiceover("Let's go through the options one by one.")]
#only("2")[#voiceover("Differentiation is used to find the slope or rate of change of a function, not the area between curves. So this is not the correct answer.")]
#only("3")[#voiceover("Integration, on the other hand, is the mathematical operation used to find the area under a curve or between curves. This is the correct answer!")]
#only("4")[#voiceover("Summation is the process of adding a sequence of numbers. While it can be used in some area calculations, it is not the primary operation for finding the area between curves.")]
#only("5")[#voiceover("Multiplication is used in many mathematical contexts, but not specifically for finding the area between curves.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#text(size: 24pt)[To find the area between two curves:]
#v(20pt)
#only("1-")[1. Set up the integral]
#v(10pt)
#only("2-")[2. Determine the boundaries (limits of integration)]
#v(10pt)
#only("3-")[3. Integrate the difference of the functions]
#v(40pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def f(x):
  return x**2
def g(x):
  return x
x = np.linspace(0, 1, 100)
y1 = f(x)
y2 = g(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x)')
plt.plot(x, y2, label='g(x)')
plt.fill_between(x, y1, y2, where=(x >= 0) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(0, 1)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("To find the area between two curves, we first set up the integral.")]
#only("2")[#voiceover("Then, we determine the boundaries of the area, which will be the limits of integration.")]
#only("3")[#voiceover("Finally, we integrate the difference of the functions, with the upper function minus the lower function.")]
#only("4")[#voiceover("For example, consider the area between the curves $f(x)=x^2$ and $g(x)=x$ over the interval $[0,1]$. The integral would be set up as $integral_0^1 [f(x)-g(x)] dif x$, which simplifies to $integral_0^1 [x^2-x] dif x$.")]
]