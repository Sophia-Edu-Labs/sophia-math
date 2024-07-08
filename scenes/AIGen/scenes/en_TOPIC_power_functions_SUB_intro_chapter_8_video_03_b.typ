#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Power Functions]

#v(40pt)

#only("1-")[$ f(x) = 25x^(-1) $]

#v(20pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(20pt)

#only("3-")[$ f(x) = 25 / x $]

#only("1")[
#voiceover("That's okay! Let's review the correct solution step by step. We start with the function f of x equals twenty-five times x to the power of negative one.")
]

#only("2")[
#voiceover("Now, let's simplify this expression. Remember, when we have a negative exponent, we can rewrite it as a fraction.")
]

#only("3")[
#voiceover("So, x to the power of negative one becomes one over x. This gives us our simplified form: f of x equals twenty-five divided by x.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Negative Exponents]

#v(40pt)

#only("1-")[$ x^(-n) = 1 / x^n $]

#v(20pt)

#only("2-")[Example: $ x^(-2) = 1 / x^2 $]

#only("1")[
#voiceover("To understand this better, let's recall the rule for negative exponents. Any variable x raised to the power of negative n is equal to one divided by x raised to the positive n.")
]

#only("2")[
#voiceover("For example, x to the power of negative two is equal to one divided by x squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Applying the Rule]

#v(40pt)

#only("1-")[$ f(x) = 25x^(-1) $]

#v(20pt)

#only("2-")[$ = 25 · (1 / x^1) $]

#v(20pt)

#only("3-")[$ = 25 / x $]

#only("1")[
#voiceover("Now, let's apply this rule to our original function. We start with f of x equals twenty-five times x to the power of negative one.")
]

#only("2")[
#voiceover("Using our rule, we can rewrite this as twenty-five times one over x to the first power.")
]

#only("3")[
#voiceover("This simplifies to twenty-five divided by x, which is our final answer.")
]
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

x = np.linspace(0.1, 10, 1000)
y = 25 / x

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 25/x')
plt.title('Graph of f(x) = 25/x')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
caption: [Graph of $f(x) = 25/x$]
)
]
]

#only("1")[
#voiceover("Here's a graphical representation of our function f of x equals twenty-five divided by x. Notice how it's a hyperbola, approaching but never touching the x and y axes. This is characteristic of reciprocal functions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Negative exponents can be rewritten as fractions 📝]

#v(20pt)

#only("2-")[- $ x^(-n) = 1 / x^n $ is a fundamental rule 🧮]

#v(20pt)

#only("3-")[- Simplifying often makes functions easier to understand and work with 🔍]

#only("1")[
#voiceover("Let's recap what we've learned. First, negative exponents can always be rewritten as fractions.")
]

#only("2")[
#voiceover("The rule x to the power of negative n equals one over x to the power of n is fundamental in simplifying expressions like these.")
]

#only("3")[
#voiceover("Finally, simplifying functions often makes them easier to understand and work with. Great job on mastering this concept!")
]
]