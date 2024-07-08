#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs of Power Functions]
#v(40pt)
#only("1-")[Which graph belongs to the function $1/x^2$?]
#v(20pt)
#only("-1")[a) Red Graph]#only("2-")[#text(fill:red)[a) Red Graph]]
#v(10pt)
#only("-2")[b) Green Graph]#only("3-")[#text(fill:red)[b) Green Graph]]
#v(10pt)
#only("-3")[c) Blue Graph]#only("4-")[#text(fill:red)[c) Blue Graph]]
#v(10pt)
#only("-4")[d) Orange Graph]#only("5-")[#text(fill:green)[d) Orange Graph]]
#v(40pt)

#only("1")[#voiceover("Excellent job! You've correctly identified the graph of one over x squared. Let's go through each option to understand why.")]
#only("2")[#voiceover("The red graph represents x squared, not one over x squared. It's a parabola opening upwards.")]
#only("3")[#voiceover("The green graph shows one over x, which is similar to one over x squared but not quite the same.")]
#only("4")[#voiceover("The blue graph represents x cubed, which is very different from one over x squared.")]
#only("5")[#voiceover("The orange graph is indeed the correct representation of one over x squared. Let's explore why in more detail.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $1/x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 1000)
y = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(0, 5)
plt.xlim(-5, 5)
plt.title('Graph of 1/x^2')
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
#v(20pt)
#only("1-")[- Asymptotic to x-axis 📉]
#only("2-")[- Vertical asymptote at x = 0 📏]
#only("3-")[- Always positive ➕]
#only("4-")[- Symmetric about y-axis 🪞]

#only("1")[#voiceover("Let's look at the key characteristics of the function one over x squared. First, notice how the graph approaches but never touches the x-axis as x gets very large or very small. This is called being asymptotic to the x-axis.")]
#only("2")[#voiceover("Next, see how the graph shoots up towards infinity as x approaches zero from either side? This creates a vertical asymptote at x equals zero.")]
#only("3")[#voiceover("Also, observe that the y-values are always positive. This is because any number squared is positive, and one divided by a positive number is always positive.")]
#only("4")[#voiceover("Lastly, the graph is symmetric about the y-axis. This means if you fold the graph along the y-axis, both sides would match perfectly.")]
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

x = np.linspace(-5, 5, 1000)
y1 = x**2
y2 = x**3
y3 = 1/x
y4 = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, 'red', label='x^2')
plt.plot(x, y2, 'blue', label='x^3')
plt.plot(x, y3, 'green', label='1/x')
plt.plot(x, y4, 'orange', label='1/x^2')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.ylim(-5, 5)
plt.xlim(-5, 5)
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
#v(20pt)
#only("1-")[- Red: $x^2$ (parabola) 🔴]
#only("2-")[- Blue: $x^3$ (cubic) 🔵]
#only("3-")[- Green: $1/x$ (reciprocal) 🟢]
#only("4-")[- Orange: $1/x^2$ (inverse square) 🟠]

#only("1")[#voiceover("Now, let's compare one over x squared with the other functions. The red graph shows x squared, a parabola that opens upward and touches the origin.")]
#only("2")[#voiceover("The blue graph represents x cubed. It passes through the origin and extends to positive infinity in the first quadrant and negative infinity in the third quadrant.")]
#only("3")[#voiceover("The green graph is one over x. It's similar to one over x squared but less steep and passes through the second and fourth quadrants.")]
#only("4")[#voiceover("Finally, our orange graph, one over x squared, is the steepest near zero and approaches the x-axis most quickly as x increases or decreases.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- $1/x^2$ is steeper than $1/x$ near x = 0 📐]
#v(20pt)
#only("2-")[- $1/x^2$ approaches x-axis faster than $1/x$ 🏃‍♂️]
#v(20pt)
#only("3-")[- Unlike $x^2$ and $x^3$, $1/x^2$ never crosses x-axis ❌]
#v(20pt)
#only("4-")[- $1/x^2$ is always positive, unlike $1/x$ and $x^3$ ➕]

#only("1")[#voiceover("Let's summarize the key points. One over x squared is steeper than one over x near x equals zero.")]
#only("2")[#voiceover("It also approaches the x-axis faster than one over x as x increases or decreases.")]
#only("3")[#voiceover("Unlike x squared and x cubed, one over x squared never crosses the x-axis.")]
#only("4")[#voiceover("Finally, one over x squared is always positive, unlike one over x and x cubed which can be negative. Great job understanding these power functions!")]
]