#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which of the following graphs belongs to the function $x^2$?]
#v(20pt)

#only("-1")[a) Red Graph]#only("2-")[#text(fill:green)[a) Red Graph]]
#v(10pt)
#only("-2")[b) Green Graph]#only("3-")[#text(fill:red)[b) Green Graph]]
#v(10pt)
#only("-3")[c) Blue Graph]#only("4-")[#text(fill:red)[c) Blue Graph]]
#v(10pt)
#only("-4")[d) Orange Graph]#only("5-")[#text(fill:red)[d) Orange Graph]]

#only("1")[#voiceover("Not quite. Let's go through each option to understand why the red graph is the correct choice.")]
#only("2")[#voiceover("Option a, the red graph, is indeed correct. This is the graph of x squared.")]
#only("3")[#voiceover("Option b, the green graph, is incorrect. This graph represents one over x, not x squared.")]
#only("4")[#voiceover("Option c, the blue graph, is also incorrect. This graph represents x cubed.")]
#only("5")[#voiceover("Option d, the orange graph, is incorrect as well. This graph represents one over x squared.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $x^2$]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'r', label='$x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of $y = x^2$')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- U-shaped curve (parabola) 📈]
#v(10pt)
#only("2-")[- Symmetric about y-axis 🪞]
#v(10pt)
#only("3-")[- Vertex at origin (0,0) 🎯]
#v(10pt)
#only("4-")[- Always non-negative for real x 📊]

#only("1")[#voiceover("Let's look at the key characteristics of the function x squared. First, notice that it forms a U-shaped curve, also known as a parabola.")]
#only("2")[#voiceover("The graph is symmetric about the y-axis. This means if you fold the graph along the y-axis, both sides would perfectly overlap.")]
#only("3")[#voiceover("The vertex, or the lowest point of the parabola, is at the origin - the point zero, zero.")]
#only("4")[#voiceover("Lastly, for any real value of x, y is always non-negative. This means the graph never goes below the x-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing with Other Functions]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/(x**2)

plt.figure(figsize=(10, 8))
plt.plot(x, y1, 'r', label='$x^2$')
plt.plot(x, y2, 'b', label='$x^3$')
plt.plot(x, y3, 'g', label='$1/x$')
plt.plot(x, y4, 'orange', label='$1/x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Comparison of Different Functions')
plt.legend()
plt.grid(True)
plt.ylim(-3, 3)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- Red: $x^2$ (parabola) 📈]
#v(10pt)
#only("2-")[- Blue: $x^3$ (cubic function) 📉]
#v(10pt)
#only("3-")[- Green: $1/x$ (reciprocal function) 📊]
#v(10pt)
#only("4-")[- Orange: $1/x^2$ (reciprocal squared) 📈]

#only("1")[#voiceover("Now, let's compare x squared with the other functions from our options. The red graph, as we know, represents x squared. It's our familiar parabola.")]
#only("2")[#voiceover("The blue graph represents x cubed. Notice how it's similar to x squared for positive x, but behaves differently for negative x.")]
#only("3")[#voiceover("The green graph is one over x. It has two separate parts and approaches positive and negative infinity as x approaches zero from either side.")]
#only("4")[#voiceover("Finally, the orange graph is one over x squared. It's always positive, like x squared, but approaches infinity as x approaches zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- $x^2$ is a quadratic function 📚]
#v(10pt)
#only("2-")[- Its graph is a symmetric parabola 🪞]
#v(10pt)
#only("3-")[- It's distinct from other power functions 🔍]
#v(10pt)
#only("4-")[- Understanding its shape helps identify it 👁️]

#only("1")[#voiceover("Let's summarize what we've learned. First, x squared is a quadratic function, the simplest of its kind.")]
#only("2")[#voiceover("Its graph is a symmetric parabola, which is a key identifying feature.")]
#only("3")[#voiceover("It's important to note how x squared is distinct from other power functions like x cubed or reciprocal functions.")]
#only("4")[#voiceover("Understanding the shape and characteristics of x squared will help you identify it in various mathematical contexts. Great job on recognizing it in this exercise!")]
]