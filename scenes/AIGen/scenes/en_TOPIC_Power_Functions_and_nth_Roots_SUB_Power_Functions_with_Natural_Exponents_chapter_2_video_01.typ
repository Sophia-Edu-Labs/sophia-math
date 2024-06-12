#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#only("1")[
#voiceover("Let's explore how the graph of $f(x) = x^n$ changes shape depending on the value of $n$.")]
#only("2-")[- For even $n$: Symmetric about the y-axis]
#v(20pt)
#only("3-")[- For odd $n$: Symmetric about the origin]
#only("2")[
#voiceover("When $n$ is an even number, the graph is symmetric about the y-axis.")]
#only("3")[
#voiceover("When $n$ is an odd number, the graph is symmetric about the origin.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even $n$ Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
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
#only("1")[
#voiceover("Here is the graph of $f(x) = x^2$. Notice how it is symmetric about the y-axis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Odd $n$ Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
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
#only("1")[
#voiceover("Now, let's look at the graph of $f(x) = x^3$. Notice how it is symmetric about the origin.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- For even $n$: Symmetric about the y-axis]
#v(20pt)
#only("2-")[- For odd $n$: Symmetric about the origin]
#only("1")[
#voiceover("In summary, the graph of $f(x) = x^n$ changes shape depending on whether $n$ is even or odd.")]
#only("2")[
#voiceover("For even $n$, the graph is symmetric about the y-axis.")]
#only("3")[
#voiceover("For odd $n$, the graph is symmetric about the origin.")]
]