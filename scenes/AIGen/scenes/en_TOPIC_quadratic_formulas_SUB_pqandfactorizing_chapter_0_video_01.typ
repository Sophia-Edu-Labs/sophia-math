#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Quadratic Equations]
#v(20pt)
#only("1-")[- 📐 Equations with $x^2$ as highest power]
#v(20pt)
#only("2-")[- 🧮 General form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("3-")[- 🔑 Key components: $a$, $b$, and $c$]
#v(20pt)
#only("4-")[- 📈 Represents parabolas graphically]

#only("1")[
#voiceover("Welcome to our introduction to quadratic equations! Imagine you're designing a rocket's trajectory or calculating the area of a circular garden. In these scenarios, you might encounter equations where the variable is squared. These are quadratic equations, and they're incredibly useful in many real-world applications.")
]

#only("2")[
#voiceover("Quadratic equations always have x squared as their highest power. They follow a general form: a x squared plus b x plus c equals zero. Here, x is our variable, and a, b, and c are constants.")
]

#only("3")[
#voiceover("Let's break down these components. 'a' is the coefficient of x squared and cannot be zero. 'b' is the coefficient of x, and 'c' is the constant term. These three values determine the behavior of our quadratic equation.")
]

#only("4")[
#voiceover("When we graph quadratic equations, they form a special curved shape called a parabola. This shape is crucial in understanding the solutions and behavior of quadratic equations.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Examples of Quadratic Equations]
#v(20pt)
#only("1-")[- Simple: $x^2 - 4 = 0$]
#v(20pt)
#only("2-")[- Standard: $2x^2 - 5x + 2 = 0$]
#v(20pt)
#only("3-")[- Complex: $-3x^2 + 7x - 1 = 0$]
#v(20pt)
#only("4-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**2 - 4
y2 = 2*x**2 - 5*x + 2
y3 = -3*x**2 + 7*x - 1

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$x^2 - 4$')
plt.plot(x, y2, label='$2x^2 - 5x + 2$')
plt.plot(x, y3, label='$-3x^2 + 7x - 1$')

plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graphical Representation of Quadratic Equations')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]]

#only("1")[
#voiceover("Let's look at some examples of quadratic equations. Our first example is a simple one: x squared minus 4 equals zero. Here, a is 1, b is 0, and c is negative 4.")
]

#only("2")[
#voiceover("A more standard form is 2 x squared minus 5 x plus 2 equals zero. In this case, a is 2, b is negative 5, and c is 2.")
]

#only("3")[
#voiceover("We can also have more complex forms like negative 3 x squared plus 7 x minus 1 equals zero. Here, a is negative 3, b is 7, and c is negative 1.")
]

#only("4")[
#voiceover("Let's visualize these equations. The graph shows the parabolas formed by our three example equations. Notice how they all have different shapes and positions based on their a, b, and c values. The points where these curves cross the x-axis are the solutions to the equations.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(20pt)
#only("1-")[- 📚 Quadratic equations: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- 🔢 Highest power of $x$ is 2]
#v(20pt)
#only("3-")[- 📊 Graphically represented as parabolas]
#v(20pt)
#only("4-")[- 🌟 Essential in many real-world applications]

#only("1")[
#voiceover("To summarize, quadratic equations are algebraic equations in the form a x squared plus b x plus c equals zero.")
]

#only("2")[
#voiceover("They are called 'quadratic' because the highest power of the variable x is 2.")
]

#only("3")[
#voiceover("When graphed, these equations form parabolas, which can open upward or downward depending on the sign of a.")
]

#only("4")[
#voiceover("Understanding quadratic equations is crucial as they appear in many real-world scenarios, from physics to economics. In our next lessons, we'll dive deeper into solving these equations and exploring their properties. Stay curious!")
]
]