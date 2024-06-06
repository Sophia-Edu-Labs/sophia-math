#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Was ist $root(3, -27)$?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) -3]#only("2-")[#text(fill:green)[a) -3]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 3]#only("3-")[#text(fill:red)[b) 3]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 wird sie dann rot, weil sie falsch ist.
#only("-3")[c) -9]#only("4-")[#text(fill:red)[c) -9]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 9]#only("5-")[#text(fill:red)[d) 9]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, großartige Arbeit!")]
// Sprich kurz über a und warum es korrekt ist
#only("2")[#voiceover("Die richtige Antwort ist a) -3. Lass uns sehen, warum in der Schritt-für-Schritt-Lösung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben: $root(3, -27)$]
#v(20pt)
#only("2-")[Schritt 1: Erinnere dich daran, dass bei ungeraden Wurzeln das Ergebnis negativ sein kann.]
#v(20pt)
#only("3-")[Schritt 2: Denke an eine Zahl, die, wenn sie hoch drei genommen wird, -27 ergibt.]
#v(20pt)
#only("4-")[$(-3)^3 = -27$]
#v(20pt)
#only("5-")[Daher ist $root(3, -27) = -3$ ✅]

#only("1")[#voiceover("Wir haben die dritte Wurzel von minus 27 gegeben.")]
#only("2")[#voiceover("Der erste Schritt ist, sich daran zu erinnern, dass bei ungeraden Wurzeln, wie der dritten Wurzel, das Ergebnis negativ sein kann.")]
#only("3")[#voiceover("Als nächstes müssen wir an eine Zahl denken, die, wenn sie hoch drei genommen wird, minus 27 ergibt.")]
#only("4")[#voiceover("Minus 3 hoch drei ergibt minus 27.")]
#only("5")[#voiceover("Daher ist die dritte Wurzel von minus 27 minus 3.")]
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

x = np.linspace(-5, 5, 100)
y = x**3

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, 'b-', label='$y = x^3$')
ax.plot([-3], [-27], 'ro', label='$(-3, -27)$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph von $y = x^3$')
ax.grid(True)
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Der Graph von $y = x^3$ ist dargestellt.]
#v(20pt)
#only("2-")[Der Punkt $(-3, -27)$ ist hervorgehoben.]
#v(20pt)
#only("3-")[Dies zeigt, dass $root(3, -27) = -3$ ist, da $(-3)^3 = -27$.]

#only("1")[#voiceover("Lass uns das in einem Graphen visualisieren.")]
#only("2")[#voiceover("Der rote Punkt auf dem Graphen von y gleich x hoch drei befindet sich bei minus 3, minus 27.")]
#only("3")[#voiceover("Dies zeigt, dass die dritte Wurzel von minus 27 tatsächlich minus 3 ist, da minus 3 hoch drei minus 27 ergibt.")]
]