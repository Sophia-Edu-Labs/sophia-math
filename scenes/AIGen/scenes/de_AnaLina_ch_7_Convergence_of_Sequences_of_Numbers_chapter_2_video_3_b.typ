#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Schauen wir uns Schritt für Schritt an, wie wir das lösen können.]
#only("1")[
#voiceover("Das ist nicht ganz richtig. Lassen Sie uns die richtige Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Sequenz]
#v(40pt)
#only("1-")[- $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("Wir haben die Sequenz b index n gleich 2n über n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Intuition 🤔]
#v(40pt)
#only("1-")[- Was passiert mit $b_n$, wenn $n$ größer wird?]
#v(20pt)
#only("2-")[- Der Zähler wächst schneller als der Nenner]
#only("1")[
#voiceover("Zuerst denken wir darüber nach, was mit b index n passiert, wenn n größer wird.")
]
#only("2")[
#voiceover("Wir sehen, dass der Zähler, 2n, schneller wächst als der Nenner, n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Teilen 🧮]
#v(40pt)
#only("1-")[- Teile Zähler und Nenner durch $n$]
#v(20pt)
#only("2-")[$ lim_(n->infinity) b_n = lim_(n->infinity) (2n)/(n+1) $]
#v(10pt)
#only("3-")[$ = lim_(n->infinity) (2)/(1+1/n) $]
#only("1")[
#voiceover("Um dies klarer zu sehen, teilen wir sowohl den Zähler als auch den Nenner durch n.")
]
#only("2")[
#voiceover("Das Limit von b index n, wenn n gegen unendlich geht, ist gleich dem Limit von 2n über n plus 1, wenn n gegen unendlich geht.")
]
#only("3")[
#voiceover("Dies vereinfacht sich zum Limit von 2 über 1 plus 1 durch n, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Limit auswerten 📈]
#v(40pt)
#only("1-")[- Wenn $n -> unendlich$, geht $1/n -> 0$]
#v(20pt)
#only("2-")[$ lim_(n->infinity) b_n = lim_(n->infinity) (2)/(1+1/n) $]
#v(10pt)
#only("3-")[$ = 2/1 = 2 $]
#only("1")[
#voiceover("Nun, wenn n gegen unendlich geht, geht 1 durch n gegen 0.")
]
#only("2")[
#voiceover("Das Limit wird also 2 über 1 plus 0.")
]
#only("3")[
#voiceover("Was gleich 2 über 1 ist, oder einfach 2.")
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

n = np.arange(1, 100)
b_n = 2*n / (n+1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'b-', label='$b_n$')
plt.axhline(y=2, color='r', linestyle='--', label='Limit')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$b_n$', fontsize=14)
plt.title('Konvergenz von $b_n$ zu 2', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Sequenz b index n. Wenn n größer wird, sehen Sie, dass b index n, dargestellt in Blau, seinem Limit von 2, dargestellt durch die rote gestrichelte Linie, immer näher kommt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit ✅]
#v(40pt)
#only("1-")[- $lim_(n->infinity) b_n = 2$]
#v(20pt)
#only("2-")[Großartige Arbeit bei der Lösung! 👍]
#only("1")[
#voiceover("Zusammenfassend ist das Limit der Sequenz b index n gleich 2n über n plus 1, wenn n gegen unendlich geht, gleich 2.")
]
#only("2")[
#voiceover("Großartige Arbeit bei der Lösung dieses Problems! Mach weiter so!")
]
]