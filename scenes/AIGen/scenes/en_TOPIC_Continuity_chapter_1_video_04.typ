#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits Recap]
#only("1-")[
#v(40pt)
- Consider behavior as $x$ approaches a value from one side 🔍
]
#only("2-")[
#v(20pt)
- Left-hand limit: $lim_(x -> a^-)$
]
#only("3-")[
#v(20pt)
- Right-hand limit: $lim_(x -> a^+)$
]
#only("4-")[
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.where(x < 0, x**2, np.exp(-x))

x = np.linspace(-2, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, linewidth=2, label='f(x)')
plt.scatter(0, f(0), color='red', s=100, label='Discontinuity at x=0')
plt.axvline(0, color='gray', linestyle='--', linewidth=1)
plt.xlim(-2, 2)
plt.ylim(0, 4)
plt.grid(True)
plt.legend(fontsize=12)
plt.title('One-Sided Limits Example', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('f(x)', fontsize=14)
plt.show()
```, width: 360pt),
)
]
]
]
#only("1")[
#voiceover("One-sided limits consider the behavior of a function as the input approaches a certain value from one side, either the left or the right.")
]
#only("2")[
#voiceover("The left-hand limit, denoted as the limit as x approaches a from the left, looks at the function's behavior as x gets closer to a from values less than a.")
]
#only("3")[
#voiceover("Similarly, the right-hand limit, denoted as the limit as x approaches a from the right, looks at the function's behavior as x gets closer to a from values greater than a.")
]
#only("4")[
#voiceover("Here's an example of a function with different left and right-hand limits at x equals 0. Notice how the function behaves differently as we approach 0 from the left and right sides.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[
- One-sided limits are essential for analyzing discontinuities 📈
]
#only("2-")[
#v(20pt)
- Continuity requires both one-sided limits to exist and be equal 🤝
]
#only("3-")[
#v(20pt)
- One-sided limits help understand function behavior near critical points 🔍
]
#only("1")[
#voiceover("One-sided limits are crucial for analyzing discontinuities in functions. They allow us to see how a function behaves near a point where it may not be continuous.")
]
#only("2")[
#voiceover("For a function to be continuous at a point, both the left-hand and right-hand limits must exist and be equal to each other and the function value at that point.")
]
#only("3")[
#voiceover("By examining one-sided limits, we gain a deeper understanding of how a function behaves near critical points, such as discontinuities or points of non-differentiability.")
]
]