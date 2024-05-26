#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert der Summe von Folgen 🧮]
#v(40pt)
#only("1-")[- Betrachte die Folgen $a_n$ und $b_n$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("3-")[- Dann gilt, $lim_(n -> infinity) (a_n + b_n) = L + M$]
#v(40pt)
#only("4-")[#text(size: 30pt, weight: "bold")[Beispiel 📊]]
#v(40pt)
#only("5-")[- $a_n = 1/n$ und $b_n = 2/n$]
#v(20pt)
#only("6-")[- $lim_(n -> infinity) a_n = 0$ und $lim_(n -> infinity) b_n = 0$]
#v(20pt)
#only("7-")[- $lim_(n -> infinity) (a_n + b_n) = 0 + 0 = 0$]
#only("1")[
#voiceover("Betrachten wir zwei Folgen, a_n und b_n.")
]
#only("2")[
#voiceover("Angenommen, der Grenzwert von a_n für n gegen unendlich ist L, und der Grenzwert von b_n für n gegen unendlich ist M.")
]
#only("3")[
#voiceover("Dann ist der Grenzwert der Summe dieser Folgen, a_n plus b_n, für n gegen unendlich gleich der Summe ihrer individuellen Grenzwerte, L plus M.")
]
#only("4")[
#voiceover("Schauen wir uns ein Beispiel an, um dies zu veranschaulichen.")
]
#only("5")[
#voiceover("Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 2 durch n.")
]
#only("6")[
#voiceover("Wir wissen, dass der Grenzwert von 1 durch n für n gegen unendlich 0 ist, und ebenso ist der Grenzwert von 2 durch n für n gegen unendlich ebenfalls 0.")
]
#only("7")[
#voiceover("Daher ist der Grenzwert der Summe dieser Folgen, 1 durch n plus 2 durch n, für n gegen unendlich gleich 0 plus 0, was 0 ist.")
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

n = np.arange(1, 100)
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n$')
plt.plot(n, b_n, label='$b_n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Grenzwert')
plt.xlabel('n')
plt.ylabel('Folgenwert')
plt.title('Konvergenz von Folgen und ihrer Summe')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt die Folgen a_n, b_n und ihre Summe a_n plus b_n, während n zunimmt. Wie Du sehen kannst, konvergieren alle drei Folgen gegen 0, was ihr Grenzwert für n gegen unendlich ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]
#v(40pt)
#only("1-")[- Grenzwert der Summe von Folgen = Summe der Grenzwerte der Folgen]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)
#only("3-")[- Nützlich zur Analyse der Konvergenz von Folgensummen]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert der Summe zweier Folgen gleich der Summe ihrer individuellen Grenzwerte.")
]
#only("2")[
#voiceover("Mathematisch kann dies ausgedrückt werden als der Grenzwert von a_n plus b_n, für n gegen unendlich, gleich dem Grenzwert von a_n, für n gegen unendlich, plus dem Grenzwert von b_n, für n gegen unendlich.")
]
#only("3")[
#voiceover("Diese Eigenschaft ist sehr nützlich, wenn man die Konvergenz von Summen von Folgen analysiert.")
]
]