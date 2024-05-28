#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[One-Sided Limits Recap]
#v(40pt)
#only("1-")[- Check behavior as input approaches from one side 🔍]
#v(20pt)
#only("2-")[- Left-hand limit: $lim_(x->a^-)f(x)$ ⬅]
#v(20pt)
#only("3-")[- Right-hand limit: $lim_(x->a^+)f(x)$ ➡]
#only("1")[
#voiceover("In this recap, we'll review the key points about practicing one-sided limits. One-sided limits involve checking the behavior of a function as the input approaches a certain value from one side, either the left or the right.")
]
#only("2")[
#voiceover("The left-hand limit, written as the limit of f of x as x approaches a from the left, examines the function's behavior as the input approaches the value a from values less than a.")
]
#only("3")[
#voiceover("On the other hand, the right-hand limit, written as the limit of f of x as x approaches a from the right, looks at the function's behavior as the input approaches the value a from values greater than a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    if x < 0:
        return -1
    else:
        return 1

x = np.linspace(-2, 2, 1000)
y = [f(i) for i in x]

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x)')
plt.scatter(0, -1, color='red', label='Left-hand limit')
plt.scatter(0, 1, color='green', label='Right-hand limit')
plt.axvline(0, color='black', linestyle='--', linewidth=1)
plt.axhline(0, color='black', linestyle='-', linewidth=1)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's consider an example. Suppose we have a function f of x that equals negative 1 when x is less than 0, and equals 1 when x is greater than or equal to 0. We want to find the left-hand and right-hand limits of this function as x approaches 0.")
]
#v(20pt)
#only("2-")[- $lim_(x->0^-)f(x)=-1$ ⬅]
#v(20pt)
#only("3-")[- $lim_(x->0^+)f(x)=1$ ➡]
#only("2")[
#voiceover("The left-hand limit, as x approaches 0 from the left, is equal to negative 1. This is because for all values of x less than 0, the function value is negative 1.")
]
#only("3")[
#voiceover("The right-hand limit, as x approaches 0 from the right, is equal to 1. This is because for all values of x greater than or equal to 0, the function value is 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- One-sided limits are important for analyzing function behavior 📈]
#v(20pt)
#only("2-")[- They help identify discontinuities and asymptotes 🔍]
#v(20pt)
#only("3-")[- Practice is key to mastering one-sided limits! 💪]
#only("1")[
#voiceover("In conclusion, one-sided limits are crucial for analyzing the behavior of functions near specific points. They allow us to examine how a function behaves as we approach a point from the left or right side.")
]
#only("2")[
#voiceover("One-sided limits are particularly useful for identifying discontinuities and asymptotes in functions. If the left-hand and right-hand limits at a point are different, it indicates a discontinuity at that point.")
]
#only("3")[
#voiceover("As with any mathematical concept, practice is essential to mastering one-sided limits. The more you work with various functions and calculate their one-sided limits, the more comfortable and proficient you'll become in analyzing function behavior.")
]
]