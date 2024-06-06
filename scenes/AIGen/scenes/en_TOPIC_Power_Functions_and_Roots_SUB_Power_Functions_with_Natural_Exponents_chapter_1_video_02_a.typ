#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^2$]
#v(40pt)
#only("1-")[How does the graph of $f(x) = x^2$ look?]
#v(40pt)
#only("-1")[a) A straight line]#only("2-")[#text(fill:red)[a) A straight line]]
#v(10pt)
#only("-1")[b) A parabola]#only("3-")[#text(fill:green)[b) A parabola]] 
#v(10pt)
#only("-1")[c) A hyperbola]#only("4-")[#text(fill:red)[c) A hyperbola]]
#v(10pt)
#only("-1")[d) A circle]#only("5-")[#text(fill:red)[d) A circle]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("a) A straight line is incorrect. The graph of x squared is not a straight line.")]
#only("3")[#voiceover("b) A parabola is the correct answer. The graph of x squared is indeed a parabola.")]
#only("4")[#voiceover("c) A hyperbola is incorrect. A hyperbola has two separate curves, unlike the graph of x squared.")]
#only("5")[#voiceover("d) A circle is also incorrect. The graph of x squared does not form a closed curve like a circle.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $f(x) = x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph of f(x) = x^2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Key characteristics of a parabola:]
#v(20pt)
#only("2-")[- 📈 U-shaped curve]
#only("3-")[- 🔍 Symmetrical about the y-axis]
#only("4-")[- 🔝 Has a minimum or maximum point (vertex)]

#only("1")[#voiceover("Let's visualize the graph of f of x equals x squared to see why it's a parabola.")]
#only("2")[#voiceover("First, notice the U-shaped curve, which is a defining feature of a parabola.")]
#only("3")[#voiceover("The graph is also symmetrical about the y-axis. If you fold the graph along the y-axis, both halves would perfectly overlap.")]
#only("4")[#voiceover("Lastly, the parabola has a minimum point, also known as the vertex. For x squared, the vertex is at the origin (0, 0).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- The graph of $f(x) = x^2$ is a parabola 📊]
#v(20pt)
#only("2-")[- Parabolas are U-shaped, symmetrical curves 📏]
#v(20pt)
#only("3-")[- They have a minimum or maximum point (vertex) 🔝]

#only("1")[#voiceover("To summarize, the graph of f of x equals x squared is a parabola.")]
#only("2")[#voiceover("Parabolas are U-shaped curves that are symmetrical about a vertical line.")]
#only("3")[#voiceover("They always have a minimum or maximum point, called the vertex. Remember these key characteristics of parabolas!")]
]