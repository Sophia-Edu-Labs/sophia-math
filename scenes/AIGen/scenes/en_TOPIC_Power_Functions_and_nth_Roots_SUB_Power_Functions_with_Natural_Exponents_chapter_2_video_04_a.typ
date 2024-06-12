#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great, you recognized that correctly! Let's go through the solution step by step together.")
]
#text(size: 30pt, weight: "bold")[Symmetry of $f(x) = x^4$]

#v(40pt)

#only("2-")[- The function $f(x) = x^4$ is even]
#only("2")[
#voiceover("The function f of x equals x to the power of four is an even function.")
]

#only("3-")[- Even functions are symmetric about the y-axis]
#only("3")[
#voiceover("Even functions are symmetric about the y-axis.")
]

#only("4-")[- This means $f(-x) = f(x)$ for all x]
#only("4")[
#voiceover("This means that f of negative x equals f of x for all x.")
]

#only("5-")[- Let's verify this property for $f(x) = x^4$]
#only("5")[
#voiceover("Let's verify this property for f of x equals x to the power of four.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]

#v(40pt)

#only("1-")[$f(x) = x^4$]
#only("1")[
#voiceover("We start with the function f of x equals x to the power of four.")
]

#only("2-")[$f(-x) = (-x)^4$]
#only("2")[
#voiceover("We substitute negative x into the function, which gives us f of negative x equals negative x to the power of four.")
]

#only("3-")[$f(-x) = x^4$]
#only("3")[
#voiceover("Since negative x to the power of four is equal to x to the power of four, we have f of negative x equals x to the power of four.")
]

#only("4-")[$f(-x) = f(x)$]
#only("4")[
#voiceover("Therefore, f of negative x equals f of x, verifying that the function is even.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]

#v(40pt)

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
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here is the graph of the function f of x equals x to the power of four.")
]

#only("2")[
#voiceover("Notice that the graph is symmetric about the y-axis, confirming that the function is even.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[- $f(x) = x^4$ is an even function]
#only("1")[
#voiceover("In conclusion, the function f of x equals x to the power of four is an even function.")
]

#only("2-")[- It is symmetric about the y-axis]
#only("2")[
#voiceover("It is symmetric about the y-axis.")
]

#only("3-")[- This means $f(-x) = f(x)$ for all x]
#only("3")[
#voiceover("This means that f of negative x equals f of x for all x.")
]

]
