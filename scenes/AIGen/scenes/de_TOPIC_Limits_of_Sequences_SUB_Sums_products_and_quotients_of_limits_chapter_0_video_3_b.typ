#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[
- Gegebene Folge: $a_n = 2/n$
- Grenzwert, wenn $n$ gegen $infinity$ geht
]
#only("1")[
#voiceover("Leider ist das nicht die richtige Antwort. Schauen wir uns die Lösung Schritt für Schritt im Video an. Wir haben die Folge a_n gleich 2 durch n gegeben und müssen den Grenzwert bestimmen, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Folge verstehen]
#v(40pt)
#only("1-")[
- Wenn $n$ größer wird, wird $2/n$ kleiner
- Beispiel: $a_1 = 2/1 = 2$, $a_{10} = 2/10 = 0.2$, $a_{100} = 2/100 = 0.02$
]
#only("1")[
#voiceover("Zuerst wollen wir das Verhalten der Folge verstehen. Wenn n größer wird, wird der Bruch 2 durch n kleiner. Zum Beispiel, wenn n gleich 1 ist, ist a_1 gleich 2 durch 1, was 2 ist. Wenn n gleich 10 ist, ist a_10 gleich 2 durch 10, was 0.2 ist. Und wenn n gleich 100 ist, ist a_100 gleich 2 durch 100, was 0.02 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Den Grenzwert betrachten]
#v(40pt)
#only("1-")[
- Wenn $n$ gegen $infinity$ geht, geht $2/n$ gegen $0$
- Intuition: Eine Konstante durch eine immer größer werdende Zahl teilen
]
#only("1")[
#voiceover("Nun wollen wir betrachten, was im Grenzwert passiert. Wenn n gegen unendlich geht, geht 2 durch n gegen 0. Intuitiv ergibt das Sinn, weil wir eine Konstante, 2, durch eine immer größer werdende Zahl teilen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Den Grenzwert schreiben]
#v(40pt)
#only("1-")[
$ lim_(n -> infinity) a_n = lim_(n -> infinity) 2/n = 0 $
]
#only("1")[
#voiceover("Also können wir den Grenzwert schreiben als den Grenzwert von a_n, wenn n gegen unendlich geht, gleich dem Grenzwert von 2 durch n, wenn n gegen unendlich geht, was gleich 0 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)  # n-Werte von 1 bis 99
a_n = 2 / n  # Folgenglieder

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 2/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Grenzwert')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Folge $a_n = 2/n$, wenn n gegen unendlich geht')
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
#voiceover("Hier ist eine Visualisierung der Folge. Die blauen Punkte repräsentieren die Folgenglieder, und die rote Linie repräsentiert den Grenzwert, der 0 ist. Wie du sehen kannst, nähern sich die Folgenglieder mit zunehmendem n immer mehr der 0 an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[
$ lim_(n -> infinity) a_n = lim_(n -> infinity) 2/n = 0 $
]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert der Folge a_n gleich 2 durch n, wenn n gegen unendlich geht, gleich 0.")
]
]