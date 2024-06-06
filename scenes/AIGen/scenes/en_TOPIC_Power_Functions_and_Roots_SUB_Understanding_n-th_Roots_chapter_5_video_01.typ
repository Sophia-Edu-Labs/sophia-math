#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with n-th Roots]
#v(40pt)
#only("1-")[To solve an equation with an n-th root, like $root(n, x) = a$:]
#v(20pt)
#only("2-")[1. Isolate the n-th root on one side of the equation]
#v(20pt)
#only("3-")[2. Raise both sides to the power of $n$]
#v(20pt)
#only("4-")[3. Simplify and solve for the variable]
#only("1")[
#voiceover("To solve an equation involving an n-th root, such as the n-th root of x equals a, we can follow these steps:")
]
#only("2")[
#voiceover("First, isolate the n-th root on one side of the equation.")
]
#only("3")[
#voiceover("Then, raise both sides of the equation to the power of n. This will eliminate the n-th root.")
]
#only("4")[
#voiceover("Finally, simplify the equation and solve for the variable.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let's solve the equation $root(3, x - 1) = 4$]
#v(20pt)
#only("2-")[1. The n-th root is already isolated: $root(3, x - 1) = 4$]
#v(20pt)
#only("3-")[2. Raise both sides to the power of 3: $(root(3, x - 1))^3 = 4^3$]
#v(20pt)
#only("4-")[3. Simplify: $x - 1 = 64$, then solve: $x = 65$]
#only("1")[
#voiceover("Let's look at an example. Suppose we want to solve the equation 'the cube root of x minus 1 equals 4'.")
]
#only("2")[
#voiceover("The cube root is already isolated on the left side of the equation.")
]
#only("3")[
#voiceover("Next, we raise both sides of the equation to the power of 3. This gives us 'the cube root of x minus 1, all cubed, equals 4 cubed'.")
]
#only("4")[
#voiceover("Simplifying the left side, we get 'x minus 1 equals 64'. Adding 1 to both sides, we find that x equals 65.")
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

x = np.linspace(0, 70, 100)
y1 = np.cbrt(x - 1)
y2 = np.full_like(x, 4)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, label=r'$\sqrt[3]{x-1}$')
ax.plot(x, y2, label=r'$y=4$')
ax.plot(65, 4, 'ro', markersize=10, label='Solution: (65, 4)')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph of $\sqrt[3]{x-1} = 4$')
ax.legend()
ax.grid()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph visualizing the equation. The blue curve represents the cube root of x minus 1, and the orange line represents y equals 4. The point where these two intersect, marked in red, is the solution to the equation: x equals 65.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[To solve $root(n, x) = a$:]
#v(20pt)
#only("2-")[1. Isolate the n-th root 🎯]
#v(20pt)
#only("3-")[2. Raise both sides to the power of $n$ 📈]
#v(20pt)
#only("4-")[3. Simplify and solve for $x$ ✔]
#only("1")[
#voiceover("In summary, to solve an equation with an n-th root equal to a number:")
]
#only("2")[
#voiceover("First, isolate the n-th root on one side.")
]
#only("3")[
#voiceover("Then, raise both sides to the power of n.")
]
#only("4")[
#voiceover("Finally, simplify the equation and solve for the variable. This technique allows us to eliminate the n-th root and solve the equation.")
]
]