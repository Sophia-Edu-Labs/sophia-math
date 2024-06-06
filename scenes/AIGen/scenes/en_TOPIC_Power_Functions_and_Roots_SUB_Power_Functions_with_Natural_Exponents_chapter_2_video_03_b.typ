#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Symmetry of $f(x) = x^5$]
#v(40pt)
#only("1-")[#align(center)[#text()[The function $f(x) = x^5$ is an odd power function.]]]
#only("1")[
#voiceover("That's not quite right. Let's take a look at the correct solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Odd Power Functions]
#v(40pt)
#only("1-")[- Have an odd exponent (e.g., $x^1, x^3, x^5, ...$)]
#v(20pt)
#only("2-")[- Are symmetric about the origin 🎯]
#only("1")[
#voiceover("Odd power functions have an odd exponent, like x to the power of 1, x cubed, x to the fifth, and so on.")
]
#only("2")[
#voiceover("A key property of odd power functions is that they are symmetric about the origin.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetry about the Origin]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**5

fig, ax = plt.subplots(figsize=(6, 6))
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^5$')
plt.plot(x, -y, 'r--', linewidth=2, label='$f(-x) = -x^5$')

plt.legend(loc='upper right')
plt.grid(True, linestyle=':')
plt.xlim(-2, 2)
plt.ylim(-32, 32)
plt.title('Symmetry about the Origin')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("If we plot the function f of x equals x to the fifth power, shown here in blue, and its reflection f of negative x equals negative x to the fifth power, shown in red, we see that the graph is symmetric about the origin.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $f(x) = x^5$ is an odd power function]
#v(20pt)
#only("2-")[- Odd power functions are symmetric about the origin 🎯]
#v(20pt)
#only("3-")[- Therefore, $f(x) = x^5$ is symmetric about the origin ✅]
#only("1")[
#voiceover("To summarize, f of x equals x to the fifth is an odd power function.")
]
#only("2")[
#voiceover("We know that odd power functions are symmetric about the origin.")
]
#only("3")[
#voiceover("Therefore, we can conclude that f of x equals x to the fifth is indeed symmetric about the origin, not the y-axis.")
]
]