#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Was sind Funktionenscharen?")
]
#text(size: 30pt, weight: "bold")[Funktionenscharen]
#v(40pt)
#only("2")[
#voiceover("Eine Funktionenschar ist eine Zusammenfassung von Funktionen, die sich in einem Parameter unterscheiden. Zum Beispiel kann man eine Schar von Parabeln betrachten, die sich in ihrer Streckung unterscheiden. ...")
]
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.set_aspect('equal')
# Define the parameter a for the parabolas
a_values = [0.5, 1, 1.5, 2]
# Plot the parabolas
x = np.linspace(-5, 5, 100)
for a in a_values:
  y = a * x**2
  ax.plot(x, y, label=f'a={a}')
# Add legend and grid
ax.legend(fontsize=16, loc='upper left')
ax.grid(True)
# Set labels for axes
ax.set_xlabel('x', fontsize=16)
ax.set_ylabel('y', fontsize=16)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("3")[
#voiceover("Hier siehst du die Visualisierung einer Funktionenschar. Die Schar besteht aus mehreren Parabeln, die sich in ihrem Parameter a unterscheiden. ...")
]
#v(40pt)
#only("4-")[
- Funktionenschar $f_a(x) = a x^2$
]
#only("4")[
#voiceover("Also nochmal die Begriffe. Die Funktionenschar hier wird durch die Gleichung f_a(x) = ax^2 beschrieben. ...")
]
#only("5-")[
- Parameter: a
]
#only("5")[
#voiceover("a ist der Parameter, der die einzelnen Funktionen in der Schar unterscheidet. ... Verschiedene Werte für a ergeben verschiedene Parabeln in der Schar.")
]
#only("6")[- $f_{0.5}(x) = 0.5x^2$, $f_1(x) = x^2$, ...]#only("7")[- #text(fill:red)[$f_{0.5}(x) = 0.5x^2$], $f_1(x) = x^2$, ...]#only("8-")[- $f_{0.5}(x) = 0.5x^2$, #text(fill:red)[$f_1(x) = x^2$], ...]
#only("6")[
#voiceover("Und so bezeichnet man dann die einzelnen Funktionen in der Schar. Man setzt den spezifischen Wert für a ein. ... Also heißt die")
]
#only("7")[
#voiceover("linke Funktion f_0.5 von x gleich 0.5 mal x quadrat.")
]
#only("8")[
#voiceover("Und die rechte Funktion heißt f_1 von x gleich x quadrat.")
]
]