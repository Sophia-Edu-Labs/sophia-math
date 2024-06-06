#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavior as $x \arrow infinity$]
#v(40pt)
#only("1-")[- Consider $f(x) = x^6$ as $x \arrow infinity$]
#only("2-")[- Recall: $f(x) = x^n \arrow infinity$ as $x \arrow infinity$ for $n > 0$]
#only("3-")[- Here: $n = 6 > 0$, so $f(x) = x^6 \arrow infinity$ as $x \arrow infinity$]
#only("1")[
#voiceover("Not quite. Let's review the correct solution. We want to determine the behavior of the function f of x equals x to the power of 6 as x approaches infinity.")
]
#only("2")[
#voiceover("Recall that for power functions of the form f of x equals x to the power of n, where n is a positive number, the function will approach infinity as x approaches infinity.")
]
#only("3")[
#voiceover("In our case, n equals 6, which is indeed greater than 0. Therefore, f of x equals x to the power of 6 will approach infinity as x approaches infinity.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y = x**6

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^6$')
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.title('Behavior of $f(x) = x^6$ as $x \arrow infinity$', fontsize=16)
plt.grid(True)
plt.legend(fontsize=12)

plt.xlim(0, 5)
plt.ylim(0, 20000)

plt.annotate('$f(x) \arrow infinity$ as $x \arrow infinity$', xy=(4, 10000), xytext=(2, 15000),
             arrowprops=dict(facecolor='black', shrink=0.05), fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("We can visualize this behavior in a graph. As x gets larger and larger, moving to the right on the x-axis, the function values of f of x equals x to the power of 6 grow very rapidly, shooting up towards infinity.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- For power functions $f(x) = x^n$ with $n > 0$:]
#only("2-")[$\quad$- As $x \arrow infinity$, $f(x) \arrow infinity$]
#only("3-")[$\quad$- As $x \arrow -infinity$, $f(x) \arrow infinity$ if $n$ is even]
#only("4-")[$\quad$- As $x \arrow -infinity$, $f(x) \arrow -infinity$ if $n$ is odd]
#only("1")[
#voiceover("To summarize, for power functions of the form f of x equals x to the power of n, where n is a positive number:")
]
#only("2")[
#voiceover("As x approaches positive infinity, f of x will also approach infinity.")
]
#only("3")[
#voiceover("As x approaches negative infinity, f of x will approach positive infinity if n is even,")
]
#only("4")[
#voiceover("and f of x will approach negative infinity if n is odd.")
]
]