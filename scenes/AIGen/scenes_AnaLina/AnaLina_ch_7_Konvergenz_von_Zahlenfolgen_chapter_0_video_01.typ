#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Was ist eine Zahlenfolge? 🔢]
#v(40pt)
#only("1-")[- Geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Beispiel: $a_n = (1, 2, 3, 4, 5, ...)$]
#v(20pt)
#only("3-")[- Allgemeine Schreibweise: $a_n = (a_1, a_2, a_3, ...)$]
#only("1")[
#voiceover("Eine Zahlenfolge ist eine geordnete Liste von Zahlen. Die Zahlen in der Liste nennen wir Folgenglieder oder Terme.")
]
#only("2")[
#voiceover("Ein Beispiel für eine Zahlenfolge ist a_n gleich 1, 2, 3, 4, 5 und so weiter. Hier ist jedes Folgenglied um 1 größer als das vorherige.")
]
#only("3")[
#voiceover("In der allgemeinen Schreibweise bezeichnen wir eine Zahlenfolge mit a_n gleich a_1, a_2, a_3 und so weiter, wobei a_n das n-te Folgenglied ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Darstellung von Zahlenfolgen 📈]
#v(40pt)
#only("1-")[- Explizite Darstellung: $a_n = n^2$]
#v(20pt)
#only("2-")[- Rekursive Darstellung: $a_1 = 1$, $a_{n+1} = a_n + 2$]
#v(20pt)
#only("3-")[- Grafische Darstellung:]
#v(10pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n**2

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = n^2$')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Grafische Darstellung der Zahlenfolge')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Es gibt verschiedene Möglichkeiten, eine Zahlenfolge darzustellen. In der expliziten Darstellung geben wir eine Formel an, die jedes Folgenglied direkt berechnet, zum Beispiel a_n gleich n quadrat.")
]
#only("2")[
#voiceover("In der rekursiven Darstellung geben wir das erste Folgenglied an und eine Rechenvorschrift, wie man aus einem Folgenglied das nächste berechnet, zum Beispiel a_1 gleich 1 und a_{n+1} gleich a_n plus 2.")
]
#only("3")[
#voiceover("Schließlich können wir eine Zahlenfolge auch grafisch darstellen, indem wir die Folgenglieder als Punkte in einem Koordinatensystem einzeichnen und verbinden.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]
#v(40pt)
#only("1-")[- Zahlenfolge: geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Folgenglieder: Zahlen in der Liste, bezeichnet mit $a_n$]
#v(20pt)
#only("3-")[- Darstellungsformen: explizit, rekursiv, grafisch]
#only("1")[
#voiceover("Fassen wir zusammen: Eine Zahlenfolge ist eine geordnete Liste von Zahlen.")
]
#only("2")[
#voiceover("Die Zahlen in der Liste nennen wir Folgenglieder und bezeichnen sie mit a_n, wobei n die Position in der Liste angibt.")
]
#only("3")[
#voiceover("Wir können Zahlenfolgen auf verschiedene Arten darstellen: explizit durch eine Formel, rekursiv durch eine Rechenvorschrift oder grafisch in einem Koordinatensystem.")
]
]