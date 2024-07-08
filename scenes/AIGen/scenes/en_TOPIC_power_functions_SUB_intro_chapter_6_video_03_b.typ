#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the solution step-by-step to understand the correct form.")
]

#text(size: 30pt, weight: "bold")[Simplifying Power Functions]

#v(40pt)

#only("2-")[#text()[$ f(x) = 16x^(-2) $]]
#v(20pt)
#only("3-")[#text()[$ f(x) = 16 / x^2 $]]

#only("2")[
#voiceover("We start with the function f of x equals sixteen times x to the power of negative two.")
]

#only("3")[
#voiceover("This can be rewritten as sixteen divided by x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Negative Exponents]

#v(40pt)

#only("1-")[- Negative exponent rule: $a^(-n) = 1 / a^n$ 📏]
#v(20pt)
#only("2-")[- Applied to our function: $x^(-2) = 1 / x^2$ 🔄]

#only("1")[
#voiceover("The key to this simplification is understanding negative exponents. The rule states that a to the power of negative n is equal to one divided by a to the power of n.")
]

#only("2")[
#voiceover("Applying this rule to our function, x to the power of negative two becomes one divided by x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Simplification]

#v(40pt)

#only("1-")[$ f(x) = 16x^(-2) $]
#v(20pt)
#only("2-")[$ f(x) = 16 dot (1 / x^2) $]
#v(20pt)
#only("3-")[$ f(x) = 16 / x^2 $]

#only("1")[
#voiceover("Let's go through the simplification step-by-step. We start with f of x equals sixteen times x to the power of negative two.")
]

#only("2")[
#voiceover("Using the negative exponent rule, we rewrite this as sixteen times one divided by x squared.")
]

#only("3")[
#voiceover("This simplifies to sixteen divided by x squared, which is our final answer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Function]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y = 16 / (x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 16 / x²')
plt.title('Graph of f(x) = 16 / x²')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.ylim(0, 20)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization of our simplified function. Notice how the graph approaches infinity as x approaches zero, and approaches zero as x increases. This is characteristic of functions in the form a divided by x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Negative exponents can be rewritten as fractions 🔄]
#v(20pt)
#only("2-")[- $a^(-n) = 1 / a^n$ is a fundamental rule 📏]
#v(20pt)
#only("3-")[- Simplification can make functions easier to understand 🧠]

#only("1")[
#voiceover("Let's summarize what we've learned. First, negative exponents can be rewritten as fractions.")
]

#only("2")[
#voiceover("The rule a to the power of negative n equals one divided by a to the power of n is fundamental in simplifying these types of expressions.")
]

#only("3")[
#voiceover("Finally, simplifying functions like this can make them easier to understand and work with. Great job on mastering this concept!")
]
]