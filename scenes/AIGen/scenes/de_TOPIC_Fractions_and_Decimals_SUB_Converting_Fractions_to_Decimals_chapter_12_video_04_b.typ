#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider war das nicht korrekt. Lass uns gemeinsam durch die Lösung gehen, um zu sehen, wie wir $15/8$ in eine Dezimalzahl umwandeln.")
]

#text(size: 30pt, weight: "bold")[Umwandlung von $15/8$ in eine Dezimalzahl]

#v(40pt)

#only("2-")[#text()[$15/8$]]
#only("2")[
#voiceover("Wir beginnen mit dem Bruch fünfzehn Achtel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz: Multiplizieren mit $125/125$]
#v(40pt)
#only("1-")[- Zähler und Nenner mit 125 multiplizieren ✖️]
#v(20pt)
#only("2-")[- Dadurch wird der Nenner 1000 🎯]
#only("1")[
#voiceover("Unser Ansatz ist es, sowohl den Zähler als auch den Nenner mit 125 zu multiplizieren.")
]
#only("2")[
#voiceover("Wir wählen 125, weil der Nenner dadurch 1000 wird, was leicht in eine Dezimalzahl umgewandelt werden kann.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Multiplikation]
#v(40pt)
#only("1-")[$15/8 = (15 × 125)/(8 × 125)$]
#v(20pt)
#only("2-")[$= 1875/1000$]
#only("1")[
#voiceover("Lass uns sowohl den Zähler als auch den Nenner mit 125 multiplizieren. Fünfzehn mal 125 ist 1875, und acht mal 125 ist 1000.")
]
#only("2")[
#voiceover("Unser Bruch wird also zu 1875 durch 1000.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Dezimalumwandlung]
#v(40pt)
#only("1-")[$1875/1000 = 1.875$]
#v(20pt)
#only("2-")[#text(fill: green)[✓ Die Dezimalform von $15/8$ ist $1.875$]]
#only("1")[
#voiceover("Nun, 1875 geteilt durch 1000 ist leicht in eine Dezimalzahl umzuwandeln. Wir verschieben einfach das Komma um drei Stellen nach links.")
]
#only("2")[
#voiceover("Das ergibt 1.875. Daher ist die Dezimalform von $15/8$ 1.875.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 6))

x = np.linspace(0, 2, 1000)
y = 15/8 * np.ones_like(x)

ax.plot(x, y, 'b-', linewidth=2)
ax.axhline(y=15/8, color='r', linestyle='--')
ax.text(2.02, 15/8, '1.875', verticalalignment='center')

ax.set_xlim(0, 2)
ax.set_ylim(0, 3)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Visualisierung von $15/8 = 1.875$')
ax.grid(True)

plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unseres Ergebnisses. Die horizontale rote gestrichelte Linie zeigt den Wert von $15/8$, der gleich $1.875$ ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wir haben mit $15/8$ begonnen 📊]
#v(20pt)
#only("2-")[- Multipliziert mit $125/125$ um $1875/1000$ zu erhalten 🔢]
#v(20pt)
#only("3-")[- Umgewandelt in Dezimal: $1.875$ 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir mit dem Bruch $15/8$ begonnen.")
]
#only("2")[
#voiceover("Wir haben sowohl den Zähler als auch den Nenner mit 125 multipliziert, um $1875/1000$ zu erhalten.")
]
#only("3")[
#voiceover("Schließlich haben wir dies in die Dezimalzahl $1.875$ umgewandelt. Großartige Arbeit bei der Lösung dieses Problems!")
]
]