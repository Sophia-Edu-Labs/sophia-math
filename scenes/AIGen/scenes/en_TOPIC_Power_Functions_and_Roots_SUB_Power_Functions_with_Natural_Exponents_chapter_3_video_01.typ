#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior of Power Functions as $x$ Approaches Infinity]
#v(40pt)
#only("1-")[- Let's explore what happens to $f(x) = x^n$ as $x$ gets larger and larger 🌠]
#only("1")[#voiceover("Welcome! Today, we will explore what happens to the function f of x equals x to the power of n as x gets larger and larger.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
#only("1-")[- A power function is of the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- Here, $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- As $x$ increases, we want to see how $f(x)$ behaves]
#only("1")[#voiceover("First, let's understand what a power function is. A power function is of the form f of x equals x to the power of n.")]
#only("2")[#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")]
#only("3")[#voiceover("Now, as x increases, we want to see how the value of f of x behaves.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: $f(x) = x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 400)
y = x**2

plt.plot(x, y, label='$f(x) = x^2$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.title('Graph of $f(x) = x^2$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Let's take an example. Consider the function f of x equals x squared.")]
#only("2")[#voiceover("As you can see from the graph, as x increases, the value of f of x also increases.")]
]



#slide()[
#text(size: 30pt, weight: "bold")[General Behavior]
#v(40pt)
#only("1-")[- For any natural number $n$, $f(x) = x^n$ grows larger as $x$ increases]
#v(20pt)
#only("2-")[- This means $f(x) arrow infinity$ as $x arrow infinity$]
#only("1")[#voiceover("In general, for any natural number n, the function f of x equals x to the power of n grows larger as x increases.")]
#only("2")[#voiceover("This means that f of x approaches infinity as x approaches infinity.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions are of the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- As $x$ increases, $f(x)$ also increases for any natural number $n$]
#v(20pt)
#only("3-")[- Therefore, $f(x) arrow infinity$ as $x arrow infinity$]
#only("1")[#voiceover("To summarize, power functions are of the form f of x equals x to the power of n.")]
#only("2")[#voiceover("As x increases, the value of f of x also increases for any natural number n.")]
#only("3")[#voiceover("Therefore, f of x approaches infinity as x approaches infinity.")]
]