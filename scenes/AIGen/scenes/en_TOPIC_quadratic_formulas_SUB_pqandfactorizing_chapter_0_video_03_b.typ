#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Degree of a Quadratic Equation]
#v(40pt)
What is the degree of the quadratic equation $3x^2 - 4x + 2 = 0$?
#v(40pt)
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
#only("-2")[b) 2]#only("3-")[#text(fill:green)[b) 2]]
#v(10pt)
#only("-3")[c) 3]#only("4-")[#text(fill:red)[c) 3]]
#v(40pt)

#only("1")[#voiceover("Excellent work! You've correctly identified the degree of this quadratic equation. Let's break down why the answer is b) 2, and why the other options are incorrect.")]
#only("2")[#voiceover("Option a) 1 is incorrect. The degree of an equation is not 1 in this case.")]
#only("3")[#voiceover("Option b) 2 is correct. The degree of this quadratic equation is indeed 2.")]
#only("4")[#voiceover("Option c) 3 is incorrect. The equation does not have a degree of 3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Equation Degree]
#v(40pt)
#only("1-")[- The degree is the highest power of the variable 📊]
#v(20pt)
#only("2-")[- In $3x^2 - 4x + 2 = 0$:]
#v(10pt)
#only("3-")[  • $x^2$ has the highest power]
#v(10pt)
#only("4-")[  • The highest power is 2]
#v(20pt)
#only("5-")[- Therefore, the degree is 2 ✅]

#only("1")[#voiceover("To understand why the degree is 2, let's recall what 'degree' means in algebra. The degree of an equation is the highest power of the variable in the equation.")]
#only("2")[#voiceover("Looking at our equation, 3 x squared minus 4 x plus 2 equals 0,")]
#only("3")[#voiceover("we can see that x squared has the highest power of x.")]
#only("4")[#voiceover("The highest power here is 2.")]
#only("5")[#voiceover("Therefore, the degree of this quadratic equation is 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Equation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 3, 100)
y = 3*x**2 - 4*x + 2

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='3x² - 4x + 2')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of 3x² - 4x + 2 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a visual representation of our quadratic equation. Notice how the graph forms a parabola, which is characteristic of quadratic equations. This shape is due to the x squared term, confirming that the degree is indeed 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Not Degree 1 or 3?]
#v(40pt)
#only("1-")[- Degree 1: Linear equation (straight line) 📏]
#v(10pt)
#only("2-")[  • Example: $2x + 3 = 0$]
#v(20pt)
#only("3-")[- Degree 3: Cubic equation (S-shaped curve) 🔀]
#v(10pt)
#only("4-")[  • Example: $x^3 + 2x^2 - x + 1 = 0$]

#only("1")[#voiceover("Let's clarify why the degree isn't 1 or 3. A degree 1 equation is a linear equation, which graphs as a straight line.")]
#only("2")[#voiceover("An example would be 2x plus 3 equals 0.")]
#only("3")[#voiceover("A degree 3 equation is a cubic equation, which typically graphs as an S-shaped curve.")]
#only("4")[#voiceover("An example would be x cubed plus 2x squared minus x plus 1 equals 0.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Quadratic equations always have degree 2 📚]
#v(20pt)
#only("2-")[- The term with the highest power determines the degree 🔝]
#v(20pt)
#only("3-")[- Degree influences the shape of the graph 📈]

#only("1")[#voiceover("To summarize, remember that quadratic equations always have a degree of 2.")]
#only("2")[#voiceover("The term with the highest power in the equation determines its degree.")]
#only("3")[#voiceover("And the degree of an equation influences the shape of its graph. Great job understanding this concept!")]
]