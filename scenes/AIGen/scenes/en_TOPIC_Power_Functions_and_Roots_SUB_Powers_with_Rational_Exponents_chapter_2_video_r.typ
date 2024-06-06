#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying and Dividing with Rational Exponents]

#v(40pt)

#only("1-")[
- Multiplication rule: $a^(m/n) a^(p/q) = a^((m q+n p)/(n q))$
- Division rule: $a^(m/n) / a^(p/q) = a^((m q-n p)/(n q))$
]

#only("1")[
#voiceover("When multiplying expressions with rational exponents, we add the exponents. The numerators are cross-multiplied with the denominators, and the denominators are multiplied together.")
]

#only("2")[
#voiceover("For division, we subtract the exponents. Again, the numerators are cross-multiplied with the denominators, and the denominators are multiplied together.")
]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y1 = x**(1/2) * x**(1/2)
y2 = x**(1/2) / x**(1/3)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, label=r'$x^{1/2} \cdot x^{1/2} = x^{(1/2 + 1/2)} = x^1$')
ax.plot(x, y2, label=r'$x^{1/2} / x^{1/3} = x^{(1/2 - 1/3)} = x^{1/6}$')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Multiplying and Dividing with Rational Exponents')
ax.legend()
ax.grid(True)

plt.show()
```,
width: 360pt),
)
]
]

#only("3")[
#voiceover("Here's a graph showing an example of multiplication and division with rational exponents. The blue line represents x to the power of one-half multiplied by x to the power of one-half, which equals x to the power of one. The orange line represents x to the power of one-half divided by x to the power of one-third, which equals x to the power of one-sixth.")
]

#v(20pt)

#only("4-")[
💡 Remember: 
- For multiplication, add the exponents
- For division, subtract the exponents
- Cross-multiply numerators and denominators
]

#only("4")[
#voiceover("To recap, remember that for multiplication, we add the exponents, and for division, we subtract the exponents. Always cross-multiply the numerators with the denominators and multiply the denominators together.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]

#v(40pt)

#only("1-")[
Simplify: $8^(2/3) / 8^(1/3)$
]

#only("1")[
#voiceover("Let's look at an example. We want to simplify eight to the power of two-thirds divided by eight to the power of one-third.")
]

#v(20pt)

#only("2-")[
$8^(2/3) / 8^(1/3) = 8^((2/3) - (1/3)) = 8^(1/3) = 2$
]

#only("2")[
#voiceover("Using the division rule, we subtract the exponents. Two-thirds minus one-third equals one-third. So we have eight to the power of one-third, which equals two.")
]

#v(20pt)

#only("3-")[
✅ The simplified expression is 2.
]

#only("3")[
#voiceover("Therefore, the simplified expression is two.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]

#v(40pt)

#only("1-")[
- Rational exponents represent roots 🌱
- Simplify by converting to radical form and vice versa ⇄
- Multiply: add exponents, cross-multiply numerators and denominators ➕
- Divide: subtract exponents, cross-multiply numerators and denominators ➖
]

#only("1")[
#voiceover("In summary, rational exponents represent roots. We can simplify expressions by converting between rational exponent form and radical form. When multiplying expressions with rational exponents, add the exponents and cross-multiply the numerators and denominators. When dividing, subtract the exponents and cross-multiply the numerators and denominators.")
]

#v(20pt)

#only("2-")[
💪 Practice simplifying expressions with rational exponents to master these rules!
]

#only("2")[
#voiceover("Practice simplifying various expressions with rational exponents to reinforce and master these rules.")
]
]