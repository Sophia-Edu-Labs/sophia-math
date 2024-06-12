#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#only("1-")[- How does the graph of $f(x) = x^n$ change with different values of $n$? 🤔]
#v(20pt)
#only("2-")[- For even $n$: Symmetric about the y-axis ↔️]
#v(20pt)
#only("3-")[- For odd $n$: Symmetric about the origin ⭕]
#only("1")[
#voiceover("Today, we will explore how the graph of the function f of x equals x to the power of n changes shape depending on the value of n. Let's dive in!")
]
#only("2")[
#voiceover("First, let's consider when n is an even number. In this case, the graph is symmetric about the y-axis.")
]
#only("3")[
#voiceover("Now, let's look at when n is an odd number. Here, the graph is symmetric about the origin.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Powers]
#v(40pt)
#only("1-")[- Example: $f(x) = x^2$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 400)
y = x**2

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
]
#only("1")[
#voiceover("Let's take an example where n is even. Consider the function f of x equals x squared.")
]
#only("2")[
#voiceover("As you can see from the graph, the function is symmetric about the y-axis. This means that if you fold the graph along the y-axis, both halves will match perfectly.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Odd Powers]
#v(40pt)
#only("1-")[- Example: $f(x) = x^3$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 400)
y = x**3

plt.plot(x, y, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graph of $f(x) = x^3$')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Now, let's consider an example where n is odd. Take the function f of x equals x cubed.")
]
#only("2")[
#voiceover("In this case, the graph is symmetric about the origin. This means that if you rotate the graph 180 degrees around the origin, it will look the same.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- The shape of $f(x) = x^n$ changes with $n$]
#v(20pt)
#only("2-")[- Even $n$: Symmetric about the y-axis ↔️]
#v(20pt)
#only("3-")[- Odd $n$: Symmetric about the origin ⭕]
#only("1")[
#voiceover("To summarize, the shape of the graph of the function f of x equals x to the power of n changes depending on the value of n.")
]
#only("2")[
#voiceover("When n is an even number, the graph is symmetric about the y-axis.")
]
#only("3")[
#voiceover("When n is an odd number, the graph is symmetric about the origin.")
]
]