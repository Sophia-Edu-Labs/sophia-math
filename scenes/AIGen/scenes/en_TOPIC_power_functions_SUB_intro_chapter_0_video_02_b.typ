#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[General Form of Quadratic Functions]
#v(40pt)
What is the general form of a quadratic function?
#v(40pt)
#only("-1")[a) $f(x) = a + b x$]#only("2-")[#text(fill:red)[a) $f(x) = a + b x$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^2 + b x + c$]#only("3-")[#text(fill:green)[b) $f(x) = a x^2 + b x + c$]]
#v(10pt)
#only("-3")[c) $f(x) = a x^b$]#only("4-")[#text(fill:red)[c) $f(x) = a x^b$]]
#v(10pt)
#only("-4")[d) $f(x) = a/x$]#only("5-")[#text(fill:red)[d) $f(x) = a/x$]]

#only("1")[#voiceover("Excellent job! You've correctly identified the general form of a quadratic function. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a is incorrect. f of x equals a plus b x is the general form of a linear function, not a quadratic one.")]
#only("3")[#voiceover("Option b is correct. f of x equals a x squared plus b x plus c is indeed the general form of a quadratic function. We'll discuss this in more detail.")]
#only("4")[#voiceover("Option c is incorrect. f of x equals a x to the power of b is the general form of a power function, not specifically a quadratic function.")]
#only("5")[#voiceover("Option d is incorrect. f of x equals a divided by x is the general form of a reciprocal function, not a quadratic function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Components of a Quadratic Function]
#v(40pt)
#only("1-")[General form: $f(x) = a x^2 + b x + c$]
#v(20pt)
#only("2-")[- $a$: coefficient of $x^2$ (determines opening direction and width) 📈]
#v(10pt)
#only("3-")[- $b$: coefficient of $x$ (affects symmetry axis) ↔️]
#v(10pt)
#only("4-")[- $c$: constant term (y-intercept) 🔝]

#only("1")[#voiceover("Let's break down the general form of a quadratic function: f of x equals a x squared plus b x plus c.")]
#only("2")[#voiceover("The coefficient a determines the opening direction and width of the parabola. If a is positive, the parabola opens upward; if negative, it opens downward.")]
#only("3")[#voiceover("The coefficient b affects the axis of symmetry of the parabola. It shifts the vertex left or right.")]
#only("4")[#voiceover("The constant term c is the y-intercept, where the parabola crosses the y-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Quadratic Functions]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = x**2
y2 = -0.5*x**2
y3 = (x-2)**2 - 3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='f(x) = -0.5x²')
plt.plot(x, y3, label='f(x) = (x-2)² - 3')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Different Quadratic Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visual representation of different quadratic functions. Notice how changing the coefficients affects the shape and position of the parabola.")]
#only("2")[#voiceover("The blue curve shows f of x equals x squared, a basic quadratic function.")]
#only("3")[#voiceover("The orange curve is f of x equals negative zero point five x squared. The negative a value flips the parabola downward and the smaller absolute value of a makes it wider.")]
#only("4")[#voiceover("The green curve is f of x equals x minus 2 squared minus 3. This shifts the parabola 2 units right and 3 units down.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why is this Important?]
#v(40pt)
#only("1-")[- Quadratic functions model many real-world phenomena 🌍]
#v(10pt)
#only("2-")[- Examples: projectile motion, profit optimization, physics 🚀💰🧲]
#v(10pt)
#only("3-")[- Understanding the general form helps in problem-solving 🧠]

#only("1")[#voiceover("Understanding the general form of quadratic functions is crucial because they model many real-world phenomena.")]
#only("2")[#voiceover("For instance, quadratic functions describe projectile motion in physics, profit optimization in economics, and various other scientific and practical applications.")]
#only("3")[#voiceover("By recognizing and understanding this general form, you'll be better equipped to solve problems and analyze situations involving quadratic relationships.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- General form of a quadratic function: $f(x) = a x^2 + b x + c$ 📝]
#v(10pt)
#only("2-")[- Each coefficient ($a$, $b$, $c$) plays a specific role 🔑]
#v(10pt)
#only("3-")[- Quadratic functions are versatile and widely applicable 🌟]

#only("1")[#voiceover("To summarize, the general form of a quadratic function is f of x equals a x squared plus b x plus c.")]
#only("2")[#voiceover("Each coefficient, a, b, and c, plays a specific role in shaping the parabola and determining its position.")]
#only("3")[#voiceover("Remember, quadratic functions are versatile tools that help us understand and model various real-world situations. Keep practicing with different values for a, b, and c to deepen your understanding!")]
]