#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenzkriterium]
#v(40pt)
#only("1-")[Welches Kriterium wird oft verwendet, um die Konvergenz einer Zahlenfolge zu bestimmen?]
#v(40pt)
#only("-1")[a) Epsilon-Kriterium]#only("2-")[#text(fill:green)[a) Epsilon-Kriterium]]
#v(10pt)
#only("-2")[b) Delta-Kriterium]#only("3-")[#text(fill:red)[b) Delta-Kriterium]]
#v(10pt)
#only("-3")[c) Gamma-Kriterium]#only("4-")[#text(fill:red)[c) Gamma-Kriterium]]
#v(10pt)
#only("-4")[d) Theta-Kriterium]#only("5-")[#text(fill:red)[d) Theta-Kriterium]]
#v(40pt)

#only("1")[#voiceover("Das ist korrekt, super gemacht!")]
#only("2")[#voiceover("a) Das Epsilon-Kriterium ist tatsächlich das am häufigsten verwendete Kriterium, um die Konvergenz einer Zahlenfolge zu bestimmen.")]
#only("3")[#voiceover("b) Das Delta-Kriterium ist nicht das richtige Kriterium für die Konvergenz einer Zahlenfolge. Es wird in einem anderen Kontext verwendet.")]
#only("4")[#voiceover("c) Auch das Gamma-Kriterium ist hier nicht zutreffend. Ein solches Kriterium gibt es in diesem Zusammenhang nicht.")]
#only("5")[#voiceover("d) Das Theta-Kriterium ist ebenfalls nicht das gesuchte Kriterium. Auch dieses wird in einem anderen Kontext verwendet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Epsilon-Kriterium]
#v(40pt)
#only("1-")[Definition:]
#v(20pt)
#only("2-")[Eine Folge $(a_n)$ konvergiert gegen den Grenzwert $a$, wenn gilt:]
#v(20pt)
#only("3-")[
$ forall epsilon > 0 quad exists N in NN quad forall n ≥ N colon |a_n - a| < epsilon $
]
#v(40pt)
#only("4-")[In Worten: 🗣]
#v(20pt)
#only("5-")[Für jedes noch so kleine $epsilon > 0$ gibt es eine Stelle $N$, sodass alle Folgenglieder $a_n$ mit $n ≥ N$ weniger als $epsilon$ vom Grenzwert $a$ entfernt sind.]

#only("1")[#voiceover("Schauen wir uns die Definition des Epsilon-Kriteriums genauer an.")]
#only("2")[#voiceover("Eine Folge a_n konvergiert gegen den Grenzwert a, wenn Folgendes gilt:")]
#only("3")[#voiceover("Für jedes Epsilon größer 0 existiert ein N in den natürlichen Zahlen, sodass für alle n größer oder gleich N der Betrag von a_n minus a kleiner als Epsilon ist.")]
#only("4")[#voiceover("Lassen Sie uns das in Worte fassen:")]
#only("5")[#voiceover("Für jedes noch so kleine Epsilon größer 0 gibt es eine Stelle N, sodass alle Folgenglieder a_n mit n größer oder gleich N weniger als Epsilon vom Grenzwert a entfernt sind.")]
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

def a(n):
    return 1 + 1/n

n = np.arange(1, 100)
plt.figure(figsize=(8, 6))
plt.plot(n, a(n), label='$a_n$')
plt.axhline(y=1, color='r', linestyle='-', label='Grenzwert a')
plt.fill_between(n, a(n), 1, where=(n>=10), alpha=0.3, color='green', label='$|a_n - a| < epsilon$')
plt.legend()
plt.grid(True)
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("2-")[- Die Folge $a_n$ (blau) nähert sich dem Grenzwert $a$ (rot) an.]
#v(20pt)
#only("3-")[- Ab einem bestimmten $N$ (hier: $N=10$) sind alle Folgenglieder weniger als $epsilon$ vom Grenzwert entfernt (grüner Bereich).]

#only("1")[#voiceover("Hier sehen wir eine Visualisierung des Epsilon-Kriteriums.")]
#only("2")[#voiceover("Die Folge a_n, dargestellt durch die blaue Linie, nähert sich dem Grenzwert a, der roten Linie, an.")]
#only("3")[#voiceover("Ab einem bestimmten N, in diesem Beispiel N gleich 10, sind alle Folgenglieder weniger als Epsilon vom Grenzwert entfernt. Dies wird durch den grünen Bereich dargestellt.")]
]
]