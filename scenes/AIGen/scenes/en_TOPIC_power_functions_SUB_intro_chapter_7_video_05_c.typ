#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior of Power Functions]
#v(40pt)
#only("1-")[Which of the following describes the behavior of $f(x) = x^4$ as $x$ approaches infinity and negative infinity?]
#v(20pt)
#only("-1")[a) Approaches 0]#only("2-")[#text(fill:red)[a) Approaches 0]]
#v(10pt)
#only("-2")[b) Grows exponentially]#only("3-")[#text(fill:red)[b) Grows exponentially]]
#v(10pt)
#only("-3")[c) Decreases without bound]#only("4-")[#text(fill:red)[c) Decreases without bound]]
#v(10pt)
#only("-4")[d) Increases without bound]#only("5-")[#text(fill:green)[d) Increases without bound]]

#only("1")[#voiceover("Not quite. Let's review the correct behavior of the function f of x equals x to the fourth power and examine each option.")]
#only("2")[#voiceover("Option a, 'Approaches 0', is incorrect. As x gets very large in either the positive or negative direction, x to the fourth power will also become very large, not approach zero.")]
#only("3")[#voiceover("Option b, 'Grows exponentially', is not accurate. While the function does grow rapidly, it's not exponential growth. It's polynomial growth, which is different from exponential growth.")]
#only("4")[#voiceover("Option c, 'Decreases without bound', is incorrect. This function actually increases for both very large positive and very large negative x values.")]
#only("5")[#voiceover("Option d, 'Increases without bound', is correct. As x approaches either positive or negative infinity, x to the fourth power will increase without bound.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Analyzing $f(x) = x^4$]
#v(40pt)
#only("1-")[Properties of $f(x) = x^4$:]
#v(20pt)
#only("2-")[- Even function 🔄]
#v(10pt)
#only("3-")[- Symmetric about y-axis 📏]
#v(10pt)
#only("4-")[- Passes through (0,0), (1,1), and (-1,1) 📍]

#only("1")[#voiceover("Let's analyze the function f of x equals x to the fourth power to understand its behavior better.")]
#only("2")[#voiceover("First, it's an even function. This means f of x equals f of negative x for all x.")]
#only("3")[#voiceover("As a result, it's symmetric about the y-axis. The graph looks the same on both sides of the y-axis.")]
#only("4")[#voiceover("The function passes through the points (0,0), (1,1), and (-1,1). This helps us visualize its shape near the origin.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
y = x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x^4')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = x^4')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a graph of f of x equals x to the fourth power. Notice how the function curves upward on both sides of the y-axis.")]
#only("2")[#voiceover("As x moves away from zero in either direction, y increases very rapidly. This illustrates why the function increases without bound as x approaches either positive or negative infinity.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior as $x$ Approaches Infinity]
#v(40pt)
#only("1-")[As $x arrow infinity$:]
#v(20pt)
#only("2-")[- $x^4$ becomes very large positive 📈]
#v(20pt)
#only("3-")[As $x arrow -infinity$:]
#v(20pt)
#only("4-")[- $x^4$ also becomes very large positive 📈]

#only("1")[#voiceover("Let's examine the behavior of the function as x approaches infinity.")]
#only("2")[#voiceover("As x approaches positive infinity, x to the fourth power becomes very large and positive. This is because any large positive number raised to the fourth power is an even larger positive number.")]
#only("3")[#voiceover("Now, let's consider what happens as x approaches negative infinity.")]
#only("4")[#voiceover("Interestingly, as x approaches negative infinity, x to the fourth power also becomes very large and positive. This is because any negative number raised to an even power becomes positive, and the larger the negative number, the larger the result when raised to the fourth power.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $f(x) = x^4$ increases without bound as $x arrow infinity$ or $x arrow -infinity$ 🚀]
#v(20pt)
#only("2-")[- This behavior is characteristic of even-powered functions 🔢]
#v(20pt)
#only("3-")[- Understanding this helps in analyzing more complex functions 🧠]

#only("1")[#voiceover("In conclusion, f of x equals x to the fourth power increases without bound as x approaches either positive or negative infinity.")]
#only("2")[#voiceover("This behavior is characteristic of functions with even powers. All functions of the form x to the 2n power, where n is a positive integer, will behave this way.")]
#only("3")[#voiceover("Understanding this behavior is crucial when analyzing more complex functions or solving real-world problems involving rapid growth. Great job on recognizing this important property!")]
]