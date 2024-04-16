#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[- More complex examples 🧐]
#only("2-")[- $f(x) = x^3$ and $g(x) = x^2$]
#only("3-")[- Interval: $[-1, 1]$]
#only("1")[
#voiceover("Let's explore how to compute the area between two curves for more complex examples.")
]
#only("2")[
#voiceover("Consider the functions f of x equals x cubed and g of x equals x squared.")
]
#only("3")[
#voiceover("We want to find the area between these curves over the interval from negative 1 to 1.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Setting Up the Integral]
#v(40pt)
#only("1-")[$ "Area" = integral_(-1)^1 [f(x) - g(x)] dif x $]
#only("2-")[$ "Area" = integral_(-1)^1 [x^3 - x^2] dif x $]
#only("1")[
#voiceover("To set up the integral, we use the general formula for the area between two curves.")
]
#only("2")[
#voiceover("Plugging in the functions and the interval, we get the integral from negative 1 to 1 of x cubed minus x squared with respect to x.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Evaluating the Integral]
#v(40pt)
#only("1-")[$ "Area" = [x^4/4 - x^3/3]_(-1)^1 $]
#only("2-")[$ "Area" = (1/4 - 1/3) - (-1/4 - (-1)/3) $]
#only("3-")[$ "Area" = 0 $]
#only("1")[
#voiceover("We evaluate the integral using the power rule for integration.")
]
#only("2")[
#voiceover("Plugging in the bounds, we get 1/4 minus 1/3 minus negative 1/4 plus 1/3.")
]
#only("3")[
#voiceover("Simplifying the expression, we find that the area between the curves is 0.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Result]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def f(x):
  return x**3
def g(x):
  return x**2
x = np.linspace(-1, 1, 100)
y1 = f(x)
y2 = g(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x^3')
plt.plot(x, y2, label='g(x) = x^2')
plt.fill_between(x, y1, y2, where=(x >= -1) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(-1.5, 1.5)
plt.ylim(-1.5, 1.5)
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[
#voiceover("Let's visualize the result. The shaded region represents the area between the curves f of x equals x cubed and g of x equals x squared over the interval from negative 1 to 1.")
]
#only("2")[
#voiceover("As we can see, the areas above and below the x-axis cancel each other out, resulting in a net area of 0.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Set up the integral using the general formula]
#only("2-")[- Evaluate the integral using integration techniques]
#only("3-")[- Interpret the result in the context of the problem]
#only("1")[
#voiceover("To find the area between two curves for complex examples, set up the integral using the general formula.")
]
#only("2")[
#voiceover("Evaluate the integral using appropriate integration techniques.")
]
#only("3")[
#voiceover("Finally, interpret the result in the context of the problem, using visualization if necessary.")
]
]