#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertible Functions]
#v(40pt)
#only("1-")[- Functions that have an inverse]
#v(20pt)
#only("2-")[- Conditions: one-to-one and onto]
#only("1")[
#voiceover("Invertible functions are functions that have an inverse. In other words, for every output value, there is a unique input value.")
]
#only("2")[
#voiceover("For a function to be invertible, it must satisfy two conditions: it must be one-to-one and onto.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[One-to-One Functions]
#v(40pt)
#only("1-")[- Each output has a unique input]
#v(20pt)
#only("2-")[- Example: $f(x) = x^2$ is not one-to-one]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('f(x) = x^2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("A function is one-to-one if each output value corresponds to a unique input value.")
]
#only("2")[
#voiceover("For example, the function $f(x) = x^2$ is not one-to-one because both $1$ and $-1$ map to the same output value of $1$.")
]
#only("3")[
#voiceover("We can see this graphically. The function fails the horizontal line test: a horizontal line intersects the graph at more than one point.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Onto Functions]
#v(40pt)
#only("1-")[- Every output value is "hit"]
#v(20pt)
#only("2-")[- Example: $f(x) = x^2$ is not onto]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('f(x) = x^2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.ylim(-1, 5)  # Adjust y-axis limits to show negative values
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("A function is onto if every possible output value is 'hit' by at least one input value.")
]
#only("2")[
#voiceover("Again, $f(x) = x^2$ is not onto because no real input maps to a negative output.")
]
#only("3")[
#voiceover("We can see this in the graph. The function's range does not cover all possible y-values.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Invertible Function Example]
#v(40pt)
#only("1-")[- $f(x) = 2x + 1$ is invertible]
#v(20pt)
#only("2-")[- One-to-one: Each output has a unique input]
#v(20pt)
#only("3-")[- Onto: Every real number is an output]
#v(20pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = 2*x + 1

plt.figure(figsize=(6, 6))
plt.plot(x, y)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('f(x) = 2x + 1')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an invertible function, $f(x) = 2x + 1$.")
]
#only("2")[
#voiceover("It's one-to-one: each output value corresponds to a unique input value.")
]
#only("3")[
#voiceover("It's also onto: for any real number y, there's a real number x such that $f(x) = y$.")
]
#only("4")[
#voiceover("We can see this in the graph. The function passes the horizontal line test and its range covers all real numbers.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Invertible functions have a unique inverse]
#v(20pt)
#only("2-")[- Conditions: one-to-one and onto]
#v(20pt)
#only("3-")[- One-to-one: Each output has a unique input]
#v(20pt)
#only("4-")[- Onto: Every possible output is "hit"]
#only("1")[
#voiceover("In summary, invertible functions are those that have a unique inverse function.")
]
#only("2")[
#voiceover("For a function to be invertible, it must be both one-to-one and onto.")
]
#only("3")[
#voiceover("One-to-one means that each output value corresponds to a unique input value.")
]
#only("4")[
#voiceover("Onto means that every possible output value is 'hit' by at least one input value.")
]
]