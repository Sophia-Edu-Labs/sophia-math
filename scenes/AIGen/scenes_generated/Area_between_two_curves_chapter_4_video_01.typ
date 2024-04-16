#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[Key Steps: 🔑]
#v(20pt)
#only("2-")[1. Determine the boundaries 🧮]
#v(10pt)
#only("3-")[2. Set up the integral with the appropriate order of functions 📈]
#v(10pt)
#only("4-")[3. Evaluate the integral using integration techniques 🧑‍🔬]
#v(10pt)
#only("5-")[4. Interpret the results 🎯]

#only("1")[
#voiceover("Let's briefly review the key steps and concepts in finding the area between two curves.")
]
#only("2")[
#voiceover("First, determine the boundaries of the region. These are usually the points where the curves intersect or the given limits of the problem.")
]
#only("3")[
#voiceover("Next, set up the integral with the appropriate order of functions. The function on top minus the function on the bottom, integrated with respect to x.")
]
#only("4")[
#voiceover("Then, evaluate the integral using integration techniques like the power rule, substitution, or integration by parts.")
]
#only("5")[
#voiceover("Finally, interpret the results in the context of the problem. The final value represents the area between the two curves over the given interval.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Find the area between the curves $f(x)=x^2$ and $g(x)=x$ over the interval $[0,1]$. 📏]
#v(20pt)
#only("2-")[Step 1: Boundaries are $x=0$ and $x=1$. 🧮]
#v(10pt)
#only("3-")[Step 2: Set up the integral: $integral_0^1 [x^2 - x] dif x$ 📈]
#v(10pt)
#only("4-")[Step 3: Evaluate: $[x^3/3 - x^2/2]_0^1 = 1/6$ 🧑‍🔬]
#v(10pt)
#only("5-")[Step 4: The area between the curves is $1/6$ square units. 🎯]

#only("1")[
#voiceover("Let's look at an example. Find the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1.")
]
#only("2")[
#voiceover("Step 1: The boundaries are x equals 0 and x equals 1.")
]
#only("3")[
#voiceover("Step 2: Set up the integral. It's the integral from 0 to 1 of x squared minus x with respect to x.")
]
#only("4")[
#voiceover("Step 3: Evaluate the integral. Using the power rule and the fundamental theorem of calculus, we get one-sixth.")
]
#only("5")[
#voiceover("Step 4: Interpret the result. The area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1 is one-sixth square units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
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
plt.plot(x, y1, label='$f(x)=x^2$')
plt.plot(x, y2, label='$g(x)=x$')
plt.fill_between(x, y1, y2, where=(x >= 0) & (x <= 1), alpha=0.3, label='Area')
plt.xlim(0, 1)
plt.ylim(0, 1)
plt.grid(True)
plt.legend()
plt.show()
```, width: 360pt),
)
]]]

#only("1")[
#voiceover("Here's a visualization of the area between the curves f of x equals x squared and g of x equals x over the interval from 0 to 1. The shaded region represents the area we calculated, which is one-sixth square units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Determine the boundaries 🧮]
#v(10pt)
#only("2-")[- Set up the integral with the appropriate order of functions 📈]
#v(10pt)
#only("3-")[- Evaluate the integral using integration techniques 🧑‍🔬]
#v(10pt)
#only("4-")[- Interpret the results in context 🎯]

#only("1")[
#voiceover("To recap, when finding the area between two curves, first determine the boundaries.")
]
#only("2")[
#voiceover("Then, set up the integral with the appropriate order of functions.")
]
#only("3")[
#voiceover("Next, evaluate the integral using integration techniques.")
]
#only("4")[
#voiceover("Finally, interpret the results in the context of the problem.")
]
]