#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step to understand how to arrive at the answer.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("2-")[#text()[$ x^2 - 4x + 4 = 0 $]]

#only("2")[
#voiceover("We start with the quadratic equation x squared minus four x plus four equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Quadratic]

#v(40pt)

#only("1-")[- General form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Our equation: $x^2 - 4x + 4 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -4$, $c = 4$]

#only("1")[
#voiceover("First, let's identify our quadratic. The general form of a quadratic equation is a x squared plus b x plus c equals zero.")
]

#only("2")[
#voiceover("In our case, we have x squared minus four x plus four equals zero.")
]

#only("3")[
#voiceover("So, a equals one, b equals negative four, and c equals four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Factor the Quadratic]

#v(40pt)

#only("1-")[$ x^2 - 4x + 4 = 0 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Factor]]]
#v(20pt)
#only("3-")[$ (x - 2)(x - 2) = 0 $]

#only("1")[
#voiceover("Now, let's factor the quadratic. We start with x squared minus four x plus four equals zero.")
]

#only("2")[
#voiceover("To factor this, we need to find two numbers that multiply to give four and add to give negative four. The only possibility is negative two and negative two.")
]

#only("3")[
#voiceover("So, our factored equation is x minus two times x minus two equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Solve the Factored Equation]

#v(40pt)

#only("1-")[$ (x - 2)(x - 2) = 0 $]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Zero Product Property]]]
#v(20pt)
#only("3-")[$ x - 2 = 0 $]
#v(20pt)
#only("4-")[$ x = 2 $]

#only("1")[
#voiceover("Now that we've factored the equation, we can solve it using the zero product property.")
]

#only("2")[
#voiceover("The zero product property states that if the product of factors is zero, then one of the factors must be zero.")
]

#only("3")[
#voiceover("In this case, we have x minus two equals zero.")
]

#only("4")[
#voiceover("Solving this, we get x equals two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The solution is $x = 2$]
#v(20pt)
#only("2-")[This is a double root 🌱🌱]

#only("1")[
#voiceover("So, our final answer is x equals two.")
]

#only("2")[
#voiceover("Note that this is a double root, which means the parabola of this quadratic equation touches the x-axis at exactly one point.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 5, 100)
y = x**2 - 4*x + 4

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='y = x² - 4x + 4')
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=2, color='g', linestyle='--')
plt.plot(2, 0, 'ro', markersize=10)
plt.text(2.1, 0.5, '(2, 0)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of x² - 4x + 4 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization of our quadratic equation. As you can see, the parabola touches the x-axis at exactly one point, x equals two. This confirms our solution and illustrates why it's called a double root.")
]
]