#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Grenzwerte von Folgen 📈]

#v(40pt)

#only("1-")[- Grenzwert: Wert, dem die Folgenglieder näher kommen, wenn der Index $n$ gegen $∞$ geht]

#v(20pt)

#only("2-")[- Beispiel: $lim_(n -> ∞) 1/n = 0$]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='--', label='Grenzwert = 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Folge $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In diesem Rückblick wiederholen wir das Konzept der Grenzwerte von Folgen. Der Grenzwert einer Folge ist der Wert, dem die Folgenglieder näher kommen, wenn der Index n gegen unendlich geht.")
]

#only("2")[
#voiceover("Betrachte zum Beispiel die Folge a_n gleich 1 durch n. Wenn n gegen unendlich geht, nähern sich die Glieder dieser Folge immer mehr dem Wert 0. Daher sagen wir, dass der Grenzwert dieser Folge 0 ist.")
]

#only("3")[
#voiceover("Das können wir mit einem Diagramm veranschaulichen. Die blauen Punkte repräsentieren die Glieder der Folge für verschiedene Werte von n. Wenn n zunimmt, nähern sich die Punkte der roten gestrichelten Linie, die den Grenzwert 0 darstellt.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Grenzwert beschreibt das Langzeitverhalten einer Folge]

#v(20pt)

#only("2-")[- Folgenglieder nähern sich dem Grenzwert beliebig an, wenn $n$ zunimmt]

#v(20pt)

#only("3-")[- Das Verständnis von Grenzwerten ist entscheidend für fortgeschrittene mathematische Konzepte 🧮]

#only("1")[
#voiceover("Die wichtigste Erkenntnis ist, dass der Grenzwert einer Folge das Langzeitverhalten der Folge beschreibt.")
]

#only("2")[
#voiceover("Wenn n zunimmt, nähern sich die Glieder der Folge beliebig dem Grenzwert an.")
]

#only("3")[
#voiceover("Das Verständnis des Konzepts der Grenzwerte ist entscheidend für fortgeschrittene mathematische Konzepte, wie Reihen, Stetigkeit und Ableitungen.")
]

]