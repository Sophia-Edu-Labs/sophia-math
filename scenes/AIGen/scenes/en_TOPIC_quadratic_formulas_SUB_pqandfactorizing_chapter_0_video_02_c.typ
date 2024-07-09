#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratic Equations]
#v(40pt)
Which of the following is a quadratic equation?
#v(20pt)
#only("-1")[a) $2x + 3 = 0$]#only("2-")[#text(fill:red)[a) $2x + 3 = 0$]]
#v(10pt)
#only("-2")[b) $x^2 + 5x + 6 = 0$]#only("3-")[#text(fill:green)[b) $x^2 + 5x + 6 = 0$]]
#v(10pt)
#only("-3")[c) $3x^3 - 2x^2 + 1 = 0$]#only("4-")[#text(fill:red)[c) $3x^3 - 2x^2 + 1 = 0$]]

#only("1")[#voiceover("Not quite. Let's go through each option to see the correct solution.")]
#only("2")[#voiceover("Option a, 2x plus 3 equals 0, is not a quadratic equation. It's a linear equation because the highest power of x is 1.")]
#only("3")[#voiceover("Option b, x squared plus 5x plus 6 equals 0, is indeed a quadratic equation. It has x squared as its highest power term.")]
#only("4")[#voiceover("Option c, 3x cubed minus 2x squared plus 1 equals 0, is not a quadratic equation. It's a cubic equation because the highest power of x is 3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of Quadratic Equations]
#v(40pt)
#only("1-")[- Highest power of x is 2 📊]
#v(20pt)
#only("2-")[- General form: $a x^2 + b x + c = 0$ 🧮]
#v(20pt)
#only("3-")[- $a ≠ 0$ ❗]

#only("1")[#voiceover("Let's review the characteristics of quadratic equations. First, in a quadratic equation, the highest power of x is always 2.")]
#only("2")[#voiceover("The general form of a quadratic equation is a x squared plus b x plus c equals 0, where a, b, and c are constants.")]
#only("3")[#voiceover("It's important to note that a must not be equal to zero. If a were zero, the equation would no longer be quadratic.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Our Quadratic Equation]
#v(40pt)
#only("1-")[#text(size: 24pt)[#text(fill:green)[$x^2 + 5x + 6 = 0$]]]
#v(40pt)
#only("2-")[- $a = 1$]
#v(20pt)
#only("3-")[- $b = 5$]
#v(20pt)
#only("4-")[- $c = 6$]

#only("1")[#voiceover("Now, let's look at our quadratic equation: x squared plus 5x plus 6 equals 0.")]
#only("2")[#voiceover("In this equation, a equals 1, because the coefficient of x squared is 1.")]
#only("3")[#voiceover("b equals 5, as it's the coefficient of x.")]
#only("4")[#voiceover("And c equals 6, which is the constant term.")]
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

x = np.linspace(-6, 1, 100)
y = x**2 + 5*x + 6

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='y = x² + 5x + 6')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=0, color='k')
plt.axhline(y=0, color='k')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of x² + 5x + 6 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a graphical representation of our quadratic equation. The blue curve represents y equals x squared plus 5x plus 6, and the red dashed line represents y equals 0.")]
#only("2")[#voiceover("The points where the blue curve intersects the red dashed line are the solutions to our quadratic equation. These points are called the roots of the equation.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Quadratic equation: $a x^2 + b x + c = 0$ 📝]
#v(20pt)
#only("2-")[- Our equation: $x^2 + 5x + 6 = 0$ ✅]
#v(20pt)
#only("3-")[- Highest power of x is 2 🔢]
#v(20pt)
#only("4-")[- Forms a parabola when graphed 📈]

#only("1")[#voiceover("To summarize, a quadratic equation has the general form a x squared plus b x plus c equals 0.")]
#only("2")[#voiceover("Our specific quadratic equation is x squared plus 5x plus 6 equals 0.")]
#only("3")[#voiceover("Remember, the key characteristic of a quadratic equation is that the highest power of x is 2.")]
#only("4")[#voiceover("When graphed, a quadratic equation forms a parabola, as we saw in our graph. Great job understanding quadratic equations!")]
]