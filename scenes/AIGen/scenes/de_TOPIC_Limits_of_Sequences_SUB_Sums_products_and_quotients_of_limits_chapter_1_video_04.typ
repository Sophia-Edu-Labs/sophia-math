#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Summen von Folgen 🧮]
#v(40pt)
#only("1-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$
]
#only("1")[
#voiceover("Der Grenzwert der Summe zweier Folgen ist gleich der Summe ihrer einzelnen Grenzwerte.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
- Gegeben: $a_n = 1/n$ und $b_n = 2/n$
]
#only("2-")[
- $lim_(n -> infinity) a_n = 0$ und $lim_(n -> infinity) b_n = 0$
]
#only("3-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) (1/n + 2/n)$
]
#only("4-")[
  $= lim_(n -> infinity) (3/n) = 0$
]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Gegeben sind zwei Folgen a_n gleich 1 durch n und b_n gleich 2 durch n.")
]
#only("2")[
#voiceover("Wir wissen, dass der Grenzwert von a_n, wenn n gegen unendlich geht, 0 ist, und ebenso der Grenzwert von b_n, wenn n gegen unendlich geht, ebenfalls 0 ist.")
]
#only("3")[
#voiceover("Nun wollen wir den Grenzwert der Summe dieser Folgen finden. Der Grenzwert von a_n plus b_n, wenn n gegen unendlich geht, ist gleich dem Grenzwert von 1 durch n plus 2 durch n, wenn n gegen unendlich geht.")
]
#only("4")[
#voiceover("Dies vereinfacht sich zu dem Grenzwert von 3 durch n, wenn n gegen unendlich geht, was gleich 0 ist.")
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
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n$')
plt.plot(n, b_n, label='$b_n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.legend(fontsize=14)
plt.xlabel('n', fontsize=14)
plt.ylabel('Wert', fontsize=14)
plt.title('Folgen und ihre Summe', fontsize=16)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Folgen a_n, b_n und ihrer Summe a_n plus b_n. Wenn n zunimmt, nähern sich alle diese Folgen 0, was das Konzept veranschaulicht, dass der Grenzwert der Summe die Summe der Grenzwerte ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[
- Grenzwert der Summe = Summe der Grenzwerte
]
#only("2-")[
- Nützlich zum Finden von Grenzwerten komplexer Folgen
]
#only("3-")[
- Gilt auch für Differenzen, Produkte und Quotienten von Folgen
]
#only("1")[
#voiceover("Die wichtigste Erkenntnis ist, dass der Grenzwert der Summe zweier Folgen gleich der Summe ihrer einzelnen Grenzwerte ist.")
]
#only("2")[
#voiceover("Diese Eigenschaft ist äußerst nützlich, um die Grenzwerte komplexerer Folgen zu finden, die in einfachere Komponenten zerlegt werden können.")
]
#only("3")[
#voiceover("Dieses Konzept erstreckt sich auch auf Differenzen, Produkte und Quotienten von Folgen und bietet ein mächtiges Werkzeug zur Bewertung von Grenzwerten.")
]
]