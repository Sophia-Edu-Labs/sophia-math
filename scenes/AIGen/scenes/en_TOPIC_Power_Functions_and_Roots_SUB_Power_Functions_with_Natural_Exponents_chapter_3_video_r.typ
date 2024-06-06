#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Power Functions as $x \to \infty$]
#v(40pt)
#only("1-")[- For $f(x) = x^n$, where $n$ is a natural number]
#only("1")[
#voiceover("Let's recap the behavior of power functions of the form f of x equals x to the power of n, where n is a natural number, as x approaches infinity.")
]
#v(20pt)
#only("2-")[- As $x \to \infty$, $f(x) \to \infty$]
#only("2")[
#voiceover("As x approaches infinity, the value of the function f of x also approaches infinity.")
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)

plt.figure(figsize=(8, 6))

for n in [1, 2, 3]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.title('Power Functions as $x \to \infty$', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(0, 10)
plt.ylim(0, 100)

plt.show()
```,
width: 360pt),
)
]
]
#only("3")[
#voiceover("This behavior holds true for any natural number n. As you can see in this plot, as x gets larger, the functions x to the power of 1, x squared, and x cubed all grow towards infinity.")
]
#v(20pt)
#only("4-")[- 🔑 Key takeaway: $\lim_{x \to \infty} x^n = \infty$ for $n \in \mathbb{N}$]
#only("4")[
#voiceover("The key takeaway is that the limit of x to the power of n as x approaches infinity equals infinity for any natural number n.")
]
]