#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Großartige Arbeit! Du hast es geschafft. Lass uns den Beweis Schritt für Schritt durchgehen, um unser Verständnis zu festigen.")
]

#text(size: 30pt, weight: "bold")[Problem]

#v(40pt)

#only("2-")[Beweise, dass die Folge $a_n = 1/n$ gegen 0 konvergiert, indem du die formale Definition der Konvergenz verwendest.]
// Die Problemstellung wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir wollen beweisen, dass die Folge a sub n gleich eins durch n gegen null konvergiert, indem wir die formale Definition der Konvergenz verwenden.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Formale Definition der Konvergenz]

#v(40pt)

#only("1-")[Eine Folge $a_n$ konvergiert gegen $L$, wenn für jedes $ε > 0$ ein $N$ existiert, sodass für alle $n >= N$ gilt: $|a_n - L| < ε$.]

#only("1")[
#voiceover("Erinnern wir uns an die formale Definition der Konvergenz. Eine Folge a sub n konvergiert gegen L, wenn für jedes Epsilon größer als null ein N existiert, sodass für alle n größer oder gleich N der Betrag von a sub n minus L kleiner als Epsilon ist.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Beweis]

#v(40pt)

#only("1-")[Sei $ε > 0$ gegeben.]
// Der erste Schritt des Beweises wird ab Folie 1 angezeigt

#v(10pt)

#only("2-")[Wähle $N = 1/ε$.]
// Die Wahl von N wird ab Folie 2 angezeigt

#v(10pt)

#only("3-")[Dann für alle $n ≥ N$,]
// Die Bedingung für n wird ab Folie 3 angezeigt

#v(10pt)

#only("4-")[$ |a_n - 0| = |1/n - 0| = 1/n $]
// Die Manipulation des Betrags wird ab Folie 4 angezeigt

#v(10pt)

#only("5-")[$ 1/n ≤ 1/N = 1/(1/ε) = ε $]
// Die abschließende Ungleichung wird ab Folie 5 angezeigt

#only("1")[#voiceover("Sei Epsilon eine beliebige positive reelle Zahl.")]

#only("2")[#voiceover("Wir wählen N als eins durch Epsilon.")]

#only("3")[#voiceover("Dann für alle n größer oder gleich N,")]

#only("4")[#voiceover("ist der Betrag von a sub n minus null gleich dem Betrag von eins durch n minus null, was einfach eins durch n ist.")]

#only("5")[#voiceover("Eins durch n ist kleiner oder gleich eins durch N, was eins durch eins durch Epsilon ist, was einfach Epsilon ist.")]

#only("6")[#voiceover("Daher konvergiert die Folge a sub n gleich eins durch n nach der formalen Definition der Konvergenz gegen null.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualisierung 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(10, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='$L = 0$')
plt.legend(loc='upper right')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Konvergenz von $a_n = 1/n$ gegen 0')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// Die Visualisierung der Konvergenz wird ab Folie 1 angezeigt

#only("1")[
#voiceover("Hier ist eine Visualisierung der Konvergenz. Die blauen Punkte repräsentieren die Glieder der Folge a sub n gleich eins durch n. Mit zunehmendem n nähern sich die Glieder immer mehr der roten Linie, die das Limit null darstellt.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Folge: $a_n = 1/n$ 📜]

#v(20pt)

#only("2-")[- Limit: $L = 0$ 🎯]

#v(20pt)

#only("3-")[- Beweis: Verwendung der formalen Definition der Konvergenz ✅]

#v(20pt)

#only("4-")[- Wichtige Schritte: Wähle $N = 1/ε$, zeige $|a_n - 0| < ε$ 🔑]

#only("1")[#voiceover("Zusammenfassend haben wir die Folge a sub n gleich eins durch n betrachtet.")]

#only("2")[#voiceover("Wir wollten beweisen, dass sie gegen null konvergiert.")]

#only("3")[#voiceover("Wir haben in unserem Beweis die formale Definition der Konvergenz verwendet.")]

#only("4")[#voiceover("Die wichtigen Schritte waren, N als eins durch Epsilon zu wählen und dann zu zeigen, dass der Betrag von a sub n minus null kleiner als Epsilon ist für alle n größer oder gleich N.")]

#only("5")[#voiceover("Großartige Arbeit bei diesem Beweis! Du hast ein solides Verständnis der formalen Definition der Konvergenz demonstriert.")]

]