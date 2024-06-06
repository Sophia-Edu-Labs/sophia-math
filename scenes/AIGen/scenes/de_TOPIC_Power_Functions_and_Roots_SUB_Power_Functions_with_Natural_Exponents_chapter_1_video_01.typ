#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
#only("1-")[- Allgemeine Form: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ ist eine natürliche Zahl 🔢]
#v(20pt)
#only("3-")[- Die Form ändert sich mit $n$ 📈]
#only("1")[
#voiceover("Potenzfunktionen sind Funktionen der Form f von x gleich x hoch n.")
]
#only("2")[
#voiceover("In dieser Form ist n eine natürliche Zahl.")
]
#only("3")[
#voiceover("Das Interessante an Potenzfunktionen ist, dass sich ihr Graph je nach Wert von n verändert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ungerade Potenzen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))
plt.plot(x, x**1, label='$x^1$')
plt.plot(x, x**3, label='$x^3$')
plt.plot(x, x**5, label='$x^5$')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Ungerade Potenzfunktionen')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Wenn n eine ungerade Zahl ist, wie 1, 3 oder 5, geht der Graph durch den Ursprung und ist symmetrisch zum Ursprung.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))
plt.plot(x, x**2, label='$x^2$')
plt.plot(x, x**4, label='$x^4$')
plt.plot(x, x**6, label='$x^6$')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Gerade Potenzfunktionen')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Andererseits, wenn n eine gerade Zahl ist, wie 2, 4 oder 6, ist der Graph symmetrisch zur y-Achse und geht nicht durch den Ursprung, außer am Punkt null, null.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzfunktionen: $f(x) = x^n$ 📈]
#v(20pt)
#only("2-")[- Ungerade $n$: symmetrisch zum Ursprung 🔁]
#v(20pt)
#only("3-")[- Gerade $n$: symmetrisch zur y-Achse 🪞]
#only("1")[
#voiceover("Zusammenfassend sind Potenzfunktionen von der Form f von x gleich x hoch n.")
]
#only("2")[
#voiceover("Wenn n ungerade ist, ist der Graph symmetrisch zum Ursprung.")
]
#only("3")[
#voiceover("Und wenn n gerade ist, ist der Graph symmetrisch zur y-Achse.")
]
]