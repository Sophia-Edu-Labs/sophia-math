#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Folgen 📈]
#v(40pt)
#only("1-")[
- Eine Folge $(a_n)$ konvergiert, wenn ihre Glieder einen bestimmten Wert $L$ annähern, wenn $n$ gegen $infinity$ geht.
]
#only("1")[
#voiceover("Eine Folge a_n konvergiert, wenn ihre Glieder einen bestimmten Wert L annähern, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $a_n = 1/n$ ➗]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 21)
a_n = 1 / n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='$L = 0$')
plt.xlabel('$n$')
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
]
#only("1")[
#voiceover("Betrachte zum Beispiel die Folge a_n gleich 1 durch n. Wenn n zunimmt, nähern sich die Glieder der Folge immer mehr dem Wert 0 an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Folge 🎯]
#v(40pt)
#only("1-")[
- Der Wert $L$, den eine konvergente Folge annähert, wird als ihr Grenzwert bezeichnet.
]
#only("2-")[
- Für $a_n = 1/n$ ist der Grenzwert $L = 0$.
]
#only("1")[
#voiceover("Der Wert L, den eine konvergente Folge annähert, wird als ihr Grenzwert bezeichnet.")
]
#only("2")[
#voiceover("Im Fall von a_n gleich 1 durch n ist der Grenzwert L gleich 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation 📝]
#v(40pt)
#only("1-")[
- Wir schreiben $lim_(n->infinity) a_n = L$, um zu zeigen, dass der Grenzwert von $(a_n)$ $L$ ist.
]
#only("2-")[
- Beispiel: $lim_(n->infinity) 1/n = 0$
]
#only("1")[
#voiceover("Wir schreiben den Grenzwert als n gegen unendlich von a_n gleich L, um zu zeigen, dass der Grenzwert der Folge a_n L ist.")
]
#only("2")[
#voiceover("Zum Beispiel, der Grenzwert als n gegen unendlich von 1 durch n ist gleich 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[
- Konvergenz: Glieder nähern sich einem bestimmten Wert, wenn $n -> infinity$ 📈
]
#only("2-")[
- Grenzwert: der Wert, den eine konvergente Folge annähert 🎯
]
#only("3-")[
- Notation: $lim_(n->infinity) a_n = L$ 📝
]
#only("1")[
#voiceover("Zusammenfassend konvergiert eine Folge, wenn ihre Glieder einen bestimmten Wert annähern, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Dieser Wert wird als der Grenzwert der Folge bezeichnet.")
]
#only("3")[
#voiceover("Und wir notieren dies mit der Grenzwert-Notation: der Grenzwert als n gegen unendlich von a_n gleich L.")
]
]