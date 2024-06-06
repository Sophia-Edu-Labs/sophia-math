#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule for Rational Exponents 📊]
#v(40pt)
#only("1-")[
- $(a^(m/n))^p = a^((m p)/n)$ 🧮
]
#only("1")[
#voiceover("The power rule for rational exponents states that a to the power of m over n, all raised to the power of p, equals a to the power of m times p over n.")
]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a grid of points
x = np.linspace(0, 5, 100)

# Compute the functions
y1 = (x**(2/3))**4
y2 = x**(8/3)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label=r'$(x^{2/3})^4$', linewidth=2)
plt.plot(x, y2, '--', label=r'$x^{8/3}$', linewidth=2)
plt.grid(True)
plt.legend(fontsize=14)
plt.title('Power Rule for Rational Exponents', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("This graph illustrates the power rule. The solid line represents the function x to the power of 2/3, all raised to the 4th power. The dashed line represents x to the power of 8/3. As you can see, these two functions are equivalent, demonstrating the power rule.")
]
#v(40pt)
#only("3-")[
Let's break it down:
- $a^(m/n)$ is the base expression 🏗️
- $p$ is the outer exponent 🔢
]
#only("3")[
#voiceover("To understand this rule, let's break it down. a to the power of m over n is the base expression, and p is the outer exponent.")
]
#v(40pt)
#only("4-")[
Applying the rule:
1. Multiply the exponents: $m p$ ✖️
2. Divide by the denominator: $n$ ➗
3. Simplify the fraction: $(m p)/n$ 🔍
]
#only("4")[
#voiceover("To apply the rule, we first multiply the exponents m and p. Then we divide by the denominator n. Finally, we simplify the resulting fraction to get m times p over n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 🌟]
#v(40pt)
#only("1-")[
Simplify: $(8^(2/3))^3$
]
#only("1")[
#voiceover("Let's look at an example. We want to simplify 8 to the power of 2/3, all raised to the 3rd power.")
]
#v(40pt)
#only("2-")[
1. Identify the base: $a=8$ 🔍
2. Identify the exponents: $m=2$, $n=3$, $p=3$ 🔢
]
#only("2")[
#voiceover("First, we identify the base, which is 8. Then we identify the exponents: m is 2, n is 3, and p is 3.")
]
#v(40pt)
#only("3-")[
Apply the rule: $(8^(2/3))^3 = 8^((2*3)/3) = 8^2 = 64$ ✅
]
#only("3")[
#voiceover("Now we apply the rule. 8 to the power of 2/3, all raised to the 3rd power, equals 8 to the power of 2 times 3 over 3, which simplifies to 8 squared, or 64.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[
- Power rule for rational exponents: $(a^(m/n))^p = a^((m p)/n)$ 📊
]
#only("1")[
#voiceover("To recap, the power rule for rational exponents states that a to the power of m over n, all raised to the power of p, equals a to the power of m times p over n.")
]
#v(40pt)
#only("2-")[
- Multiply exponents, divide by denominator, simplify 🧮
]
#only("2")[
#voiceover("To apply the rule, multiply the exponents, divide by the denominator, and simplify the resulting fraction.")
]
#v(40pt)
#only("3-")[
- Useful for simplifying expressions with rational exponents 🎓
]
#only("3")[
#voiceover("This rule is very useful for simplifying expressions that involve rational exponents.")
]
]