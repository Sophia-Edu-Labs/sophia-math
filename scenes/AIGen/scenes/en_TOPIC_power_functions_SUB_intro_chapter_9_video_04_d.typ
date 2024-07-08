#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)

#only("1-")[Which graph represents the function $1/x$?]
#v(20pt)

#only("-1")[a) Red Graph]#only("2-")[#text(fill:red)[a) Red Graph]]
#v(10pt)
#only("-2")[b) Green Graph]#only("3-")[#text(fill:green)[b) Green Graph]]
#v(10pt)
#only("-3")[c) Blue Graph]#only("4-")[#text(fill:red)[c) Blue Graph]]
#v(10pt)
#only("-4")[d) Orange Graph]#only("5-")[#text(fill:red)[d) Orange Graph]]

#only("1")[#voiceover("Not quite. Let's go through each option to understand the correct graph of one over x.")]
#only("2")[#voiceover("Option a, the red graph, is incorrect. This graph represents x squared, which is a parabola opening upwards.")]
#only("3")[#voiceover("Option b, the green graph, is correct. This is indeed the graph of one over x, also known as the reciprocal function.")]
#only("4")[#voiceover("Option c, the blue graph, is incorrect. This graph represents x cubed, which has a characteristic S-shape.")]
#only("5")[#voiceover("Option d, the orange graph, is also incorrect. This graph represents one over x squared, which is similar to one over x but doesn't cross into the negative y values.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $1/x$]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 1000)
y = 1/x

plt.figure(figsize=(10,6))
plt.plot(x, y, 'g-', label='1/x')
plt.axhline(y=0, color='k', linestyle='-')
plt.axvline(x=0, color='k', linestyle='-')
plt.ylim(-5, 5)
plt.xlim(-10, 10)
plt.title('Graph of y = 1/x')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- Hyperbola shape 📉]
#v(10pt)
#only("2-")[- Asymptotes at $x=0$ and $y=0$ 📊]
#v(10pt)
#only("3-")[- Decreases as $x$ increases (and vice versa) 🔄]

#only("1")[#voiceover("Let's examine the characteristics of the function one over x. First, notice its distinctive hyperbola shape.")]
#only("2")[#voiceover("It has two asymptotes: one at x equals zero and another at y equals zero. The graph approaches but never touches these lines.")]
#only("3")[#voiceover("As x increases, y decreases, and vice versa. This inverse relationship is a key feature of the reciprocal function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing Power Functions]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 1000)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/x**2

plt.figure(figsize=(10,6))
plt.plot(x, y1, 'r-', label='x^2')
plt.plot(x, y2, 'b-', label='x^3')
plt.plot(x, y3, 'g-', label='1/x')
plt.plot(x, y4, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='-')
plt.axvline(x=0, color='k', linestyle='-')
plt.ylim(-5, 5)
plt.xlim(-3, 3)
plt.title('Comparison of Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1-")[- Red: $x^2$ (parabola) 🔴]
#v(10pt)
#only("2-")[- Blue: $x^3$ (cubic function) 🔵]
#v(10pt)
#only("3-")[- Green: $1/x$ (reciprocal function) 🟢]
#v(10pt)
#only("4-")[- Orange: $1/x^2$ (inverse square function) 🟠]

#only("1")[#voiceover("Now, let's compare the graphs of different power functions. In red, we have x squared, which forms a parabola.")]
#only("2")[#voiceover("The blue curve represents x cubed, a cubic function with its characteristic S-shape.")]
#only("3")[#voiceover("Our green curve is one over x, the reciprocal function we identified earlier.")]
#only("4")[#voiceover("Finally, the orange curve shows one over x squared, which is similar to one over x but always positive.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- $1/x$ has a unique hyperbolic shape 📉]
#v(10pt)
#only("2-")[- It's different from other power functions 🔢]
#v(10pt)
#only("3-")[- Understanding these differences helps in function identification 🧠]

#only("1")[#voiceover("To summarize, the function one over x has a unique hyperbolic shape that distinguishes it from other power functions.")]
#only("2")[#voiceover("It's important to recognize how it differs from functions like x squared, x cubed, and one over x squared.")]
#only("3")[#voiceover("Understanding these differences will help you identify and work with various power functions in the future. Great job on recognizing the correct graph!")]
]