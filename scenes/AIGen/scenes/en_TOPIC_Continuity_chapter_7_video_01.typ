#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits and Continuity]
#v(40pt)
#only("1-")[- Limits describe behavior near a point 📈]
#v(20pt)
#only("2-")[- Continuity means no gaps or jumps 🌉]
#only("1")[
#voiceover("Limits describe the behavior of a function as we approach a specific point. They tell us what value the function is getting close to, without necessarily reaching it.")
]
#only("2")[
#voiceover("Continuity, on the other hand, means that a function has no gaps or sudden jumps. If you can draw the graph of a function without lifting your pen, it's continuous.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Relationship]
#v(40pt)
#only("1-")[For continuity at $a$:]
#v(20pt)
#only("2-")[1. $f(a)$ must exist ✅]
#v(20pt)
#only("3-")[2. $lim_(x->a) f(x)$ must exist 📊]
#v(20pt)
#only("4-")[3. $lim_(x->a) f(x) = f(a)$ 🎯]
#only("1")[
#voiceover("For a function to be continuous at a point a, three conditions must be met.")
]
#only("2")[
#voiceover("First, the function value at a, f of a, must exist.")
]
#only("3")[
#voiceover("Second, the limit of the function as x approaches a must exist.")
]
#only("4")[
#voiceover("And third, this limit must be equal to the function value at a. In other words, the function approaches the same value that it takes at the point.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $f(x) = x^2$]
#v(20pt)
#only("2-")[At $a = 1$:]
#v(20pt)
#only("3-")[1. $f(1) = 1^2 = 1$ ✅]
#v(20pt)
#only("4-")[2. $lim_(x->1) x^2 = 1$ 📊]
#v(20pt)
#only("5-")[3. $lim_(x->1) x^2 = f(1)$ 🎯]
#only("1")[
#voiceover("Let's consider the function f of x equals x squared.")
]
#only("2")[
#voiceover("We'll check its continuity at the point a equals 1.")
]
#only("3")[
#voiceover("First, f of 1 exists and equals 1 squared, which is 1.")
]
#only("4")[
#voiceover("Second, the limit of x squared as x approaches 1 exists and also equals 1.")
]
#only("5")[
#voiceover("And third, this limit is equal to the function value at 1. Therefore, f of x equals x squared is continuous at x equals 1.")
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

x = np.linspace(-2, 4, 100)
y = x**2

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x)=x^2$')
ax.plot(1, 1, 'ro', markersize=10, label='$f(1)=1$')
ax.legend()
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.grid()
ax.set_title('Continuity of $f(x)=x^2$ at $x=1$')
ax.set_xlim(-2, 4)
ax.set_ylim(-1, 10)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph of f of x equals x squared. The function is continuous at x equals 1, as the limit equals the function value at this point, as shown by the red dot.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limits describe behavior near a point 📈]
#v(20pt)
#only("2-")[- Continuity: no gaps or jumps 🌉]
#v(20pt)
#only("3-")[- For continuity: limit = function value 🎯]
#only("1")[
#voiceover("To recap, limits describe the behavior of a function near a point,")
]
#only("2")[
#voiceover("while continuity means the function has no gaps or jumps.")
]
#only("3")[
#voiceover("For a function to be continuous at a point, the limit at that point must equal the function value.")
]
]