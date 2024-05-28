#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele konvergenter Folgen]
#v(40pt)
#only("1-")[- $a_n = 1/n$]
#v(20pt)
#only("2-")[- $b_n = 2n/(n+1)$]
#only("1")[
#voiceover("Schauen wir uns zwei Beispiele für konvergente Folgen an. Das erste ist a_n gleich 1 durch n.")
]
#only("2")[
#voiceover("Das zweite Beispiel ist b_n gleich 2n durch n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1: $a_n = 1/n$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Grenzwert: 0')
plt.xlabel('n')
plt.ylabel('a_n')
plt.title('Konvergenz von $a_n = 1/n$')
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
#voiceover("Lass uns die Folge a_n gleich 1 durch n plotten. Wenn n größer wird, nähern sich die Folgenglieder immer mehr 0 an. Tatsächlich ist der Grenzwert dieser Folge, wenn n gegen unendlich geht, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2: $b_n = 2n/(n+1)$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = 2*n / (n+1)

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'bo-', label='$b_n = 2n/(n+1)$')
plt.axhline(y=2, color='r', linestyle='-', label='Grenzwert: 2')
plt.xlabel('n')
plt.ylabel('b_n')
plt.title('Konvergenz von $b_n = 2n/(n+1)$')
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
#voiceover("Nun lass uns die Folge b_n gleich 2n durch n plus 1 plotten. Wenn n größer wird, nähern sich die Folgenglieder 2 an. Der Grenzwert von b_n, wenn n gegen unendlich geht, ist tatsächlich 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergente Folgen nähern sich einem bestimmten Wert an, wenn $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Beispiele: $a_n = 1/n$ konvergiert gegen 0, $b_n = 2n/(n+1)$ konvergiert gegen 2 ✅]
#only("1")[
#voiceover("Zusammenfassend sind konvergente Folgen solche, deren Glieder sich einem bestimmten Wert annähern, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Wir haben zwei Beispiele gesehen: a_n gleich 1 durch n konvergiert gegen 0, und b_n gleich 2n durch n plus 1 konvergiert gegen 2. Das Verständnis dieser Beispiele hilft, ein Gefühl für das Konzept der Konvergenz zu entwickeln.")
]
]