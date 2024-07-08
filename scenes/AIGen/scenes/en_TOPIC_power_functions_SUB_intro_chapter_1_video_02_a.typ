#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[General Form of Cubic Functions]
#v(40pt)
What is the general form of a cubic function?
#v(20pt)
#only("-1")[a) $f(x) = a x^3 + b x + c$]#only("2-")[#text(fill:red)[a) $f(x) = a x^3 + b x + c$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^3 + b x^2 + c x + d$]#only("3-")[#text(fill:green)[b) $f(x) = a x^3 + b x^2 + c x + d$]]
#v(10pt)
#only("-3")[c) $f(x) = a x^3 + b$]#only("4-")[#text(fill:red)[c) $f(x) = a x^3 + b$]]
#v(10pt)
#only("-4")[d) $f(x) = a/x^3$]#only("5-")[#text(fill:red)[d) $f(x) = a/x^3$]]

#only("1")[#voiceover("Excellent job! You've correctly identified the general form of a cubic function. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a is incorrect. While it does include the cubic term a x cubed, it's missing the quadratic term b x squared.")]
#only("3")[#voiceover("Option b is correct. This is indeed the general form of a cubic function: f of x equals a x cubed plus b x squared plus c x plus d. Here, a, b, c, and d are constants, and a is not equal to zero.")]
#only("4")[#voiceover("Option c is incorrect. It only includes the cubic term and a constant, missing both the quadratic and linear terms.")]
#only("5")[#voiceover("Option d is also incorrect. This is actually the general form of a reciprocal cubic function, not a standard cubic function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Cubic Functions]
#v(40pt)
#only("1-")[- Cubic function: polynomial of degree 3 📊]
#v(20pt)
#only("2-")[- General form: $f(x) = a x^3 + b x^2 + c x + d$]
#v(20pt)
#only("3-")[- $a ≠ 0$ (ensures it's cubic) 🔑]
#v(20pt)
#only("4-")[- $b, c, d$ can be any real number (including 0) 🔢]

#only("1")[#voiceover("Let's delve deeper into cubic functions. A cubic function is a polynomial of degree 3, meaning the highest power of x is 3.")]
#only("2")[#voiceover("The general form of a cubic function is f of x equals a x cubed plus b x squared plus c x plus d.")]
#only("3")[#voiceover("It's crucial to note that a must not equal zero. This ensures that the function is indeed cubic.")]
#only("4")[#voiceover("The coefficients b, c, and d can be any real number, including zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Cubic Functions]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3 - x
y2 = x**3 + x**2 - 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x³ - x')
plt.plot(x, y2, label='f(x) = x³ + x² - 2x + 1')
plt.title('Examples of Cubic Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blue: $f(x) = x^3 - x$ (simpler cubic)]
#v(10pt)
#only("2-")[- Orange: $f(x) = x^3 + x^2 - 2x + 1$ (more complex cubic)]

#only("1")[#voiceover("Let's visualize some cubic functions. The blue curve represents a simpler cubic function: f of x equals x cubed minus x.")]
#only("2")[#voiceover("The orange curve shows a more complex cubic function: f of x equals x cubed plus x squared minus two x plus one. Notice how both curves have that characteristic S-shape, which is typical of cubic functions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Properties of Cubic Functions]
#v(40pt)
#only("1-")[1. Always cross x-axis at least once 📈]
#v(20pt)
#only("2-")[2. Can have up to 3 real roots 🌱]
#v(20pt)
#only("3-")[3. One inflection point 🔄]
#v(20pt)
#only("4-")[4. No maximum or minimum if $a > 0$ 📈]
#v(20pt)
#only("5-")[5. No maximum or minimum if $a < 0$ 📉]

#only("1")[#voiceover("Cubic functions have several key properties. First, they always cross the x-axis at least once.")]
#only("2")[#voiceover("They can have up to three real roots, meaning they can cross the x-axis up to three times.")]
#only("3")[#voiceover("Every cubic function has exactly one inflection point, where the curve changes from concave to convex or vice versa.")]
#only("4")[#voiceover("If the leading coefficient a is positive, the function increases without bound as x approaches both positive and negative infinity.")]
#only("5")[#voiceover("Conversely, if a is negative, the function decreases without bound as x approaches positive infinity and increases without bound as x approaches negative infinity.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- General form: $f(x) = a x^3 + b x^2 + c x + d$ (with $a ≠ 0$) 📝]
#v(20pt)
#only("2-")[- Cubic functions are versatile and important in mathematics 🧮]
#v(20pt)
#only("3-")[- They model various real-world phenomena 🌍]

#only("1")[#voiceover("To conclude, remember that the general form of a cubic function is f of x equals a x cubed plus b x squared plus c x plus d, where a is not equal to zero.")]
#only("2")[#voiceover("Cubic functions are versatile and play an important role in mathematics.")]
#only("3")[#voiceover("They're used to model various real-world phenomena, from the volume of a box to the trajectory of a projectile. Understanding cubic functions is a crucial step in your mathematical journey!")]
]