#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the solution step by step to understand the correct answer.")
]

#text(size: 30pt, weight: "bold")[Power Function]

#v(40pt)

#only("2-")[#text()[$ f(x) =  a x^2 $]]
#v(20pt)
#only("3-")[Where $a$ is a constant and $x$ is the variable]

#only("2")[
#voiceover("A power function has the general form f of x equals a times x squared.")
]

#only("3")[
#voiceover("Here, a is a constant coefficient, and x is our variable.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Information]

#v(40pt)

#only("1-")[- Points: (1, 3) and (2, 12)]
#v(20pt)
#only("2-")[- $a = 3$]

#only("1")[
#voiceover("We're given two points that our function passes through: the point one comma three, and the point two comma twelve.")
]

#only("2")[
#voiceover("We're also told that the coefficient a equals three.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Constructing the Function]

#v(40pt)

#only("1-")[$ f(x) = 3x^2 $]

#v(20pt)

#only("2-")[Let's verify:]
#v(10pt)
#only("3-")[For $x = 1$: $ f(1) = 3(1)^2 = 3 $]
#v(10pt)
#only("4-")[For $x = 2$: $ f(2) = 3(2)^2 = 3(4) = 12 $]

#only("1")[
#voiceover("Given that a equals three, we can write our function as f of x equals three x squared.")
]

#only("2")[
#voiceover("Now, let's verify that this function passes through the given points.")
]

#only("3")[
#voiceover("For x equals one, f of one equals three times one squared, which is three. This matches our first point.")
]

#only("4")[
#voiceover("For x equals two, f of two equals three times two squared, which is three times four, equals twelve. This matches our second point.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 3, 100)
y = 3 * x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 3x²')
plt.plot(1, 3, 'ro', label='(1, 3)')
plt.plot(2, 12, 'ro', label='(2, 12)')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Function: f(x) = 3x²')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our power function. The blue curve shows f of x equals three x squared. The red dots represent our given points: one comma three and two comma twelve. As we can see, the function passes through both points.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Power function: $ f(x) = 3x^2 $ 📊]
#v(20pt)
#only("2-")[- Passes through (1, 3) and (2, 12) ✅]
#v(20pt)
#only("3-")[- Coefficient $a = 3$ as given 🔢]

#only("1")[
#voiceover("To summarize, we've found that the power function f of x equals three x squared")
]

#only("2")[
#voiceover("passes through the points one comma three and two comma twelve,")
]

#only("3")[
#voiceover("and has the coefficient a equal to three, as given in the problem. Well done on solving this!")
]
]