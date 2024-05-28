#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns die formale Definition der Konvergenz für Folgen rekapitulieren.")
]
#text(size: 30pt, weight: "bold")[Formale Definition der Konvergenz]
// Der Titel "Formale Definition der Konvergenz" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Eine Folge $a_n$ konvergiert gegen einen Grenzwert $L$, wenn für jedes positive Epsilon eine natürliche Zahl $N$ existiert, sodass für alle $n$ größer oder gleich $N$ der Betrag von $a_n - L$ kleiner als Epsilon ist.")
]
#only("2-")[
$ a_n → L ⟺ ∀ ε>0 ∃ N ∈ ℕ: ∀ n ≥ N |a_n - L| < ε$
]
// Die formale Definition wird ab Folie 2 in mathematischer Notation angezeigt
]

#slide()[
#only("1")[
#voiceover("Lass uns das Schritt für Schritt aufschlüsseln.")
]
#text(size: 30pt, weight: "bold")[Aufschlüsselung]
// Der Titel "Aufschlüsselung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[- $ε > 0$ repräsentiert eine beliebig kleine positive Zahl 🔍]
// Die Erklärung für Epsilon wird ab Folie 2 angezeigt
#only("2")[
#voiceover("Zuerst repräsentiert Epsilon eine beliebig kleine positive Zahl. Es ist ein Schwellenwert, den wir wählen.")
]
#v(20pt)
#only("3-")[- $N ∈ ℕ$ ist eine natürliche Zahl, die von $ε$ abhängt 🔢]
// Die Erklärung für N wird ab Folie 3 angezeigt
#only("3")[
#voiceover("Als nächstes ist $N$ eine natürliche Zahl, die von der Wahl des Epsilon abhängt. Es ist ein Punkt in der Folge, ab dem alle Terme nahe am Grenzwert liegen.")
]
#v(20pt)
#only("4-")[- $|a_n - L| < ε$ bedeutet, dass der Abstand zwischen $a_n$ und $L$ kleiner als $ε$ ist 📏]
// Die Erklärung für |a_n - L| < Epsilon wird ab Folie 4 angezeigt
#only("4")[
#voiceover("Schließlich bedeutet die Bedingung $|a_n - L| < ε$, dass der absolute Unterschied zwischen den Termen $a_n$ und dem Grenzwert $L$ kleiner als Epsilon ist, für alle Terme ab dem $N$-ten Term.")
]
]

#slide()[
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung.")
]
#text(size: 30pt, weight: "bold")[Visualisierung]
// Der Titel "Visualisierung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Sequence
n = np.arange(1, 11)
a_n = 1 + 1/n

# Limit
L = 1

# Choose an epsilon
epsilon = 0.5

# Find N
N = np.ceil(1/epsilon)

# Plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(y=L, color='r', linestyle='-', label='$L$')
plt.axhline(y=L-epsilon, color='g', linestyle='--', label='$L-ε$')
plt.axhline(y=L+epsilon, color='g', linestyle='--', label='$L+ε$')
plt.axvline(x=N, color='m', linestyle='-.', label='$N$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Konvergenz einer Folge')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
// Die Abbildung zeigt eine Folge $a_n$, die gegen einen Grenzwert $L$ konvergiert, mit dem Epsilon-Umfeld und dem Punkt $N$ markiert. Diese Abbildung wird ab Folie 2 angezeigt.
#only("2")[
#voiceover("In diesem Diagramm repräsentiert die blaue Linie die Folge $a_n$, die gegen die rote Grenzwertlinie $L$ konvergiert. Die grünen Linien markieren das Epsilon-Umfeld um $L$, und die magentafarbene Linie zeigt den Punkt $N$, ab dem alle Terme innerhalb dieses Umfelds liegen.")
]
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend:")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("2-")[- Eine Folge $a_n$ konvergiert gegen $L$, wenn:]
#only("2")[
#voiceover("Eine Folge $a_n$ konvergiert gegen einen Grenzwert $L$, wenn:")
]
#v(20pt)
#only("3-")[  - Für jedes $ε>0$ (beliebig klein) 🔍]
#only("3")[
#voiceover("Für jedes beliebig kleine positive Epsilon...")
]
#v(20pt)
#only("4-")[  - Es existiert ein $N ∈ ℕ$ (abhängig von $ε$) 🔢]
#only("4")[
#voiceover("...es existiert eine natürliche Zahl $N$, die von Epsilon abhängt...")
]
#v(20pt)
#only("5-")[  - So dass $|a_n - L| < ε$ für alle $n ≥ N$ 📏]
#only("5")[
#voiceover("...so dass der absolute Unterschied zwischen $a_n$ und $L$ kleiner als Epsilon ist für alle $n$ größer oder gleich $N$.")
]
]