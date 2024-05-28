#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits]
#v(40pt)
#only("1-")[- Check behavior as $x$ approaches a value from one side 🔍]
#v(20pt)
#only("2-")[- Left-hand limit: $x$ approaches from the left ⬅]
#v(20pt)
#only("3-")[- Right-hand limit: $x$ approaches from the right ➡]
#only("1")[
#voiceover("One-sided limits involve checking the behavior of a function as the input x approaches a certain value from one side.")
]
#only("2")[
#voiceover("The left-hand limit looks at the function's behavior as x approaches the value from the left.")
]
#only("3")[
#voiceover("On the other hand, the right-hand limit examines the function's behavior as x approaches the value from the right.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Function]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.piecewise(x, [x < 0, x >= 0], [lambda x: x + 1, lambda x: x - 1])

x = np.linspace(-5, 5, 1000)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, color='blue', linewidth=2)
plt.scatter(0, -1, color='red', s=100, label='Left-hand limit')
plt.scatter(0, 1, color='green', s=100, label='Right-hand limit')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.legend()
plt.title("Piecewise Function")
plt.xlabel("x")
plt.ylabel("f(x)")
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's consider this piecewise function. It's defined differently for x less than 0 and x greater than or equal to 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Left-Hand Limit]
#v(40pt)
#only("1-")[- As $x$ approaches 0 from the left ⬅]
#v(20pt)
#only("2-")[- $f(x) = x + 1$ for $x < 0$]
#v(20pt)
#only("3-")[- $lim_(x->0^-) f(x) = 0 + 1 = 1$ 🔴]
#only("1")[
#voiceover("To find the left-hand limit, we look at the function's behavior as x approaches 0 from the left.")
]
#only("2")[
#voiceover("For x less than 0, the function is defined as f of x equals x plus 1.")
]
#only("3")[
#voiceover("So, the left-hand limit as x approaches 0 is equal to 0 plus 1, which is 1. This is represented by the red dot on the graph.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Right-Hand Limit]
#v(40pt)
#only("1-")[- As $x$ approaches 0 from the right ➡]
#v(20pt)
#only("2-")[- $f(x) = x - 1$ for $x >= 0$]
#v(20pt)
#only("3-")[- $lim_(x->0^+) f(x) = 0 - 1 = -1$ 🟢]
#only("1")[
#voiceover("Now, for the right-hand limit, we examine the function's behavior as x approaches 0 from the right.")
]
#only("2")[
#voiceover("When x is greater than or equal to 0, the function is defined as f of x equals x minus 1.")
]
#only("3")[
#voiceover("Therefore, the right-hand limit as x approaches 0 is equal to 0 minus 1, which is negative 1. This is shown by the green dot on the graph.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- One-sided limits check behavior from one side 🔍]
#v(20pt)
#only("2-")[- Left-hand limit: $x$ approaches from left ⬅]
#v(20pt)
#only("3-")[- Right-hand limit: $x$ approaches from right ➡]
#v(20pt)
#only("4-")[- Limits may differ, indicating a discontinuity 📈]
#only("1")[
#voiceover("In summary, one-sided limits allow us to check a function's behavior as the input approaches a value from one side.")
]
#only("2")[
#voiceover("The left-hand limit considers the function's behavior as x approaches from the left.")
]
#only("3")[
#voiceover("While the right-hand limit looks at the function's behavior as x approaches from the right.")
]
#only("4")[
#voiceover("If the left-hand and right-hand limits differ, it indicates a discontinuity in the function at that point.")
]
]