#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
#v(40pt)
#only("1-")[- A function $f$ is continuous at a point $a$ if:]
#v(20pt)
#only("2-")[  $lim_(x->a) f(x) = f(a)$]
#only("1")[
#voiceover("A function f is continuous at a point a if the limit of f of x as x approaches a equals f of a.")
]
#only("2")[
#voiceover("In mathematical notation, this is written as the limit of f of x as x approaches a equals f of a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- As $x$ gets closer to $a$, $f(x)$ gets closer to $f(a)$ 🎯]
#v(20pt)
#only("2-")[- No jumps or gaps in the graph 📈]
#only("1")[
#voiceover("Intuitively, this means that as x gets closer to a, f of x gets closer to f of a. The function approaches its value at a smoothly.")
]
#only("2")[
#voiceover("There are no jumps or gaps in the graph of a continuous function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $f(x) = x^2$]
#v(20pt)
#only("2-")[Is $f$ continuous at $a = 1$? 🤔]
#v(20pt)
#only("3-")[
$lim_(x->1) f(x) = lim_(x->1) x^2 = 1^2 = 1$
$f(1) = 1^2 = 1$
]
#v(20pt)
#only("4-")[$lim_(x->1) f(x) = f(1)$, so $f$ is continuous at $a = 1$ ✅]
#only("1")[
#voiceover("Let's consider the function f of x equals x squared.")
]
#only("2")[
#voiceover("Is f continuous at a equals 1?")
]
#only("3")[
#voiceover("The limit of f of x as x approaches 1 is the limit of x squared as x approaches 1, which is 1 squared, or 1. f of 1 is also 1 squared, which is 1.")
]
#only("4")[
#voiceover("Since the limit of f of x as x approaches 1 equals f of 1, f is continuous at a equals 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', label='f(x) = x^2')
plt.scatter(1, 1, color='red', label='(1, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Continuity of f(x) = x^2 at a = 1')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the function f of x equals x squared. The red point represents the point (1, 1). As you can see, the function is smooth and continuous at this point, with no gaps or jumps.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Continuity: $lim_(x->a) f(x) = f(a)$ 📏]
#v(20pt)
#only("2-")[- Intuitively: no jumps or gaps in the graph 📈]
#v(20pt)
#only("3-")[- Check by comparing the limit and the function value 🔍]
#only("1")[
#voiceover("In summary, a function is continuous at a point a if the limit of the function as x approaches a equals the function value at a.")
]
#only("2")[
#voiceover("Intuitively, this means the function has no jumps or gaps in its graph.")
]
#only("3")[
#voiceover("To check for continuity, compare the limit of the function as x approaches a with the function value at a. If they're equal, the function is continuous at that point.")
]
]