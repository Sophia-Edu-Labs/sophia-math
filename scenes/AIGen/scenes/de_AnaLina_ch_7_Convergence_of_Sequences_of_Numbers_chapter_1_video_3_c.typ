#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von $a_n = 1/n$]
#v(40pt)
#only("1-")[Großartig! Das ist die richtige Antwort. Schauen wir uns an, wie wir die Konvergenz und den Grenzwert der Folge $a_n = 1/n$ bestimmen können.]
#only("1")[
#voiceover("Das ist nicht ganz richtig. Lassen Sie uns die richtige Lösung überprüfen, um die Konvergenz und den Grenzwert der Folge a sub n gleich 1 durch n zu bestimmen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition 🧠]
#v(40pt)
#only("1-")[Wenn $n$ größer wird, wird $1/n$ kleiner und nähert sich 0.]
#only("1")[
#voiceover("Intuitiv wird 1 durch n kleiner und nähert sich 0, wenn n größer wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formaler Beweis 📜]
#v(40pt)
#only("1-")[Sei $ε > 0$ gegeben.]
#only("2-")[Wähle $N = 1/ε$.]
#only("3-")[Für alle $n ≥ N$ gilt:]
#only("4-")[$|a_n - 0| = |1/n - 0| = 1/n ≤ 1/N = ε$]
#only("5-")[Daher konvergiert $a_n = 1/n$ nach der Definition der Konvergenz gegen 0.]

#only("1")[
#voiceover("Um es formal zu beweisen, sei epsilon eine beliebige positive reelle Zahl.")
]
#only("2")[
#voiceover("Wir wählen großes N als 1 durch epsilon.")
]
#only("3")[
#voiceover("Für alle n größer oder gleich großes N gilt:")
]
#only("4")[
#voiceover("Der Betrag von a sub n minus 0, was gleich dem Betrag von 1 durch n minus 0 ist, was gleich 1 durch n ist, ist kleiner oder gleich 1 durch großes N, was epsilon ist.")
]
#only("5")[
#voiceover("Daher konvergiert die Folge a sub n gleich 1 durch n nach der Definition der Konvergenz gegen 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 20, 1)
a_n = 1/n

plt.figure(figsize=(10,6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=8)
plt.axhline(y=0, color='r', linestyle='-', linewidth=2)
plt.title('Konvergenz von $a_n = 1/n$', fontsize=20)
plt.xlabel('n', fontsize=16)
plt.ylabel('$a_n$', fontsize=16)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Folge. Wenn n größer wird, nähern sich die in Blau dargestellten Folgenglieder der roten Linie bei y gleich 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]
#v(40pt)
#only("1-")[Die Folge $a_n = 1/n$ konvergiert gegen 0.]
#only("1")[
#voiceover("Abschließend konvergiert die Folge a sub n gleich 1 durch n gegen 0.")
]
]