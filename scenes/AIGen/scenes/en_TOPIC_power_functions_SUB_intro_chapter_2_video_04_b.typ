#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's review the correct solution for the symmetry of the function f of x equals x cubed.")
]

#text(size: 30pt, weight: "bold")[Symmetry of $f(x) = x^3$]

#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 $]]

#only("2")[
#voiceover("We're looking at the function f of x equals x cubed.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Rotational Symmetry]

#v(40pt)

#only("1-")[- Rotational symmetry about the origin 🔄]
#v(20pt)
#only("2-")[- Rotation by 180° gives the same graph]

#only("1")[
#voiceover("This function has rotational symmetry about the origin.")
]

#only("2")[
#voiceover("This means if we rotate the graph by 180 degrees around the origin, it looks exactly the same.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing $f(x) = x^3$]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x³')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Graph of f(x) = x³')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a graph of f of x equals x cubed. Notice how the curve passes through the origin and extends symmetrically in both directions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of $f(x) = x^3$]

#v(40pt)

#only("1-")[- $f(-x) = -f(x)$ for all $x$]
#v(20pt)
#only("2-")[- Example: $f(-2) = -8$ and $f(2) = 8$]

#only("1")[
#voiceover("A key property of this function is that f of negative x equals negative f of x for all x.")
]

#only("2")[
#voiceover("For example, f of negative 2 equals negative 8, and f of 2 equals 8. This illustrates the rotational symmetry.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Odd Function]

#v(40pt)

#only("1-")[- $x^3$ is an odd function]
#v(20pt)
#only("2-")[- Odd functions have rotational symmetry about the origin]

#only("1")[
#voiceover("The function x cubed is what we call an odd function.")
]

#only("2")[
#voiceover("All odd functions have this rotational symmetry about the origin, which is why we see this behavior in our graph.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- $f(x) = x^3$ has rotational symmetry about the origin 🔄]
#v(20pt)
#only("2-")[- It's an odd function with the property $f(-x) = -f(x)$ ⚖️]
#v(20pt)
#only("3-")[- Understanding symmetry helps in graphing and analyzing functions 📊]

#only("1")[
#voiceover("To summarize, f of x equals x cubed has rotational symmetry about the origin.")
]

#only("2")[
#voiceover("It's an odd function with the property that f of negative x equals negative f of x.")
]

#only("3")[
#voiceover("Understanding this symmetry can help us in graphing and analyzing this and similar functions. Great work on recognizing this important property!")
]
]