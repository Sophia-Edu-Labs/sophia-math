#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^4$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 1000)
y = x**4

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, linewidth=2, color='blue', label='$f(x) = x^4$')
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.set_title('Graph of $f(x) = x^4$')
ax.grid(True)
ax.legend(fontsize=12)
ax.set_xlim(-3, 3)
ax.set_ylim(0, 81)

plt.show()
```,
width: 360pt),
)
]
]
// The graph of f(x) = x^4 is plotted using matplotlib
#only("1")[
#voiceover("Not quite. Let's review the correct solution and see why the graph of the function f of x equals x to the power of 4 is a steeper parabola than f of x equals x squared.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- Consider points on the graph 📈]
#v(20pt)
#only("2-")[- As $|x|$ increases, $x^4$ increases more rapidly than $x^2$ 📶]
#v(20pt)
#only("3-")[- Example: $2^4=16$ vs $2^2=4$ 🧮]
#v(20pt)
#only("4-")[- Results in a steeper parabola 📐]
#only("1")[
#voiceover("To understand the shape, let's consider some points on the graph.")
]
#only("2")[
#voiceover("As the absolute value of x increases, x to the fourth power increases more rapidly than x squared.")
]  
#only("3")[
#voiceover("For example, 2 to the fourth power equals 16, while 2 squared equals only 4.")
]
#only("4")[
#voiceover("This rapid increase results in a parabola that is steeper than the one for x squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $f(x) = x^4$ is a parabola 📊]
#v(20pt)  
#only("2-")[- Steeper than $f(x) = x^2$ due to rapid increase of $x^4$ 📈]
#v(20pt)
#only("3-")[- Characteristic shape of even power functions 🎓]
#only("1")[
#voiceover("In summary, the graph of f of x equals x to the fourth power is a parabola.")
]
#only("2")[
#voiceover("It is steeper than the parabola of f of x equals x squared due to the more rapid increase of x to the fourth power compared to x squared.")
]
#only("3")[  
#voiceover("This steeper parabolic shape is characteristic for even power functions like x to the fourth power, x to the sixth power, and so on.")
]
]