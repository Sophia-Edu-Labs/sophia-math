#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves Recap]
#v(40pt)
#only("1-")[- Set up the integral]
#only("2-")[- Consider boundaries and order of functions]
#only("3-")[- Evaluate using integration techniques]
#only("1")[
#voiceover("To compute the area between two curves for more complex examples, the first step is to carefully set up the integral.")
]
#only("2")[
#voiceover("When setting up the integral, it's crucial to consider the boundaries and the order of the functions. Make sure to determine the correct limits of integration and ensure that the upper function is subtracted from the lower function.")
]
#only("3")[
#voiceover("Once the integral is set up, evaluate it using appropriate integration techniques, such as substitution, integration by parts, or trigonometric substitution, depending on the complexity of the functions involved.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Find the area between the curves $f(x) = sin(x)$ and $g(x) = cos(x)$ over the interval $[0, pi/4]$.]
#only("2-")[
$"Area" = integral_0^(pi/4) [sin(x) - cos(x)] dif x$
]
#only("3-")[
$= [-cos(x) - sin(x)]_0^(pi/4)$
]
#only("4-")[
$= (-sqrt(2)/2 - sqrt(2)/2) - (-1 - 0)$
]
#only("5-")[
$= 2 - sqrt(2)$
]
#only("1")[
#voiceover("Let's consider an example. Find the area between the curves f of x equals sine of x and g of x equals cosine of x over the interval from 0 to pi over 4.")
]
#only("2")[
#voiceover("We set up the integral by subtracting cosine of x from sine of x and integrating from 0 to pi over 4.")
]
#only("3")[
#voiceover("Evaluating the integral, we get negative cosine of x minus sine of x, evaluated from 0 to pi over 4.")
]
#only("4")[
#voiceover("Plugging in the bounds, we have negative square root of 2 over 2 minus square root of 2 over 2, minus negative 1 minus 0.")
]
#only("5")[
#voiceover("Simplifying, we get 2 minus square root of 2 as the area between the curves.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#only("1")[
#voiceover("Let's visualize this example.")
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
]
]
#only("2")[
#voiceover("The blue curve represents f of x equals sine of x, and the orange curve represents g of x equals cosine of x. The shaded region is the area we calculated, bounded by the two curves and the interval from 0 to pi over 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Set up the integral carefully]
#only("2-")[- Consider boundaries and function order]
#only("3-")[- Evaluate using integration techniques]
#only("4-")[- Interpret the result in context]
#only("1")[
#voiceover("In summary, when computing the area between two curves for complex examples, it's essential to set up the integral carefully.")
]
#only("2")[
#voiceover("Pay close attention to the boundaries and the order of the functions to ensure the correct setup.")
]
#only("3")[
#voiceover("Evaluate the integral using appropriate integration techniques based on the complexity of the functions.")
]
#only("4")[
#voiceover("Finally, interpret the result in the context of the problem, understanding that the calculated value represents the area between the two curves over the given interval.")
]
]