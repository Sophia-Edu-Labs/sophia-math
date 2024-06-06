#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding & Subtracting Rational Exponents 🧮]

#v(40pt)

#only("1-")[- To add or subtract expressions with rational exponents:
  - Bases must be the same
  - Exponents must be the same]

#v(40pt)

#only("2-")[Example: $3 2^(1/2) + 2 2^(1/2) = 5 2^(1/2)$]

#v(40pt)

#only("3-")[Example: $5 3^(1/3) - 2 3^(1/3) = 3 3^(1/3)$]

#only("1")[
#voiceover("To recap, when adding or subtracting expressions with rational exponents, it's important to remember that the bases and exponents must be the same.")
]

#only("2")[
#voiceover("For example, 3 times 2 to the power of one-half plus 2 times 2 to the power of one-half equals 5 times 2 to the power of one-half. Here, the bases (2) and exponents (one-half) are the same, so we can simply add the coefficients.")
]

#only("3")[
#voiceover("Similarly, 5 times 3 to the power of one-third minus 2 times 3 to the power of one-third equals 3 times 3 to the power of one-third. Again, the bases (3) and exponents (one-third) are the same, allowing us to subtract the coefficients.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 4, 100)
y1 = 3 * np.sqrt(2) * np.ones_like(x)
y2 = 2 * np.sqrt(2) * np.ones_like(x)
y3 = 5 * np.sqrt(2) * np.ones_like(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label=r'$3 \cdot 2^{1/2}$', linewidth=2)
plt.plot(x, y2, label=r'$2 \cdot 2^{1/2}$', linewidth=2)
plt.plot(x, y3, label=r'$5 \cdot 2^{1/2}$', linewidth=2)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Adding Expressions with Rational Exponents')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Here's a visual representation of adding expressions with rational exponents. The blue line represents 3 times 2 to the power of one-half, the orange line represents 2 times 2 to the power of one-half, and the green line represents their sum, 5 times 2 to the power of one-half.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Bases must be the same 🎯]
#v(20pt)
#only("2-")[- Exponents must be the same ⚖]
#v(20pt)
#only("3-")[- Add or subtract coefficients 🧮]

#only("1")[
#voiceover("Remember, when adding or subtracting expressions with rational exponents, the bases must be the same.")
]

#only("2")[
#voiceover("The exponents must also be the same.")
]

#only("3")[
#voiceover("If these conditions are met, you can simply add or subtract the coefficients to simplify the expression.")
]
]