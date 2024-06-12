#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job recognizing the symmetry of the graph of f of x equals x to the power of four! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Symmetry of $f(x) = x^4$]

#v(40pt)

#only("2-")[#text()[$ f(x) = x^4 $]]
#only("2")[
#voiceover("We're considering the function f of x equals x to the power of four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Function]

#v(40pt)

#only("1-")[- Definition: $f(x) = f(-x)$ for all $x$ in the domain]
#only("1")[
#voiceover("To determine if the function is even, we need to check if f of x equals f of negative x for all x in the domain.")
]

#only("2-")[$ f(-x) = (-x)^4 $]
#only("2")[
#voiceover("Let's substitute negative x into the function. We get f of negative x equals negative x to the power of four.")
]

#only("3-")[$ f(-x) = x^4 $]
#only("3")[
#voiceover("Since negative x to the power of four is the same as x to the power of four, we have f of negative x equals x to the power of four.")
]

#only("4-")[- Conclusion: $f(x) = f(-x)$, so $f(x)$ is even]
#only("4")[
#voiceover("Therefore, f of x equals f of negative x, which means the function is even.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Symmetry]

#v(40pt)

#only("1-")[- Symmetry about the y-axis]
#only("1")[
#voiceover("An even function has symmetry about the y-axis.")
]

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y = x**4

plt.plot(x, y, label='$f(x) = x^4$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graph of $f(x) = x^4$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.show()

```,
width: 360pt),
)
]
]

#only("2")[
#voiceover("Here is the graph of f of x equals x to the power of four. Notice that it is symmetric about the y-axis.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- $f(x) = x^4$ is an even function]
#only("1")[
#voiceover("To summarize, the function f of x equals x to the power of four is an even function.")
]

#only("2-")[- Symmetric about the y-axis]
#only("2")[
#voiceover("This means it is symmetric about the y-axis.")
]
]