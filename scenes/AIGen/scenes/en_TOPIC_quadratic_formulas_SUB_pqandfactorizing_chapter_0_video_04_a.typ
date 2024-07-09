#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratic Equations: Graphical Representation]
#v(40pt)
Which of the following represents a quadratic equation graphically?
#v(20pt)
#only("-1")[a) A straight line]#only("2-")[#text(fill:red)[a) A straight line]]
#v(10pt)
#only("-2")[b) A parabola]#only("3-")[#text(fill:green)[b) A parabola]]
#v(10pt)
#only("-3")[c) A hyperbola]#only("4-")[#text(fill:red)[c) A hyperbola]]

#only("1")[#voiceover("Not quite. Let's explore the correct solution and understand why a parabola represents a quadratic equation graphically.")]
#only("2")[#voiceover("Option a, a straight line, is incorrect. A straight line represents a linear equation, not a quadratic one.")]
#only("3")[#voiceover("Option b, a parabola, is correct. A parabola is indeed the graphical representation of a quadratic equation.")]
#only("4")[#voiceover("Option c, a hyperbola, is incorrect. A hyperbola represents a different type of equation, not a quadratic one.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratic Equation: General Form]
#v(40pt)
#only("1-")[The general form of a quadratic equation is:]
#v(20pt)
#only("2-")[$ f(x) = a x^2 + b x + c $]
#v(20pt)
#only("3-")[Where:]
#v(10pt)
#only("4-")[- $a ≠ 0$]
#only("5-")[- $b$ and $c$ can be any real number]

#only("1")[#voiceover("Let's start by recalling the general form of a quadratic equation.")]
#only("2")[#voiceover("A quadratic equation is typically written as f of x equals a x squared plus b x plus c.")]
#only("3")[#voiceover("In this equation:")]
#only("4")[#voiceover("a is not equal to zero. If a were zero, the equation would no longer be quadratic.")]
#only("5")[#voiceover("b and c can be any real number, including zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Parabola: The Graph of a Quadratic Equation]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.title('Parabola: y = x²')
plt.xlabel('x')
plt.ylabel('y')
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
#only("1-")[- Shape: ∪ or ∩]
#only("2-")[- Symmetrical about vertical axis]
#only("3-")[- One minimum or maximum point]

#only("1")[#voiceover("When we graph a quadratic equation, we get a parabola. This parabola can open upwards or downwards, depending on whether a is positive or negative.")]
#only("2")[#voiceover("A key feature of a parabola is that it's symmetrical about a vertical axis.")]
#only("3")[#voiceover("It also has one minimum point if it opens upwards, or one maximum point if it opens downwards. This point is called the vertex of the parabola.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Not a Straight Line or Hyperbola?]
#v(20pt)
#only("1-")[Straight Line:] 
#only("2-")[- Represents linear equations: $ y = m x + b $]
#only("3-")[- No squared term]
#v(20pt)
#only("4-")[Hyperbola:]
#only("5-")[- Represents equations like: $ x y = k $ or $ y = 1/x $]
#only("6-")[- Different shape and properties]

#only("1")[#voiceover("Now, let's consider why the other options are incorrect.")]
#only("2")[#voiceover("A straight line represents a linear equation, typically written as y equals m x plus b.")]
#only("3")[#voiceover("Unlike quadratic equations, linear equations don't have a squared term, which is why their graphs are straight lines, not curves.")]
#only("4")[#voiceover("A hyperbola, on the other hand,")]
#only("5")[#voiceover("represents equations like x y equals k or y equals one over x.")]
#only("6")[#voiceover("Hyperbolas have a very different shape and properties compared to parabolas.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[✅ Quadratic equations are graphed as parabolas]
#v(20pt)
#only("2-")[🔑 Key features: U-shape, symmetry, vertex]
#v(20pt)
#only("3-")[💡 Remember: $ f(x) = a x^2 + b x + c $ where $ a ≠ 0 $]

#only("1")[#voiceover("To summarize, quadratic equations are graphed as parabolas.")]
#only("2")[#voiceover("The key features of a parabola are its U-shape, symmetry, and the presence of a vertex.")]
#only("3")[#voiceover("Always remember, a quadratic equation is in the form f of x equals a x squared plus b x plus c, where a is not equal to zero. This is what gives us the characteristic parabolic shape.")]
]