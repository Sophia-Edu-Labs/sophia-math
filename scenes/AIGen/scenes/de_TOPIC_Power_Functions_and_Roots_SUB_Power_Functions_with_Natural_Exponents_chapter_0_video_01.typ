#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
#only("1-")[- Von der Form $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ ist eine natürliche Zahl 🔢]
#v(20pt)
#only("3-")[- Beispiele: $f(x) = x^2$, $g(x) = x^5$]
#only("1")[
#voiceover("Potenzfunktionen sind Funktionen der Form f von x gleich x hoch n.")
]
#only("2")[
#voiceover("Hierbei ist n eine natürliche Zahl. Das bedeutet, es ist eine positive ganze Zahl wie 1, 2, 3 und so weiter.")
]
#only("3")[
#voiceover("Einige Beispiele für Potenzfunktionen sind f von x gleich x quadrat und g von x gleich x hoch fünf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphen von Potenzfunktionen]
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

for n in range(1, 6):
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Power Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist ein Graph, der mehrere Potenzfunktionen zeigt. Beachte, wie sich die Form ändert, wenn der Exponent n größer wird.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften]
#v(40pt)
#only("1-")[- Definitionsbereich: alle reellen Zahlen ℝ]
#v(20pt)
#only("2-")[- Gerade $n$: Symmetrisch zur y-Achse 📈]
#v(20pt)
#only("3-")[- Ungerade $n$: Symmetrisch zum Ursprung 🎯]
#only("1")[
#voiceover("Potenzfunktionen sind für alle reellen Zahlen definiert. Das bedeutet, ihr Definitionsbereich ist die gesamte reelle Achse.")
]
#only("2")[
#voiceover("Wenn n gerade ist, ist der Graph symmetrisch zur y-Achse. Das bedeutet, wenn du den Graphen entlang der y-Achse faltest, passen die beiden Hälften perfekt übereinander.")
]
#only("3")[
#voiceover("Wenn n ungerade ist, ist der Graph symmetrisch zum Ursprung. Wenn du den Graphen um 180 Grad um den Ursprung drehst, sieht er genau gleich aus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzfunktionen: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ ist eine natürliche Zahl 🔢]
#v(20pt)
#only("3-")[- Definitionsbereich: alle reellen Zahlen ℝ]
#v(20pt)
#only("4-")[- Gerade $n$: Symmetrisch zur y-Achse 📈]
#v(20pt)
#only("5-")[- Ungerade $n$: Symmetrisch zum Ursprung 🎯]
#only("1")[
#voiceover("Zusammenfassend sind Potenzfunktionen Funktionen der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Denke daran, natürliche Zahlen sind positive ganze Zahlen wie 1, 2, 3 und so weiter.")
]
#only("3")[
#voiceover("Der Definitionsbereich von Potenzfunktionen umfasst alle reellen Zahlen.")
]
#only("4")[
#voiceover("Wenn der Exponent n gerade ist, ist der Graph symmetrisch zur y-Achse.")
]
#only("5")[
#voiceover("Und wenn n ungerade ist, ist der Graph symmetrisch zum Ursprung.")
]
]