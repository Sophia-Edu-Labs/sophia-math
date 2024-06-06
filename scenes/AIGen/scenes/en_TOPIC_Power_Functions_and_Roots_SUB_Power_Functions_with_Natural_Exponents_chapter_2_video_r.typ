#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even vs Odd Power Functions]

#v(40pt)

#only("1-")[
- Even power functions: $f(x) = x^n$, where $n$ is even
- Odd power functions: $f(x) = x^n$, where $n$ is odd
]

#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)

plt.figure(figsize=(8, 6))

plt.plot(x, x**2, label='$x^2$ (Even)', color='blue')
plt.plot(x, x**3, label='$x^3$ (Odd)', color='red')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Even and Odd Power Functions')
plt.grid(True)
plt.legend()
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)

plt.show()
```,
width: 360pt),
)
]
]
]

#v(40pt)

#only("3-")[
- Even power functions are symmetric about the y-axis 📈
- Odd power functions are symmetric about the origin 🎯
]

#only("1")[
#voiceover("Let's recap the difference between even and odd power functions. Even power functions have the form f of x equals x to the n, where n is an even number. Odd power functions have the form f of x equals x to the n, where n is an odd number.")
]

#only("2")[
#voiceover("Here's a graph showing an example of an even power function, x squared in blue, and an odd power function, x cubed in red.")
]

#only("3")[
#voiceover("The key difference in their symmetry is that even power functions are symmetric about the y-axis, while odd power functions are symmetric about the origin.")
]
]