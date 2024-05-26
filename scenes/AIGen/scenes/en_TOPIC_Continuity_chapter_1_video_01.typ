#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
#v(40pt)
#only("1-")[- Consider behavior as $x$ approaches a value from one side]
#v(20pt)
#only("2-")[- Left-hand limit: $lim_(x → a^-)$]
#v(20pt)
#only("3-")[- Right-hand limit: $lim_(x → a^+)$]
#only("1")[
#voiceover("One-sided limits consider the behavior of a function as the input x approaches a certain value from one side, either the left or the right.")
]
#only("2")[
#voiceover("The left-hand limit, written as the limit as x approaches a from the left, looks at the function's behavior as x gets closer to a from values less than a.")
]
#only("3")[
#voiceover("On the other hand, the right-hand limit, written as the limit as x approaches a from the right, considers the function's behavior as x gets closer to a from values greater than a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the function $f(x) = $ #text(fill: aqua)[$(x - 1)/(x - 1)$]]
#v(20pt)
#only("2-")[What happens as $x$ approaches 1?]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.where(x != 1, (x - 1) / (x - 1), 1)

x = np.linspace(0, 2, 1000)
y = f(x)

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue')
plt.scatter(1, 1, color='red', label='Removable discontinuity at x = 1')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlim(0, 2)
plt.ylim(-0.5, 1.5)
plt.legend()
plt.title('Graph of f(x) = (x - 1) / (x - 1)')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Let's consider the function f of x equals x minus 1 divided by x minus 1.")
]
#only("2")[
#voiceover("What happens as x approaches 1? This is an interesting case because if we directly substitute x equals 1, we get 0 divided by 0, which is undefined.")
]
#only("3")[
#voiceover("However, if we look at the graph, we see that the function is defined and continuous everywhere except at x equals 1. This is known as a removable discontinuity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Left and Right Limits]
#v(40pt)
#only("1-")[- As $x$ approaches 1 from the left: $lim_(x → 1^-) f(x) = 1$]
#v(20pt)
#only("2-")[- As $x$ approaches 1 from the right: $lim_(x → 1^+) f(x) = 1$]
#v(20pt)
#only("3-")[- Both one-sided limits exist and are equal]
#v(20pt)
#only("4-")[- $lim_(x → 1) f(x) = 1$ 🎉]
#only("1")[
#voiceover("As x approaches 1 from the left, the limit of f of x is 1.")
]
#only("2")[
#voiceover("Similarly, as x approaches 1 from the right, the limit of f of x is also 1.")
]
#only("3")[
#voiceover("In this case, both one-sided limits exist and are equal.")
]
#only("4")[
#voiceover("Therefore, we can say that the limit of f of x as x approaches 1 is equal to 1, even though f of 1 is not defined.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- One-sided limits consider behavior from left or right]
#v(20pt)
#only("2-")[- If both one-sided limits exist and are equal, the limit exists]
#v(20pt)
#only("3-")[- Useful for analyzing functions with discontinuities or piecewise definitions]
#only("1")[
#voiceover("In summary, one-sided limits consider the behavior of a function as the input approaches a value from either the left or the right side.")
]
#only("2")[
#voiceover("If both one-sided limits exist and are equal, then we can say that the overall limit exists, even if the function is not defined at that point.")
]
#only("3")[
#voiceover("One-sided limits are particularly useful for analyzing functions with discontinuities or piecewise definitions, where the behavior of the function may differ depending on which side we approach from.")
]
]