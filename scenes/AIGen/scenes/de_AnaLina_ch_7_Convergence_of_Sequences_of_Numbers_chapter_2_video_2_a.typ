#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Welche Folge konvergiert?]
#v(40pt)
#only("-1")[a) $a_n = n$]#only("2-")[#text(fill:red)[a) $a_n = n$]]
#v(10pt)
#only("-2")[b) $b_n = 1/n$]#only("3-")[#text(fill:green)[b) $b_n = 1/n$]]
#v(10pt)
#only("-3")[c) $c_n = (-1)^n$]#only("4-")[#text(fill:red)[c) $c_n = (-1)^n$]]
#v(10pt)
#only("-4")[d) $d_n = n^2$]#only("5-")[#text(fill:red)[d) $d_n = n^2$]]
#v(40pt)
#only("1")[#voiceover("Nicht ganz, aber keine Sorge! Gehen wir jede Option durch und sehen uns die richtige Lösung an.")]
#only("2")[#voiceover("a) Die Folge $a_n = n$ konvergiert nicht. Wenn $n$ zunimmt, wachsen die Glieder der Folge unbegrenzt und nähern sich der Unendlichkeit.")]
#only("3")[#voiceover("b) Die Folge $b_n = 1/n$ konvergiert. Wenn $n$ zunimmt, nähern sich die Glieder der Folge immer mehr 0 an. Tatsächlich ist der Grenzwert dieser Folge, wenn $n$ gegen Unendlichkeit geht, 0.")]
#only("4")[#voiceover("c) Die Folge $c_n = (-1)^n$ konvergiert nicht. Die Glieder dieser Folge wechseln sich unendlich zwischen 1 und -1 ab und nähern sich nie einem einzigen Wert an.")]
#only("5")[#voiceover("d) Die Folge $d_n = n^2$ konvergiert nicht. Ähnlich wie bei der Folge a) wachsen die Glieder dieser Folge unbegrenzt, wenn $n$ zunimmt, und nähern sich der Unendlichkeit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz visualisieren 📈]
#v(40pt)
#only("1-")[Lassen Sie uns die Folgen visualisieren, um ihr Verhalten besser zu verstehen:]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)

plt.figure(figsize=(8, 6))

plt.subplot(2, 2, 1)
plt.plot(n, n, 'ro-')
plt.title('a) $a_n = n$')
plt.grid(True)

plt.subplot(2, 2, 2)
plt.plot(n, 1/n, 'bo-')
plt.title('b) $b_n = 1/n$')
plt.grid(True)

plt.subplot(2, 2, 3)
plt.plot(n, (-1)**n, 'go-')
plt.title('c) $c_n = (-1)^n$')
plt.grid(True)

plt.subplot(2, 2, 4)
plt.plot(n, n**2, 'yo-')
plt.title('d) $d_n = n^2$')
plt.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("In diesen Diagrammen können wir das Verhalten jeder Folge sehen, wenn $n$ zunimmt.")]
#only("2")[#voiceover("Bei Folge a) sehen wir einen stetigen linearen Anstieg, was auf eine Divergenz zur Unendlichkeit hinweist.")]
#only("3")[#voiceover("Bei Folge b) sehen wir, dass sich die Glieder immer mehr 0 annähern, was auf eine Konvergenz zu 0 hinweist.")]
#only("4")[#voiceover("Bei Folge c) sehen wir, dass sich die Glieder zwischen 1 und -1 abwechseln, was auf keine Konvergenz hinweist.")]
#only("5")[#voiceover("Und bei Folge d) sehen wir einen schnellen Anstieg, was auf eine Divergenz zur Unendlichkeit hinweist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition der Konvergenz 🎓]
#v(40pt)
#only("1-")[Erinnern wir uns an die formale Definition der Konvergenz:]
#v(20pt)
#only("2-")[Eine Folge $a_n$ konvergiert gegen einen Grenzwert $L$, wenn:]
#v(20pt)
#only("3-")[$∀ε > 0$, $∃N ∈ ℕ$ so dass $∀n ≥ N$, $|a_n - L| < ε$]
#v(20pt)
#only("4-")[Mit anderen Worten, wir können die Glieder der Folge so nah an $L$ heranbringen, wie wir wollen, indem wir $n$ ausreichend groß machen.]
#only("1")[#voiceover("Erinnern wir uns nun an die formale Definition der Konvergenz.")]
#only("2")[#voiceover("Eine Folge $a_n$ konvergiert gegen einen Grenzwert $L$, wenn...")]
#only("3")[#voiceover("Für jedes Epsilon größer als 0 gibt es eine natürliche Zahl $N$, so dass für alle $n$ größer oder gleich $N$ der absolute Wert von $a_n$ minus $L$ kleiner als Epsilon ist.")]
#only("4")[#voiceover("Intuitiv bedeutet dies, dass wir die Glieder der Folge so nah an $L$ heranbringen können, wie wir wollen, indem wir $n$ ausreichend groß machen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Definition 🧮]
#v(40pt)
#only("1-")[Wenden wir diese Definition auf $b_n = 1/n$ an:]
#v(20pt)
#only("2-")[Wir behaupten, dass $b_n$ gegen $L = 0$ konvergiert.]
#v(20pt)
#only("3-")[Für $ε > 0$, wählen Sie $N > 1/ε$.]
#v(20pt)
#only("4-")[Dann für $n ≥ N$, $|b_n - 0| = |1/n - 0| = 1/n < 1/N < ε$.]
#v(20pt)
#only("5-")[Somit konvergiert $b_n$ nach Definition gegen 0.]
#only("1")[#voiceover("Wenden wir nun diese Definition auf die Folge $b_n = 1/n$ an.")]
#only("2")[#voiceover("Wir behaupten, dass $b_n$ gegen $L = 0$ konvergiert.")]
#only("3")[#voiceover("Für jedes Epsilon größer als 0 wählen wir $N$ größer als 1 durch Epsilon.")]
#only("4")[#voiceover("Dann ist für jedes $n$ größer oder gleich $N$ der absolute Wert von $b_n$ minus 0, was nur 1 durch $n$ ist, kleiner als 1 durch $N$, was wiederum kleiner als Epsilon ist.")]
#only("5")[#voiceover("Somit haben wir nach der formalen Definition der Konvergenz gezeigt, dass $b_n$ tatsächlich gegen 0 konvergiert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Eine Folge konvergiert, wenn ihre Glieder gegen einen bestimmten Grenzwert streben, wenn $n$ gegen Unendlichkeit geht.]
#v(20pt)
#only("2-")[- Die Visualisierung von Folgen kann Einblicke in ihr Konvergenzverhalten geben.]
#v(20pt)
#only("3-")[- Die formale Definition der Konvergenz bietet eine strenge Möglichkeit, die Konvergenz zu beweisen.]
#v(20pt)
#only("4-")[- Von den gegebenen Folgen konvergiert nur $b_n = 1/n$ (gegen 0).]
#only("1")[#voiceover("Fassen wir die wichtigsten Punkte zur Konvergenz von Folgen zusammen.")]
#only("2")[#voiceover("Die Visualisierung von Folgen kann uns eine gute Vorstellung davon geben, ob sie konvergieren oder divergieren.")]
#only("3")[#voiceover("Die formale Definition der Konvergenz bietet eine strenge Möglichkeit, zu beweisen, dass eine Folge gegen einen bestimmten Grenzwert konvergiert.")]
#only("4")[#voiceover("Und von den betrachteten Folgen konvergiert nur $b_n = 1/n$, und zwar gegen 0. Die anderen divergieren alle.")]
]