#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Welche der folgenden Folgen divergiert gegen unendlich? 
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie nicht gegen unendlich divergiert.
#only("-1")[a) $a_n = 1/n$]#only("2-")[#text(fill:red)[a) $a_n = 1/n$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie gegen unendlich divergiert.
#only("-2")[b) $b_n = n$]#only("3-")[#text(fill:green)[b) $b_n = n$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie nicht gegen unendlich divergiert.
#only("-3")[c) $c_n = (-1)^n$]#only("4-")[#text(fill:red)[c) $c_n = (-1)^n$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie nicht gegen unendlich divergiert.
#only("-4")[d) $d_n = 1/(n^2)$]#only("5-")[#text(fill:red)[d) $d_n = 1/(n^2)$]]
#only("1")[#voiceover("Nicht ganz, aber schauen wir uns die richtige Lösung an.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
Untersuchen wir jede Folge:
#v(20pt)
#only("2-")[- $a_n = 1/n$: Wenn $n$ zunimmt, nähert sich $1/n$ 0. ❌]
#v(10pt)
#only("3-")[- $b_n = n$: Wenn $n$ zunimmt, wächst $b_n$ unbegrenzt. ✅]
#v(10pt) 
#only("4-")[- $c_n = (-1)^n$: Schwankt zwischen -1 und 1. ❌]
#v(10pt)
#only("5-")[- $d_n = 1/(n^2)$: Wenn $n$ zunimmt, nähert sich $1/(n^2)$ 0 noch schneller als $1/n$. ❌]
#v(40pt)
#only("6-")[Daher ist die Folge, die gegen unendlich divergiert, $b_n = n$. 🚀]

#only("2")[#voiceover("a) Die Folge a_n gleich 1 durch n divergiert nicht gegen unendlich. Wenn n zunimmt, nähert sich 1 durch n 0.")]
#only("3")[#voiceover("b) Die Folge b_n gleich n divergiert gegen unendlich. Wenn n zunimmt, wächst b_n unbegrenzt.")]
#only("4")[#voiceover("c) Die Folge c_n gleich minus 1 hoch n divergiert nicht gegen unendlich. Sie schwankt zwischen minus 1 und 1.")]
#only("5")[#voiceover("d) Die Folge d_n gleich 1 durch n Quadrat divergiert nicht gegen unendlich. Wenn n zunimmt, nähert sich 1 durch n Quadrat 0 noch schneller als 1 durch n.")]
#only("6")[#voiceover("Daher ist die einzige Folge unter den gegebenen Optionen, die gegen unendlich divergiert, b_n gleich n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)

plt.figure(figsize=(10, 8))

plt.subplot(2, 2, 1)
plt.plot(n, 1/n, 'bo-')
plt.title('a) $a_n = 1/n$')
plt.ylim(0, 1)

plt.subplot(2, 2, 2)
plt.plot(n, n, 'ro-')
plt.title('b) $b_n = n$')

plt.subplot(2, 2, 3)
plt.plot(n, (-1)**n, 'go-')
plt.title('c) $c_n = (-1)^n$')
plt.ylim(-1.5, 1.5)

plt.subplot(2, 2, 4)
plt.plot(n, 1/(n**2), 'mo-')
plt.title('d) $d_n = 1/(n^2)$')
plt.ylim(0, 1)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist ein Diagramm der ersten 10 Terme jeder Folge:]
#v(20pt)
#only("2-")[- Nur $b_n = n$ divergiert eindeutig gegen unendlich. 📈]

#only("1")[#voiceover("Lassen Sie uns die ersten 10 Terme jeder Folge in einem Diagramm visualisieren.")]
#only("2")[#voiceover("Wie Sie sehen können, divergiert nur die Folge b_n gleich n eindeutig gegen unendlich, während die anderen entweder einen endlichen Wert erreichen oder schwanken.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
- Eine Folge divergiert gegen unendlich, wenn ihre Terme unbegrenzt wachsen. 🚀
#v(20pt)
- Folgen wie $1/n$ und $1/(n^2)$ konvergieren gegen 0. 🎯
#v(20pt)
- Schwankende Folgen wie $(-1)^n$ divergieren nicht gegen unendlich. 🔄
#v(20pt)
- Betrachten Sie immer das langfristige Verhalten einer Folge. ♾️

#only("1")[#voiceover("Denken Sie daran, eine Folge divergiert gegen unendlich, wenn ihre Terme unbegrenzt wachsen.")]
#only("2")[#voiceover("Folgen wie 1 durch n und 1 durch n Quadrat konvergieren gegen 0, nicht gegen unendlich.")]
#only("3")[#voiceover("Schwankende Folgen wie minus 1 hoch n divergieren nicht gegen unendlich.")]
#only("4")[#voiceover("Betrachten Sie immer das langfristige Verhalten einer Folge, um festzustellen, ob sie gegen unendlich divergiert.")]
]