#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reciprocal of a Power Function]

#v(40pt)

#only("1-")[#text()[$ f(x) = x^3 $]]

#v(20pt)

#only("2-")[#text()[Question: Find the reciprocal of $f(x) = x^3$]]

#only("1")[
#voiceover("Great job on answering this question correctly! Let's walk through the solution step by step. We start with the given function f of x equals x cubed.")
]

#only("2")[
#voiceover("Our task is to find the reciprocal of this function.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Reciprocals]

#v(40pt)

#only("1-")[- Reciprocal: multiplicative inverse 🔄]

#v(20pt)

#only("2-")[- For a number $a$, its reciprocal is $1/a$]

#v(20pt)

#only("3-")[- For a function $f(x)$, its reciprocal is $1/f(x)$]

#only("1")[
#voiceover("First, let's recall what a reciprocal is. A reciprocal is also known as the multiplicative inverse.")
]

#only("2")[
#voiceover("For any number a, its reciprocal is one over a.")
]

#only("3")[
#voiceover("Similarly, for any function f of x, its reciprocal is one over f of x.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Reciprocal]

#v(40pt)

#only("1-")[$ f(x) = x^3 $]

#v(20pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Take reciprocal]]]

#v(20pt)

#only("3-")[$ "Reciprocal of" f(x) = 1/x^3 $]

#only("1")[
#voiceover("Let's apply this to our function. We start with f of x equals x cubed.")
]

#only("2")[
#voiceover("To find its reciprocal, we take one over the function.")
]

#only("3")[
#voiceover("This gives us one over x cubed.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The reciprocal of $f(x) = x^3$ is:]

#v(20pt)

#only("2-")[$ g(x) = 1/x^3 $]

#v(20pt)

#only("3-")[💡 This is also a power function!]

#only("1")[
#voiceover("So, our final answer is that the reciprocal of f of x equals x cubed is:")
]

#only("2")[
#voiceover("g of x equals one over x cubed.")
]

#only("3")[
#voiceover("It's interesting to note that this reciprocal is also a power function, just with a negative exponent!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Functions]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**3
y2 = 1/x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x³')
plt.plot(x, y2, label='g(x) = 1/x³')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Comparison of f(x) = x³ and its reciprocal g(x) = 1/x³')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.ylim(-5, 5)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization of both functions. The blue curve represents f of x equals x cubed, while the orange curve shows its reciprocal, g of x equals one over x cubed. Notice how they're mirror images of each other across the y equals x line. This graphical representation helps us understand the relationship between a function and its reciprocal.")
]
]