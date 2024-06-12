#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
What is the shape of the graph of $f(x) = x^2$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Parabola]#only("2-")[#text(fill:green)[a) Parabola]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Line]#only("3-")[#text(fill:red)[b) Line]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Circle]#only("4-")[#text(fill:red)[c) Circle]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Hyperbola]#only("5-")[#text(fill:red)[d) Hyperbola]]
#v(40pt)

#only("1")[#voiceover("Great job! Let's go over the correct answer step-by-step.")]
#only("2")[#voiceover("a) Parabola is correct. The graph of $f(x) = x^2$ is a parabola, which is a U-shaped curve.")]
#only("3")[#voiceover("b) Line is incorrect. The graph of a linear function, like $f(x) = x$, is a straight line, not a parabola.")]
#only("4")[#voiceover("c) Circle is incorrect. The graph of a circle is given by an equation like $(x - h)^2 + (y - k)^2 = r^2$, not by a quadratic function.")]
#only("5")[#voiceover("d) Hyperbola is incorrect. A hyperbola has two branches and is represented by equations like $x^2/a^2 - y^2/b^2 = 1$, not by a simple quadratic function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 400)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^2$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graph of $f(x) = x^2$')
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's the graph of $f(x) = x^2$:]
#v(20pt)
#only("2-")[- The graph is a U-shaped curve called a parabola.]
#only("3-")[- It opens upwards because the coefficient of $x^2$ is positive.]
#only("4-")[- The vertex of the parabola is at the origin (0,0).]

#only("1")[#voiceover("Let's take a look at the graph of $f(x) = x^2$.")]
#only("2")[#voiceover("As you can see, the graph is a U-shaped curve called a parabola.")]
#only("3")[#voiceover("This parabola opens upwards because the coefficient of $x^2$ is positive.")]
#only("4")[#voiceover("The vertex of the parabola, which is the lowest point, is at the origin, which is the point (0,0).")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Not Other Shapes?]
#v(40pt)
#only("1-")[Let's briefly discuss why the other options are incorrect:]
#v(20pt)
#only("2-")[- A line is represented by a linear equation like $f(x) = m x + b$.]
#only("3-")[- A circle is represented by an equation like $(x - h)^2 + (y - k)^2 = r^2$.]
#only("4-")[- A hyperbola is represented by an equation like $x^2/a^2 - y^2/b^2 = 1$.]

#only("1")[#voiceover("Let's briefly discuss why the other options are incorrect.")]
#only("2")[#voiceover("A line is represented by a linear equation like $f(x) = mx + b$, where m is the slope and b is the y-intercept. This is not the shape of $f(x) = x^2$.")]
#only("3")[#voiceover("A circle is represented by an equation like $(x - h)^2 + (y - k)^2 = r^2$, where (h,k) is the center and r is the radius. This is also not the shape of $f(x) = x^2$.")]
#only("4")[#voiceover("A hyperbola is represented by an equation like $x^2/a^2 - y^2/b^2 = 1$, which has two branches. This is definitely not the shape of $f(x) = x^2$.")]
]