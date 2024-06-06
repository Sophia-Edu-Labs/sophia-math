#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with Rational Exponents 🧮]

#v(40pt)

#only("1-")[- Isolate the term with the exponent 🎯]
#only("2-")[- Raise both sides to the reciprocal of the exponent ⬆]

#v(40pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = x**(2/3)

plt.figure(figsize=(6, 4))
plt.plot(x, y, linewidth=2, label="$y = x^{2/3}$")
plt.xlabel("x")
plt.ylabel("y")
plt.grid(True)
plt.legend(fontsize=12)
plt.title("Graph of $y = x^{2/3}$")
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("To solve equations with rational exponents, the first step is to isolate the term with the exponent on one side of the equation.")
]

#only("2")[
#voiceover("Once isolated, we raise both sides of the equation to the reciprocal of the exponent. This effectively cancels out the rational exponent, allowing us to solve for the variable.")
]

#only("3")[
#voiceover("For example, consider the equation y equals x to the power of two-thirds. To solve for x, we would raise both sides to the power of three-halves, the reciprocal of two-thirds. This would give us x equals y to the power of three-halves.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Solving $x^{1/2} = 4$ 🌟]

#v(40pt)

#only("1-")[Step 1: The term with the exponent, $x^{1/2}$, is already isolated.]

#v(20pt)

#only("2-")[Step 2: Raise both sides to the reciprocal of the exponent (1/2):]
#only("2-")[$ (x^{1/2})^2 = 4^2 $]

#v(20pt)

#only("3-")[Step 3: Simplify:]
#only("3-")[$ x = 16 $]

#only("1")[
#voiceover("Let's solve the equation x to the power of one-half equals four. In this case, the term with the exponent is already isolated on the left side.")
]

#only("2")[
#voiceover("We raise both sides to the power of two, which is the reciprocal of one-half. This gives us x to the power of one-half, all squared, equals four squared.")
]

#only("3")[
#voiceover("Simplifying, we have x equals sixteen. So, the solution to the equation x to the power of one-half equals four is x equals sixteen.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]

#v(40pt)

#only("1-")[1. Isolate the term with the rational exponent 🎯]
#only("2-")[2. Raise both sides to the reciprocal of the exponent ⬆]
#only("3-")[3. Simplify the equation to solve for the variable ✨]

#only("1")[
#voiceover("To recap, when solving equations with rational exponents, first isolate the term with the rational exponent on one side of the equation.")
]

#only("2")[
#voiceover("Then, raise both sides of the equation to the reciprocal of the exponent. This will eliminate the rational exponent.")
]

#only("3")[
#voiceover("Finally, simplify the equation to solve for the variable. With these steps, you can confidently tackle equations involving rational exponents! 🌟")
]

]