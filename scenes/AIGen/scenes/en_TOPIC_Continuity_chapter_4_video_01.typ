#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Practicing Continuity]
#v(40pt)
#only("1-")[- Check the limit and function values at various points 🔍]
#v(20pt)
#only("2-")[- Example: $f(x) = (x^2 - 1)/(x - 1)$]
#only("1")[
#voiceover("To practice checking continuity, we need to look at the limit and the function value at various points.")
]
#only("2")[
#voiceover("Let's consider the function f of x equals x squared minus 1 over x minus 1 as an example.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Continuity]
#v(40pt)
#only("1-")[- Simplify $f(x) = x + 1$ for $x \neq 1$]
#v(20pt)
#only("2-")[- Check the limit: $lim_(x -> 1) (x + 1) = 2$]
#v(20pt)
#only("3-")[- Define $f(1) = 2$]
#v(20pt)
#only("4-")[- Now $lim_(x -> 1) f(x) = f(1)$, so $f(x)$ is continuous at $x = 1$ ✅]
#only("1")[
#voiceover("First, we simplify the function. For x not equal to 1, f of x simplifies to x plus 1.")
]
#only("2")[
#voiceover("Next, we check the limit as x approaches 1. The limit of x plus 1 as x approaches 1 is equal to 2.")
]
#only("3")[
#voiceover("Now, we define f of 1 to be equal to 2.")
]
#only("4")[
#voiceover("With this definition, the limit of f of x as x approaches 1 is equal to f of 1. Therefore, f of x is continuous at x equals 1.")
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

def f(x):
    return (x**2 - 1) / (x - 1) if x != 1 else 2

x = np.linspace(0, 2, 100)
y = [f(xi) for xi in x]

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue', label='f(x)')
plt.scatter(1, 2, color='red', label='f(1) = 2')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Continuity of f(x) at x = 1')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the function. The blue line represents f of x, and the red dot shows the point where we defined f of 1 to be 2. As you can see, the function is continuous at x equals 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- To check continuity, examine the limit and function value 🔍]
#v(20pt)
#only("2-")[- If $lim_(x -> a) f(x) = f(a)$, then $f(x)$ is continuous at $x = a$ ✅]
#v(20pt)
#only("3-")[- Practicing continuity involves checking various points 📝]
#only("1")[
#voiceover("In summary, to check continuity, we examine the limit and the function value at a point.")
]
#only("2")[
#voiceover("If the limit of f of x as x approaches a is equal to f of a, then f of x is continuous at x equals a.")
]
#only("3")[
#voiceover("Practicing continuity involves checking various points to build understanding and familiarity with the concept.")
]
]