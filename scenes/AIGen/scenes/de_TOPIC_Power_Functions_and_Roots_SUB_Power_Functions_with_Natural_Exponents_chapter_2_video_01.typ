#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade und Ungerade Potenzfunktionen]
#v(40pt)
#only("1-")[- $f(x) = x^n$, wobei $n$ eine natürliche Zahl ist]
#v(20pt)
#only("2-")[- Gerade: $n = 2, 4, 6, ...$]
#v(20pt)
#only("3-")[- Ungerade: $n = 1, 3, 5, ...$]
#only("1")[
#voiceover("Potenzfunktionen haben die Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Wenn n gerade ist, wie 2, 4, 6 und so weiter, nennen wir die Potenzfunktion eine gerade Potenzfunktion.")
]
#only("3")[
#voiceover("Wenn n ungerade ist, wie 1, 3, 5 und so weiter, nennen wir die Potenzfunktion eine ungerade Potenzfunktion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Symmetrie gerader Potenzfunktionen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))
plt.plot(x, x**2, label='$x^2$')
plt.plot(x, x**4, label='$x^4$')
plt.plot(x, x**6, label='$x^6$')
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Gerade Potenzfunktionen')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Gerade Potenzfunktionen, wie x quadrat, x hoch vier und x hoch sechs, sind symmetrisch zur y-Achse. Das bedeutet, wenn du den Graphen an der y-Achse spiegelst, sieht er gleich aus.")
]
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Symmetrie ungerader Potenzfunktionen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))
plt.plot(x, x**1, label='$x^1$')
plt.plot(x, x**3, label='$x^3$')
plt.plot(x, x**5, label='$x^5$')
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Ungerade Potenzfunktionen')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Ungerade Potenzfunktionen, wie x, x hoch drei und x hoch fünf, sind symmetrisch zum Ursprung. Das bedeutet, wenn du den Graphen um 180 Grad um den Ursprung drehst, sieht er gleich aus.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Gerade Potenzfunktionen ($n = 2, 4, 6, ...$) sind symmetrisch zur y-Achse 📈]
#v(20pt)
#only("2-")[- Ungerade Potenzfunktionen ($n = 1, 3, 5, ...$) sind symmetrisch zum Ursprung 🎯]
#only("1")[
#voiceover("Zusammenfassend sind gerade Potenzfunktionen, bei denen der Exponent eine gerade Zahl ist, symmetrisch zur y-Achse.")
]
#only("2")[
#voiceover("Ungerade Potenzfunktionen, bei denen der Exponent eine ungerade Zahl ist, sind symmetrisch zum Ursprung.")
]
]