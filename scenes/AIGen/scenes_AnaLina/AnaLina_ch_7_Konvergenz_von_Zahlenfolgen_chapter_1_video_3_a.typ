#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence of $a_n = 1/n$]
#v(40pt)
#only("1-")[Gut gemacht! Das ist die richtige Antwort. 🎉]
#v(20pt)
#only("2-")[Lasst uns nun Schritt für Schritt anschauen, warum die Folge $a_n = 1/n$ gegen 0 konvergiert, wenn $n$ gegen unendlich geht. 🔍]
#only("1")[
#voiceover("Gut gemacht! Das ist die richtige Antwort. Die Zahlenfolge a n gleich 1 durch n konvergiert tatsächlich gegen 0, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Lasst uns nun Schritt für Schritt anschauen, warum die Folge a n gleich 1 durch n gegen 0 konvergiert, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Grenzwert verstehen]
#v(40pt)
#only("1-")[Eine Folge $a_n$ hat einen Grenzwert $L$, wenn:]
#v(20pt)
#only("2-")[- Für jedes $ε > 0$ gibt es ein $N ∈ NN$, sodass]
#v(10pt)
#only("3-")[- $|a_n - L| < ε$ für alle $n > N$. 📏]
#only("1")[
#voiceover("Zunächst müssen wir verstehen, was es bedeutet, dass eine Folge einen Grenzwert hat.")
]
#only("2")[
#voiceover("Eine Folge a n hat einen Grenzwert L, wenn für jedes epsilon größer 0 ein N in den natürlichen Zahlen existiert, sodass")
]
#only("3")[
#voiceover("der Betrag von a n minus L kleiner als epsilon ist für alle n größer als N. Das heißt, die Folgenglieder kommen beliebig nah an L heran, wenn n groß genug wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Behauptung aufstellen]
#v(40pt)
#only("1-")[Wir behaupten, dass $lim_(n->oo) 1/n = 0$. 🎯]
#v(20pt)
#only("2-")[Das heißt, für jedes $ε > 0$ müssen wir ein $N$ finden, sodass:]
#v(10pt)
#only("3-")[- $|1/n - 0| < ε$ für alle $n > N$.]
#only("1")[
#voiceover("Nun stellen wir die Behauptung auf, dass der Limes von 1 durch n für n gegen unendlich gleich 0 ist.")
]
#only("2")[
#voiceover("Das bedeutet, für jedes epsilon größer 0 müssen wir ein N finden, sodass")
]
#only("3")[
#voiceover("der Betrag von 1 durch n minus 0 kleiner als epsilon ist für alle n größer als N.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Ungleichung lösen]
#v(40pt)
#only("1-")[Wir lösen nun $|1/n - 0| < ε$:]
#v(20pt)
#only("2-")[- $|1/n| < ε$]
#v(10pt)
#only("3-")[- $1/n < ε$]
#v(10pt)
#only("4-")[- $n > 1/ε$ 🧮]
#only("1")[
#voiceover("Wir lösen nun die Ungleichung 'Betrag von 1 durch n minus 0 kleiner als epsilon'.")
]
#only("2")[
#voiceover("Da 0 wegfällt, erhalten wir 'Betrag von 1 durch n kleiner als epsilon'.")
]
#only("3")[
#voiceover("Da 1 durch n immer positiv ist, können wir den Betrag weglassen und erhalten '1 durch n kleiner als epsilon'.")
]
#only("4")[
#voiceover("Durch Äquivalenzumformung erhalten wir 'n größer als 1 durch epsilon'.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Wähle N]
#v(40pt)
#only("1-")[Wähle $N = ceil(1/ε)$. ⌈⌉]
#v(20pt)
#only("2-")[Dann gilt für alle $n > N$:]
#v(10pt)
#only("3-")[- $n > 1/ε$]
#v(10pt)
#only("4-")[- $1/n < ε$]
#v(10pt)
#only("5-")[- $|1/n - 0| < ε$ ✅]
#only("1")[
#voiceover("Wir wählen nun N als die Aufrundung von 1 durch epsilon.")
]
#only("2")[
#voiceover("Dann gilt für alle n größer als N:")
]
#only("3")[
#voiceover("n ist größer als 1 durch epsilon,")
]
#only("4")[
#voiceover("1 durch n ist kleiner als epsilon,")
]
#only("5")[
#voiceover("und damit ist der Betrag von 1 durch n minus 0 kleiner als epsilon, was zu zeigen war.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)
a_n = 1 / n

plt.figure(figsize=(10, 6))
plt.plot(n, a_n, 'bo', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='$L = 0$')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.title('Konvergenz von $a_n = 1/n$ gegen 0', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier sehen wir die Konvergenz von a n gleich 1 durch n gegen 0 graphisch dargestellt. Die blauen Punkte stellen die Folgenglieder dar, die rote Linie den Grenzwert 0. Wir sehen, wie die Folgenglieder immer näher an 0 herankommen, je größer n wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $a_n = 1/n$ konvergiert gegen 0 für $n -> oo$. 📉]
#v(20pt) 
#only("2-")[- Für jedes $ε > 0$ gibt es ein $N = ceil(1/ε)$, sodass:]
#v(10pt)
#only("3-")[- $|a_n - 0| < ε$ für alle $n > N$. ✅]
#v(20pt)
#only("4-")[Super gemacht! Du hast die Konvergenz von $a_n = 1/n$ verstanden. 🎉]
#only("1")[
#voiceover("Zusammenfassend haben wir gezeigt, dass die Folge a n gleich 1 durch n gegen 0 konvergiert, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Für jedes epsilon größer 0 gibt es ein N gleich der Aufrundung von 1 durch epsilon, sodass")
]
#only("3")[
#voiceover("der Betrag von a n minus 0 kleiner als epsilon ist für alle n größer als N.")
]
#only("4")[
#voiceover("Super gemacht! Du hast die Konvergenz von a n gleich 1 durch n verstanden. Mach weiter so!")
]
]