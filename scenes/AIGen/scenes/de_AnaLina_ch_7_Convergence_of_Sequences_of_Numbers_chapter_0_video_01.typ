#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Folgen 📜]
#v(40pt)
#only("1-")[- Geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Beispiele: $a_n = (1, 2, 3, 4, 5, ...)$]
#v(20pt)
#only("3-")[- Definiert durch eine Formel für das $n$-te Glied]
#only("1")[
#voiceover("Eine Folge ist eine geordnete Liste von Zahlen. Die Zahlen in einer Folge folgen einer bestimmten Reihenfolge.")
]
#only("2")[
#voiceover("Zum Beispiel ist die Folge 1, 2, 3, 4, 5 und so weiter eine geordnete Liste, bei der jede Zahl um eins größer ist als die vorherige.")
]
#only("3")[
#voiceover("Folgen werden oft durch eine Formel für das n-te Glied definiert. Diese Formel sagt uns, wie wir jedes Glied der Folge finden können, wenn wir seine Position kennen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formel für das $n$-te Glied]
#v(40pt)
#only("1-")[- Allgemeine Form: $a_n = f(n)$]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 2n + 1$]
#v(20pt)
#only("3-")[  - $a_1 = 2(1) + 1 = 3$]
#only("4-")[  - $a_2 = 2(2) + 1 = 5$]
#only("5-")[  - $a_3 = 2(3) + 1 = 7$]
#only("1")[
#voiceover("Die Formel für das n-te Glied einer Folge wird normalerweise als a_n gleich irgendeine Funktion von n geschrieben.")
]
#only("2")[
#voiceover("Zum Beispiel betrachten wir die Folge, die durch a_n gleich 2n plus 1 definiert ist.")
]
#only("3")[
#voiceover("Um das erste Glied zu finden, setzen wir n gleich 1 in die Formel ein. Das ergibt a_1 gleich 2 mal 1 plus 1, was 3 ist.")
]
#only("4")[
#voiceover("Für das zweite Glied verwenden wir n gleich 2. Also ist a_2 gleich 2 mal 2 plus 1, was 5 ist.")
]
#only("5")[
#voiceover("Ähnlich ist für das dritte Glied a_3 gleich 2 mal 3 plus 1, was 7 ergibt. Und wir können diesen Prozess für jeden Wert von n fortsetzen.")
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

n = np.arange(1, 11)  # Erste 10 Glieder
a_n = 2*n + 1  # Formel für das n-te Glied

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Folge: a_n = 2n + 1', fontsize=16)
plt.grid(True)
plt.xticks(n)
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm der ersten 10 Glieder der Folge a_n gleich 2n plus 1. Wir können sehen, dass die Glieder linear mit n zunehmen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Folge: Geordnete Liste von Zahlen 📜]
#v(20pt)
#only("2-")[- Oft definiert durch eine Formel für das $n$-te Glied]
#v(20pt)
#only("3-")[  - Allgemeine Form: $a_n = f(n)$]
#v(20pt)
#only("4-")[  - Ermöglicht die Berechnung jedes Gliedes 🧮]
#only("1")[
#voiceover("Zusammenfassend ist eine Folge eine geordnete Liste von Zahlen.")
]
#only("2")[
#voiceover("Folgen werden oft durch eine Formel für das n-te Glied definiert.")
]
#only("3")[
#voiceover("Diese Formel wird normalerweise in der Form a_n gleich irgendeine Funktion von n geschrieben.")
]
#only("4")[
#voiceover("Wenn wir diese Formel kennen, können wir jedes Glied der Folge berechnen, wenn wir seine Position n kennen.")
]
]