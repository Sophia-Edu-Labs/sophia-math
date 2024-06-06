#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function]
#v(40pt)
#only("1-")[
- $f(x) = x^3$
]
#only("2-")[
- Evaluate $f(2)$
]
#only("1")[
#voiceover("Not quite. Let's review the correct solution: the given power function is f of x equals x cubed.")
]
#only("2")[
#voiceover("We need to evaluate f of 2, which means we substitute x with 2 in the function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[
- $f(2) = 2^3$
]
#only("2-")[
- $f(2) = 8$
]
#only("1")[
#voiceover("Substituting 2 for x, we get f of 2 equals 2 cubed.")
]
#only("2")[
#voiceover("Now, 2 cubed is equal to 2 times 2 times 2, which is 8.")
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
y = x**3

plt.figure(figsize=(6, 6))
plt.plot(x, y, 'b-', label='f(x) = x^3')
plt.plot(2, 8, 'ro', label='f(2) = 8')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Power Function f(x) = x^3')
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
#voiceover("Here's a graph of the function f of x equals x cubed. The red dot on the graph represents the point (2, 8), which is the result of evaluating f at 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result]
#v(40pt)
#only("1-")[
- $f(2) = 2^3 = 8$ ✅
]
#only("1")[
#voiceover("Therefore, the value of f of 2 for the power function f of x equals x cubed is 8. Great work!")
]
]