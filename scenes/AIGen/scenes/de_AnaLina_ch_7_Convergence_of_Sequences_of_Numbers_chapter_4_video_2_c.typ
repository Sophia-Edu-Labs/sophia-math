#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
Eine Folge divergiert ins Unendliche, wenn ihre Glieder ______.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) ohne Schranke abnehmen]#only("2-")[#text(fill:red)[a) ohne Schranke abnehmen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) oszillieren]#only("3-")[#text(fill:red)[b) oszillieren]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) ohne Schranke zunehmen]#only("4-")[#text(fill:green)[c) ohne Schranke zunehmen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) konstant bleiben]#only("5-")[#text(fill:red)[d) konstant bleiben]]
#only("1")[#voiceover("Großartig! Sie haben die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("Option a) ist falsch. Wenn die Glieder ohne Schranke abnehmen, würde die Folge gegen minus Unendlich divergieren, nicht gegen plus Unendlich.")]
#only("3")[#voiceover("Option b) ist ebenfalls falsch. Wenn die Glieder oszillieren, ist die Folge divergent, aber sie divergiert nicht unbedingt ins Unendliche.")]
#only("4")[#voiceover("Option c) ist die richtige Antwort. Eine Folge divergiert ins Unendliche, wenn ihre Glieder ohne Schranke zunehmen, wenn n gegen Unendlich geht.")]
#only("5")[#voiceover("Schließlich ist Option d) falsch. Wenn die Glieder konstant bleiben, ist die Folge konvergent, nicht divergent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
- Eine Folge $a_n$ divergiert ins Unendliche, wenn:
  - Für jedes $M > 0$ existiert ein $N$, sodass für alle $n \geq N$, $a_n > M$. 🚀
#v(20pt)  
- Das bedeutet:
  - Egal wie groß $M$ ist, wir können immer ein $N$ finden, sodass für alle Glieder nach dem $N$-ten Glied $a_n$ größer als $M$ ist. 📈
#v(20pt)  
- Mit anderen Worten:
  - Die Glieder der Folge nehmen ohne Schranke zu, wenn $n$ gegen Unendlich geht. ∞
#only("1")[#voiceover("Lassen Sie uns dies Schritt für Schritt durchgehen. Eine Folge a_n divergiert ins Unendliche, wenn für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N, a_n größer als M ist.")]
#only("2")[#voiceover("Das bedeutet, dass egal wie groß wir M wählen, wir immer ein N finden können, sodass für alle Glieder nach dem N-ten Glied a_n größer als M ist.")]
#only("3")[#voiceover("Mit anderen Worten, die Glieder der Folge nehmen ohne Schranke zu, wenn n gegen Unendlich geht. Sie werden immer größer und größer und überschreiten jeden endlichen Wert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Betrachten Sie die Folge $a_n = n^2$.
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n**2

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n^2$')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Folge $a_n = n^2$')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
- Für jedes $M > 0$, wählen Sie $N = ceil(sqrt(M))$. 🎯
- Dann für alle $n >= N$, $a_n = n^2 >= N^2 > M$. ✅
- Somit divergiert $a_n$ ins Unendliche. 🚀
#only("1")[#voiceover("Betrachten wir ein Beispiel. Nehmen wir die Folge a_n gleich n Quadrat. Hier ist ein Diagramm der ersten paar Glieder.")]
#only("2")[#voiceover("Um zu zeigen, dass diese Folge ins Unendliche divergiert, wählen wir ein beliebiges M größer als 0. Wir müssen ein N finden, sodass für alle n größer oder gleich N, a_n größer als M ist.")]
#only("3")[#voiceover("Wir können N als die Decke der Quadratwurzel von M wählen. Dann für alle n größer oder gleich N, ist a_n gleich n Quadrat, was größer oder gleich N Quadrat ist, was wiederum größer als M ist.")]
#only("4")[#voiceover("Somit können wir, egal welches M wir wählen, immer ein N finden, sodass alle nachfolgenden Glieder größer als M sind. Daher divergiert die Folge a_n gleich n Quadrat ins Unendliche.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Eine Folge divergiert ins Unendliche, wenn ihre Glieder ohne Schranke zunehmen. 📈
#v(20pt)
- Formal bedeutet das, dass für jedes $M > 0$ ein $N$ existiert, sodass für alle $n >= N$, $a_n > M$. 🎓
#v(20pt)
- Beispiele für Folgen, die ins Unendliche divergieren: 
  - $a_n = n$ 
  - $a_n = n^2$
  - $a_n = 2^n$ 
#only("1")[#voiceover("Zusammenfassend divergiert eine Folge ins Unendliche, wenn ihre Glieder ohne Schranke zunehmen.")]
#only("2")[#voiceover("Formal bedeutet das, dass für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N, a_n größer als M ist.")]
#only("3")[#voiceover("Einige Beispiele für Folgen, die ins Unendliche divergieren, sind a_n gleich n, a_n gleich n Quadrat und a_n gleich 2 hoch n. In jedem Fall werden die Glieder immer größer ohne Begrenzung, wenn n zunimmt.")]
]