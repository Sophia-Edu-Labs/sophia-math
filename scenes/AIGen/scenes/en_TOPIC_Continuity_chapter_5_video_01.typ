#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuous Extendability]
#v(40pt)
#only("1-")[- Function can be made continuous 🌉]
#v(20pt)
#only("2-")[- By defining/redefining values at certain points 📝]
#only("1")[
#voiceover("A function is said to be continuously extendable if it can be made continuous.")
]
#only("2")[
#voiceover("This is done by defining or redefining the function's values at certain points.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $f(x) = (x^2 - 1)/(x - 1)$]
#v(20pt)
#only("2-")[Simplify: $f(x) = x + 1$ for $x ≠ 1$]
#v(20pt)
#only("3-")[But $f(1)$ is undefined 😕]
#only("1")[
#voiceover("Let's consider the function f of x equals x squared minus 1 over x minus 1.")
]
#only("2")[
#voiceover("We can simplify this to f of x equals x plus 1 for all x not equal to 1.")
]
#only("3")[
#voiceover("However, f of 1 is undefined, because we would be dividing by zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Making it Continuous]
#v(40pt)
#only("1-")[To make $f(x)$ continuous, define $f(1) = 2$]
#v(20pt)
#only("2-")[Now, $lim_(x->1) (x + 1) = 2 = f(1)$ ✅]
#v(20pt)
#only("3-")[So, $f(x)$ is continuously extendable at $x = 1$]
#only("1")[
#voiceover("To make f of x continuous, we can simply define f of 1 to be equal to 2.")
]
#only("2")[
#voiceover("Now, the limit of x plus 1 as x approaches 1 is equal to 2, which is the same as the value we defined for f of 1.")
]
#only("3")[
#voiceover("Therefore, f of x is continuously extendable at x equals 1.")
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

x = np.linspace(-5, 5, 1000)
y = (x**2 - 1) / (x - 1)

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue', label='f(x) = (x^2 - 1) / (x - 1)')
plt.scatter(1, 2, color='red', label='Defined point: f(1) = 2')
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Continuous Extendability')
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
#voiceover("Here's a visualization of the function. The blue line represents the function, and the red dot shows the point where we defined the function to make it continuous.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Continuous extendability: making a function continuous 🌉]
#v(20pt)
#only("2-")[- Define/redefine values at certain points 📝]
#v(20pt)
#only("3-")[- Ensures continuity at those points ✅]
#only("1")[
#voiceover("In summary, continuous extendability is about making a function continuous.")
]
#only("2")[
#voiceover("This is achieved by defining or redefining the function's values at certain points.")
]
#only("3")[
#voiceover("By doing so, we ensure that the function is continuous at those points.")
]
]