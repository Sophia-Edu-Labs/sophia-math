#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding & Subtracting Rational Exponents]
#v(40pt)
#only("1-")[- To add or subtract, bases and exponents must match 🎯]
#v(20pt)
#only("2-")[- Example: $3 2^(1/2) + 2 2^(1/2)$ = $5 2^(1/2)$ ✅]
#v(20pt) 
#only("3-")[- Example: $5 3^(1/3) - 2 3^(1/3)$ = $3 3^(1/3)$ ✅]
#v(20pt)
#only("4-")[- Mismatch: $2^(1/2) + 3^(1/3)$ ❌]
#only("1")[
#voiceover("To add or subtract expressions with rational exponents, it's crucial that the bases and exponents match.")
]
#only("2")[
#voiceover("For instance, 3 times 2 to the power of one-half plus 2 times 2 to the power of one-half equals 5 times 2 to the power of one-half.")
]
#only("3")[
#voiceover("Similarly, 5 times 3 to the power of one-third minus 2 times 3 to the power of one-third equals 3 times 3 to the power of one-third.")
]
#only("4")[
#voiceover("However, we cannot directly add or subtract expressions like 2 to the power of one-half and 3 to the power of one-third because their bases and exponents don't match.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y1 = 3 * np.sqrt(2) + 2 * np.sqrt(2)
y2 = 5 * np.sqrt(2)
y3 = 5 * np.cbrt(3) - 2 * np.cbrt(3)
y4 = 3 * np.cbrt(3)

plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='black', linewidth=0.5)
plt.plot(x, np.full_like(x, y1), label=r'$3 \cdot 2^{1/2} + 2 \cdot 2^{1/2}$', linestyle='--', color='blue')
plt.plot(x, np.full_like(x, y2), label=r'$5 \cdot 2^{1/2}$', color='blue')
plt.plot(x, np.full_like(x, y3), label=r'$5 \cdot 3^{1/3} - 2 \cdot 3^{1/3}$', linestyle='--', color='red')
plt.plot(x, np.full_like(x, y4), label=r'$3 \cdot 3^{1/3}$', color='red')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.title('Adding and Subtracting Rational Exponents')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph visualizes the addition and subtraction of expressions with rational exponents. The dashed blue line represents 3 times 2 to the power of one-half plus 2 times 2 to the power of one-half, which equals the solid blue line, 5 times 2 to the power of one-half. Similarly, the dashed red line represents 5 times 3 to the power of one-third minus 2 times 3 to the power of one-third, which equals the solid red line, 3 times 3 to the power of one-third.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matching bases and exponents are key 🔑]
#v(20pt)
#only("2-")[- Add/subtract coefficients, keep base and exponent 📏]
#v(20pt)
#only("3-")[- Simplify the result if possible 🧮]
#only("1")[
#voiceover("In summary, when adding or subtracting expressions with rational exponents, the bases and exponents must match.")
]
#only("2")[
#voiceover("If they do match, simply add or subtract the coefficients while keeping the base and exponent the same.")
]
#only("3")[
#voiceover("Finally, simplify the result if possible. With these steps in mind, you'll be able to confidently tackle problems involving the addition and subtraction of expressions with rational exponents.")
]
]