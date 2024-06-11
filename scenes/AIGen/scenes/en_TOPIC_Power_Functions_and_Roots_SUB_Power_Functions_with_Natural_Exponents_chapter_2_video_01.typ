#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing Even and Odd Power Functions]
#v(40pt)
#only("1-")[- Even power functions: $f(x) = x^n$ with even $n$]
#v(20pt)
#only("2-")[- Odd power functions: $f(x) = x^n$ with odd $n$]
#v(20pt)
#only("3-")[- Symmetry properties: y-axis symmetry for even, origin symmetry for odd]
#v(20pt)
#only("4-")[- Let's explore these properties with examples!]
#only("1")[
#voiceover("In this video, we will compare even and odd power functions. Even power functions are of the form f of x equals x to the n, where n is an even number.")
]
#only("2")[
#voiceover("Odd power functions, on the other hand, are of the form f of x equals x to the n, where n is an odd number.")
]
#only("3")[
#voiceover("We will also look at their symmetry properties. Even power functions are symmetric about the y-axis, while odd power functions are symmetric about the origin.")
]
#only("4")[
#voiceover("Let's explore these properties with some examples!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions]
#v(40pt)
#only("1-")[$f(x) = x^2$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 400)
y = x**2

plt.plot(x, y, label='$f(x) = x^2$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#v(20pt)
#only("3-")[- Symmetric about the y-axis]
#only("1")[
#voiceover("Let's start with an even power function. Consider f of x equals x squared.")
]
#only("2")[
#voiceover("Here is the graph of f of x equals x squared. Notice how the graph is symmetric about the y-axis.")
]
#only("3")[
#voiceover("This symmetry means that if you fold the graph along the y-axis, both sides will match perfectly.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Odd Power Functions]
#v(40pt)
#only("1-")[$f(x) = x^3$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 400)
y = x**3

plt.plot(x, y, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
]
#v(20pt)
#only("3-")[- Symmetric about the origin]
#only("1")[
#voiceover("Now, let's look at an odd power function. Consider f of x equals x cubed.")
]
#only("2")[
#voiceover("Here is the graph of f of x equals x cubed. Notice how the graph is symmetric about the origin.")
]
#only("3")[
#voiceover("This symmetry means that if you rotate the graph 180 degrees around the origin, both sides will match perfectly.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Even power functions: symmetric about the y-axis]
#v(20pt)
#only("2-")[- Odd power functions: symmetric about the origin]
#only("1")[
#voiceover("To summarize, even power functions are symmetric about the y-axis.")
]
#only("2")[
#voiceover("Odd power functions, on the other hand, are symmetric about the origin.")
]
]