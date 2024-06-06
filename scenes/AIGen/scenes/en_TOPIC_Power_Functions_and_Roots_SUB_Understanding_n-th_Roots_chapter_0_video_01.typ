#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Root 🌱]
#v(40pt)
#only("1-")[- Value that, when raised to the power of $n$, gives the original number]
#v(20pt)
#only("2-")[- Example: $root(3,8) = 2$ because $2^3 = 8$]
#v(20pt)
#only("3-")[- Notation: $root(n,a)$ where $n$ is the root and $a$ is the number]
#only("1")[
#voiceover("The n-th root of a number is a value that, when raised to the power of n, gives the original number.")
]
#only("2")[
#voiceover("For example, the cube root of 8, written as the 3rd root of 8, is equal to 2, because 2 cubed, or 2 to the power of 3, equals 8.")
]
#only("3")[
#voiceover("In general, we write the n-th root of a number a as 'root' with n as the first argument and a as the second argument. Here, n is the root and a is the original number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 8, 100)
y = x**(1/3)

plt.figure(figsize=(6, 6))
plt.plot(x, y, linewidth=2, label='$y=root(3,x)$')
plt.plot(2, 2, 'ro', markersize=10, label='(2, 2)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend(prop={'size': 14})
plt.title('Graph of $y=root(3,x)$', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a graph of the cube root function, y equals the cube root of x. The point (2, 2) is highlighted, showing that the cube root of 8 is 2, as 2 cubed equals 8.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- n-th root: value that, when raised to the power of $n$, gives the original number]
#v(20pt)
#only("2-")[- Notation: $root(n,a)$ where $n$ is the root and $a$ is the number]
#v(20pt)
#only("3-")[- Example: $root(3,8) = 2$ because $2^3 = 8$]
#only("1")[
#voiceover("To summarize, the n-th root of a number is a value that, when raised to the power of n, gives back the original number.")
]
#only("2")[
#voiceover("We write this using the 'root' notation, with n as the first argument representing the root, and a as the second argument representing the original number.")
]
#only("3")[
#voiceover("A key example is the cube root of 8, which equals 2, because 2 cubed, or 2 to the power of 3, equals 8.")
]
]