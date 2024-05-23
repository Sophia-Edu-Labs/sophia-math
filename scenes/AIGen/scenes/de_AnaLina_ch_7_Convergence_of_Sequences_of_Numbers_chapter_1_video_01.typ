#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Folgenkonvergenz]
#v(40pt)
#only("1-")[- Glieder nähern sich einem bestimmten Wert, wenn $n$ gegen $Unendlichkeit$ ♾ geht]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ → 0, wenn $n$ → $Unendlichkeit$]
#only("1")[
#voiceover("Eine Folge konvergiert, wenn sich ihre Glieder einem bestimmten Wert nähern, wenn n, der Index des Gliedes, gegen Unendlichkeit geht.")
]
#only("2")[
#voiceover("Zum Beispiel betrachten wir die Folge a_n gleich 1 durch n. Wenn n immer größer wird, nähern sich die Glieder dieser Folge immer mehr der 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
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

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='r', linestyle='--', label='Grenzwert: 0')
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
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung der Folge a_n gleich 1 durch n. Die blauen Punkte repräsentieren die Glieder der Folge, und die rote gestrichelte Linie repräsentiert den Grenzwert, der 0 ist. Wie man sieht, nähern sich die Glieder dem Grenzwert, wenn n größer wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition]
#v(40pt)
#only("1-")[- $a_n$ konvergiert gegen $L$, wenn:]
#v(20pt)
#only("2-")[  Für jedes $epsilon > 0$ existiert ein $N$, so dass]
#v(20pt)
#only("3-")[  für alle $n >= N$, $|a_n - L| < epsilon$ 📏]
#only("1")[
#voiceover("Nun schauen wir uns die formale Definition der Konvergenz an.")
]
#only("2")[
#voiceover("Eine Folge a_n konvergiert gegen einen Grenzwert L, wenn für jedes epsilon größer als 0 eine natürliche Zahl N existiert, so dass...")
]
#only("3")[
#voiceover("für alle n größer oder gleich N der Betrag von a_n minus L kleiner als epsilon ist. Mit anderen Worten, die Glieder nähern sich beliebig nah an L, wenn n größer wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Folgenkonvergenz: Glieder nähern sich einem bestimmten Wert ⛳]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen 0, wenn $n$ → $Unendlichkeit$]
#v(20pt)
#only("3-")[- Formale Definition: $|a_n - L| < epsilon$ für große $n$ 📏]
#only("1")[
#voiceover("Zusammenfassend konvergiert eine Folge, wenn sich ihre Glieder einem bestimmten Wert nähern, wenn n gegen Unendlichkeit geht.")
]
#only("2")[
#voiceover("Wir haben das Beispiel von a_n gleich 1 durch n gesehen, das gegen 0 konvergiert, wenn n gegen Unendlichkeit geht.")
]
#only("3")[
#voiceover("Die formale Definition besagt, dass für jedes epsilon größer als 0 der absolute Unterschied zwischen den Gliedern und dem Grenzwert für hinreichend große n kleiner als epsilon wird.")
]
]