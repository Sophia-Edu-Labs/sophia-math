#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Power Functions 📈]

#v(40pt)

#only("1-")[- Power function: $f(x) = x^n$, where $n$ is a natural number]
#only("2-")[- Graph changes shape depending on $n$]
#only("3-")[- Even $n$ produces parabolas 📉]

#v(40pt)

#only("1")[
#voiceover("Let's quickly recap what we learned about power functions. A power function is a function of the form f of x equals x to the power of n, where n is a natural number.")
]

#only("2")[
#voiceover("The shape of the graph of a power function changes depending on the value of n.")
]

#only("3")[
#voiceover("When n is an even number, the graph of the power function is a parabola.")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))

for n in [2, 4, 6]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Even Power Functions')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("4")[
#voiceover("Here you can see the graphs of some even power functions, namely x squared, x to the power of 4, and x to the power of 6. All of these graphs are parabolas, just with different steepness.")
]

]