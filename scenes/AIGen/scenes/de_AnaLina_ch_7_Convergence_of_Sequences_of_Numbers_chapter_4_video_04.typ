#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche 🚀]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert ins Unendliche, wenn ihre Glieder ohne Schranke wachsen, wenn $n$ gegen unendlich geht.]
#only("1")[
#voiceover("Eine Folge a sub n divergiert ins Unendliche, wenn ihre Glieder ohne Schranke wachsen, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Definiere die Folge
def a(n):
    return n

# Erzeuge n-Werte
n = np.arange(1, 11)

# Berechne die Folgenglieder
a_n = a(n)

# Erstelle das Diagramm
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.legend(fontsize=14)
plt.title('Folge, die ins Unendliche divergiert', fontsize=16)
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten Sie die Folge a sub n gleich n. Wenn n zunimmt, wachsen die Glieder der Folge immer weiter ohne obere Grenze.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition 📜]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, so dass für alle $n >= N$, $a_n > M$.]
#only("1")[
#voiceover("Formal divergiert eine Folge a sub n ins Unendliche, wenn für jedes M größer als 0 ein N existiert, so dass für alle n größer oder gleich N, a sub n größer als M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Divergenz ins Unendliche bedeutet, dass die Glieder ohne Schranke wachsen 📈]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n$ 🔢]
#v(20pt)
#only("3-")[- Formale Definition: für jedes $M > 0$ existiert ein $N$, so dass für alle $n >= N$, $a_n > M$ 📜]
#only("1")[
#voiceover("Zusammenfassend bedeutet Divergenz ins Unendliche, dass die Glieder einer Folge ohne Schranke wachsen.")
]
#only("2")[
#voiceover("Ein Beispiel ist die Folge a sub n gleich n.")
]
#only("3")[
#voiceover("Und die formale Definition besagt, dass für jedes M größer als 0 ein N existiert, so dass für alle n größer oder gleich N, a sub n größer als M ist.")
]
]