#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergente Folgen]
#v(40pt)
#only("1-")[- Folge $a_n = 1/n$]
#v(20pt)
#only("2-")[- Folge $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("Lassen Sie uns zwei Beispiele für konvergente Folgen rekapitulieren. Das erste ist die Folge a_n gleich 1 durch n.")
]
#only("2")[
#voiceover("Das zweite Beispiel ist die Folge b_n gleich 2n durch n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Folge $a_n = 1/n$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='--', label='Grenzwert: 0')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Konvergenz von $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Die Folge a_n gleich 1 durch n konvergiert gegen 0, wenn n gegen unendlich geht. Wie Sie im Diagramm sehen können, nähern sich die Glieder der Folge immer mehr 0 an, wenn n größer wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Folge $b_n = 2n/(n+1)$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = 2 * n / (n + 1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'bo-', label='$b_n = 2n/(n+1)$')
plt.axhline(y=2, color='r', linestyle='--', label='Grenzwert: 2')
plt.xlabel('n')
plt.ylabel('$b_n$')
plt.title('Konvergenz von $b_n = 2n/(n+1)$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Die Folge b_n gleich 2n durch n plus 1 konvergiert gegen 2, wenn n gegen unendlich geht. Das Diagramm zeigt, wie sich die Glieder der Folge 2 nähern, wenn n größer wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergente Folgen nähern sich einem bestimmten Wert, wenn $n$ gegen $unendlich$ geht 📈]
#v(20pt)
#only("2-")[- $a_n = 1/n$ konvergiert gegen 0]
#v(20pt)
#only("3-")[- $b_n = 2n/(n+1)$ konvergiert gegen 2]
#only("1")[
#voiceover("Zusammenfassend sind konvergente Folgen solche, deren Glieder sich einem bestimmten Wert nähern, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Die Folge a_n gleich 1 durch n ist ein Beispiel für eine konvergente Folge, die gegen 0 konvergiert.")
]
#only("3")[
#voiceover("Und die Folge b_n gleich 2n durch n plus 1 ist ein weiteres Beispiel für eine konvergente Folge, die gegen 2 konvergiert.")
]
]