#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert von $a_n = 1/n$ wenn $n$ gegen ∞ geht]
#v(40pt)
Was ist der Grenzwert der Folge $a_n = 1/n$, wenn $n$ gegen unendlich geht?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) 0]#only("3-")[#text(fill:green)[b) 0]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) ∞]#only("4-")[#text(fill:red)[c) ∞]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) -1]#only("5-")[#text(fill:red)[d) -1]]
#only("1")[#voiceover("Nicht ganz, aber keine Sorge! Die richtige Lösung ist...")]
#only("2")[#voiceover("b) 0. Schauen wir warum...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[Betrachten Sie die Folge $a_n = 1/n$ 🔢]
#v(20pt)
#only("2-")[Wenn $n$ steigt ↗, sinkt $1/n$ ↘]
#v(20pt)
#only("3-")[Beispiel: $1/1 = 1$, $1/10 = 0.1$, $1/100 = 0.01$, ...]
#v(20pt)
#only("4-")[Wenn $n$ gegen ∞ geht, nähert sich $1/n$ 0 🎯]
#v(20pt)
#only("5-")[Daher ist $lim_(n->∞) 1/n = 0$ ✅]

#only("1")[#voiceover("Wir haben die Folge a_n gleich 1 durch n gegeben.")]
#only("2")[#voiceover("Wenn n steigt, sinkt der Wert von 1 durch n. Das liegt daran, dass der Bruch kleiner wird, wenn der Nenner größer wird.")]
#only("3")[#voiceover("Zum Beispiel, 1 durch 1 ist gleich 1, 1 durch 10 ist gleich 0.1, 1 durch 100 ist gleich 0.01, und so weiter.")]
#only("4")[#voiceover("Wenn n gegen unendlich geht, nähert sich 1 durch n immer mehr 0 an. Stellen Sie sich vor, Sie teilen 1 durch eine sehr, sehr große Zahl - das Ergebnis wird sehr nahe bei 0 liegen.")]
#only("5")[#voiceover("Daher ist der Grenzwert von 1 durch n, wenn n gegen unendlich geht, 0.")]
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

n = np.arange(1, 100)  # Array von n-Werten von 1 bis 99
a_n = 1 / n  # Folge a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo', label='a_n = 1/n')
plt.axhline(y=0, color='r', linestyle='-', label='Grenzwert = 0')
plt.xlabel('n')
plt.ylabel('a_n')
plt.title('Grenzwert von a_n = 1/n wenn n → ∞')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist ein Diagramm von $a_n = 1/n$ für verschiedene Werte von $n$ 📈]
#v(20pt)
#only("2-")[Wenn $n$ steigt, nähern sich die Punkte der roten Linie bei $y=0$ 🔴]
#v(20pt)
#only("3-")[Dies zeigt, dass $lim_(n->∞) 1/n = 0$ 🎯]

#only("1")[#voiceover("Lassen Sie uns diesen Grenzwert visualisieren. Hier ist ein Diagramm, das die Werte von a_n gleich 1 durch n für verschiedene Werte von n darstellt.")]
#only("2")[#voiceover("Beachten Sie, wie sich die Punkte im Diagramm der roten Linie bei y gleich 0 nähern, wenn n steigt.")]
#only("3")[#voiceover("Dies ist eine visuelle Darstellung der Tatsache, dass der Grenzwert von 1 durch n, wenn n gegen unendlich geht, 0 ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Grenzwerte beschreiben das Verhalten einer Folge, wenn $n$ einen bestimmten Wert erreicht 📈]
#v(20pt)
#only("2-")[- Für $a_n = 1/n$, wenn $n$ gegen ∞ geht, nähert sich $a_n$ 0 🎯]
#v(20pt)
#only("3-")[- Das liegt daran, dass $1/∞ = 0$ 🔢]
#v(20pt)
#only("4-")[- Die Visualisierung der Folge kann helfen, den Grenzwert zu verstehen 📊]

#only("1")[#voiceover("Zusammenfassend beschreiben Grenzwerte das Verhalten einer Folge, wenn n einen bestimmten Wert erreicht.")]
#only("2")[#voiceover("Für die Folge a_n gleich 1 durch n, wenn n gegen unendlich geht, nähert sich a_n 0.")]
#only("3")[#voiceover("Das ist intuitiv verständlich, weil 1 durch eine sehr große Zahl nahe bei 0 liegt.")]
#only("4")[#voiceover("Die Visualisierung der Folge in einem Diagramm kann helfen, den Grenzwert zu verstehen und zu bestätigen.")]
]