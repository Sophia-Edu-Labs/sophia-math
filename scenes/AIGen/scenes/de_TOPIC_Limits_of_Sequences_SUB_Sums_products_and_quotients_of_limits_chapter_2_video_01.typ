#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Produkten]
#v(40pt)
#only("1-")[- Betrachte die Folgen $a_n$ und $b_n$]
#v(20pt)
#only("2-")[- $lim_(n->infinity) a_n = L$ und $lim_(n->infinity) b_n = M$]
#v(20pt)
#only("3-")[- Dann gilt, $lim_(n->infinity) (a_n b_n) = L M$]
#only("1")[
#voiceover("Lass uns die Grenze des Produkts von zwei Folgen besprechen.")
]
#only("2")[
#voiceover("Angenommen, wir haben zwei Folgen, a_n und b_n, und ihre Grenzen, wenn n gegen unendlich geht, sind L und M.")
]
#only("3")[
#voiceover("Dann ist die Grenze des Produkts dieser Folgen, a_n mal b_n, wenn n gegen unendlich geht, gleich dem Produkt ihrer individuellen Grenzen, L mal M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Sei $a_n = 1/n$ und $b_n = 2n$]
#v(20pt)
#only("2-")[- $lim_(n->infinity) a_n = 0$ und $lim_(n->infinity) b_n = infinity$]
#v(20pt)
#only("3-")[- $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) (1/n 2n) = lim_(n->infinity) 2 = 2$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 2n.")
]
#only("2")[
#voiceover("Die Grenze von a_n, wenn n gegen unendlich geht, ist 0, und die Grenze von b_n, wenn n gegen unendlich geht, ist unendlich.")
]
#only("3")[
#voiceover("Nun, lass uns die Grenze ihres Produkts finden. Die Grenze von a_n mal b_n, wenn n gegen unendlich geht, ist dasselbe wie die Grenze von 1 durch n mal 2n, was sich vereinfacht zur Grenze von 2, wenn n gegen unendlich geht. Diese Grenze ist einfach 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)
an = 1/n
bn = 2*n
product = an * bn

plt.figure(figsize=(8, 6))
plt.plot(n, an, label='$a_n = 1/n$')
plt.plot(n, bn, label='$b_n = 2n$')
plt.plot(n, product, label='$a_n b_n$')
plt.legend()
plt.xlabel('n')
plt.ylabel('Wert')
plt.title('Konvergenz von $a_n$, $b_n$ und $a_n b_n$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt die Konvergenz der Folgen a_n, b_n und ihres Produkts a_n mal b_n. Wenn n zunimmt, nähert sich a_n 0, b_n wächst unbegrenzt, und ihr Produkt konvergiert zu 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) a_n lim_(n->infinity) b_n$]
#v(20pt)
#only("2-")[- Grenze des Produkts = Produkt der Grenzen 🎯]
#only("1")[
#voiceover("Zusammenfassend ist die Grenze des Produkts von zwei Folgen gleich dem Produkt ihrer individuellen Grenzen.")
]
#only("2")[
#voiceover("Denke daran, die Grenze eines Produkts ist das Produkt der Grenzen. Diese Regel ist nützlich, wenn man mit Folgen und ihren Grenzen arbeitet.")
]
]