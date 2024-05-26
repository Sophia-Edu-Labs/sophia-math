#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Limits Rückblick 🎓]

#only("1-")[
- Grenzwert: Verhalten einer Funktion, wenn der Input einen bestimmten Wert annähert
]

#only("2-")[
- Beispiel: $lim_(x -> 2) f(x) = 4$
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return x**2

x = np.linspace(-1, 5, 100)
y = f(x)

plt.figure(figsize=(6, 4))
plt.plot(x, y, 'b-', label='f(x) = x^2')
plt.axhline(y=4, color='r', linestyle='--', label='y = 4')
plt.axvline(x=2, color='g', linestyle='--', label='x = 2')
plt.grid(True)
plt.xlim(-1, 5)
plt.ylim(0, 10)
plt.legend(loc='upper left')
plt.title('Grenzwert von f(x), wenn x sich 2 nähert')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```, width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In diesem Rückblick wiederholen wir das Konzept der Grenzwerte. Der Grenzwert einer Funktion beschreibt das Verhalten der Funktion, wenn der Input einen bestimmten Wert annähert.")
]

#only("2")[
#voiceover("Zum Beispiel, wenn wir sagen, der Grenzwert von f von x, wenn x sich 2 nähert, ist gleich 4, bedeutet das, dass f von x sich 4 nähert, wenn x sich 2 nähert.")
]

#only("3")[
#voiceover("Wir können dies in einem Diagramm visualisieren. Hier sehen wir die Funktion f von x gleich x Quadrat. Wenn x sich 2 nähert, markiert durch die grüne Linie, nähert sich f von x 4, markiert durch die rote Linie.")
]

#only("4-")[
- Hauptidee: Grenzwert beschreibt den Trend, nicht den genauen Wert
]

#only("4")[
#voiceover("Es ist wichtig zu bedenken, dass der Grenzwert den Trend der Funktion beschreibt, nicht unbedingt den genauen Wert der Funktion an diesem Punkt.")
]

#only("5-")[
- Nützlich zum Verständnis des Verhaltens von Funktionen 📈
]

#only("5")[
#voiceover("Das Verständnis von Grenzwerten ist entscheidend für die Analyse des Verhaltens von Funktionen, insbesondere in der Nähe bestimmter interessanter Punkte.")
]

]