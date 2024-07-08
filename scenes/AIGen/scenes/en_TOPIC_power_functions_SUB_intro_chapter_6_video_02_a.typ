#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Cubic Equations]
#v(40pt)

#only("1-")[- Equation: $x^3 = 27$ 📝]
#v(20pt)
#only("2-")[- Goal: Find the value of $x$ 🎯]

#only("1")[
#voiceover("Great job on tackling this problem! Let's walk through the solution step-by-step. We're dealing with the equation x cubed equals 27.")
]

#only("2")[
#voiceover("Our goal is to find the value of x that satisfies this equation.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Cube Root]
#v(40pt)

#only("1-")[- $x^3 = 27$ is equivalent to $x = root(3, 27)$ 🔍]
#v(20pt)
#only("2-")[- The cube root is the inverse operation of cubing 🔄]

#only("1")[
#voiceover("The first step is to recognize that this equation is asking us to find the cube root of 27. We can rewrite x cubed equals 27 as x equals the cube root of 27.")
]

#only("2")[
#voiceover("Remember, the cube root is the inverse operation of cubing a number. It 'undoes' the cubing operation.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Calculate the Cube Root]
#v(40pt)

#only("1-")[- $root(3, 27) = 3$ 🧮]
#v(20pt)
#only("2-")[- Verify: $3^3 = 3 dot 3 dot 3 = 27$ ✅]

#only("1")[
#voiceover("Now, let's calculate the cube root of 27. The cube root of 27 is 3.")
]

#only("2")[
#voiceover("We can verify this by cubing 3: three times three times three equals 27.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)

#only("1-")[#text(size: 24pt)[The solution is $x = 3$ 🎉]]

#only("1")[
#voiceover("Therefore, our final answer is x equals 3. This value of x satisfies the original equation x cubed equals 27.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 4, 100)
y = x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='y = x³')
plt.axhline(y=27, color='r', linestyle='--', label='y = 27')
plt.axvline(x=3, color='g', linestyle='--', label='x = 3')
plt.plot(3, 27, 'ro', markersize=10)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of y = x³')
plt.legend()
plt.grid(True)

plt.annotate('(3, 27)', xy=(3, 27), xytext=(3.2, 35),
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()

```,
width: 360pt),
caption: [Graph of $y = x^3$ showing the solution point (3, 27)]
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our solution. The blue curve shows y equals x cubed. The red dashed line is y equals 27, and the green dashed line is x equals 3. The point where these lines intersect, at (3, 27), is our solution.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)

#only("1-")[- Cube root is the inverse of cubing 🔄]
#v(20pt)
#only("2-")[- $root(3, a) = b$ means $b^3 = a$ 🔑]
#v(20pt)
#only("3-")[- Always verify your solution! ✅]

#only("1")[
#voiceover("Let's recap the key points. First, remember that the cube root is the inverse operation of cubing.")
]

#only("2")[
#voiceover("Second, the cube root of a equals b means that b cubed equals a.")
]

#only("3")[
#voiceover("Finally, it's always a good practice to verify your solution by plugging it back into the original equation.")
]
]