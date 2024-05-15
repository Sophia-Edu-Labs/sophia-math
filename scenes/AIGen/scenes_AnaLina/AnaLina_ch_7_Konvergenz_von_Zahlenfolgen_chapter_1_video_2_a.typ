#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz]
#v(40pt)
#only("1-")[Eine Zahlenfolge konvergiert, wenn sie sich ______ nähert.]
#v(40pt)
#only("-1")[a) einem bestimmten Wert]#only("2-")[#text(fill:green)[a) einem bestimmten Wert]]
#v(10pt)
#only("-2")[b) unendlich vielen Werten]#only("3-")[#text(fill:red)[b) unendlich vielen Werten]]
#v(10pt)
#only("-3")[c) null]#only("4-")[#text(fill:red)[c) null]]
#v(10pt)
#only("-4")[d) keiner Antwort ist richtig]#only("5-")[#text(fill:red)[d) keiner Antwort ist richtig]]

#only("1")[#voiceover("Das ist richtig, super gemacht!")]
#only("2")[#voiceover("Eine Zahlenfolge konvergiert genau dann, wenn sie sich einem bestimmten Wert nähert. Dieser Wert wird als Grenzwert bezeichnet.")]
#only("3")[#voiceover("Die Antwort b) unendlich vielen Werten ist falsch. Eine Folge kann sich nicht unendlich vielen Werten nähern und dabei konvergieren.")]
#only("4")[#voiceover("Auch die Antwort c) null ist nicht immer richtig. Eine Folge kann gegen jeden reellen Wert konvergieren, nicht nur gegen Null.")]
#only("5")[#voiceover("Und d) ist ebenfalls falsch, da es eine richtige Antwort gibt, nämlich a).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte die Folge $a_n = 1/n$, mit $n = 1, 2, 3, ...$]
#v(20pt)
#only("2-")[Die ersten Glieder sind:]
#v(10pt)
#only("3-")[- $a_1 = 1/1 = 1$]
#only("4-")[- $a_2 = 1/2 = 0.5$]
#only("5-")[- $a_3 = 1/3 ≈ 0.33$]
#only("6-")[- $a_4 = 1/4 = 0.25$]
#only("7-")[- ...]
#v(20pt)
#only("8-")[Je größer $n$ wird, desto näher kommt $a_n$ an $0$ heran.]
#v(20pt)
#only("9-")[Die Folge $a_n = 1/n$ konvergiert gegen $0$. 📉]

#only("1")[#voiceover("Schauen wir uns ein konkretes Beispiel an, um die Konvergenz zu veranschaulichen. Betrachten wir die Folge a_n gleich 1 durch n, wobei n die natürlichen Zahlen durchläuft.")]
#only("2-3")[#voiceover("Wenn wir uns die ersten Glieder anschauen, sehen wir:")]
#only("4-7")[#voiceover("a_1 ist 1, a_2 ist 0.5, a_3 ist ungefähr 0.33, a_4 ist 0.25, und so weiter.")]
#only("8")[#voiceover("Wir sehen, dass je größer n wird, desto näher kommt a_n an 0 heran.")]
#only("9")[#voiceover("Die Folge a_n gleich 1 durch n konvergiert also gegen 0.")]
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

n = np.arange(1, 11)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='Grenzwert')
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
#only("1")[#voiceover("Hier sehen wir die Folge a_n gleich 1 durch n graphisch dargestellt. Die blaue Linie zeigt die Folgenglieder und die rote gestrichelte Linie markiert den Grenzwert 0. Wir sehen deutlich, wie sich die Folge immer weiter dem Grenzwert annähert, je größer n wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergenz bedeutet Annäherung an einen bestimmten Wert (Grenzwert) 🎯]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen $0$ für $n → ∞$ 📉]
#v(20pt)
#only("3-")[- Graphisch: Folgenglieder nähern sich immer weiter dem Grenzwert an 📈]

#only("1")[#voiceover("Zusammenfassend bedeutet Konvergenz also die Annäherung einer Folge an einen bestimmten Wert, den sogenannten Grenzwert.")]
#only("2")[#voiceover("In unserem Beispiel konvergiert die Folge a_n gleich 1 durch n gegen 0, wenn n gegen unendlich geht.")]
#only("3")[#voiceover("Graphisch sehen wir, wie sich die Folgenglieder immer weiter dem Grenzwert annähern. Das ist das Prinzip der Konvergenz.")]
]