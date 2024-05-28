#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis eines Vektorraums]
#v(40pt)
#only("1-")[Eine Basis ist eine Menge von Vektoren, die ____ einen Vektorraum.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) aufspannen]#only("2-")[#text(fill:green)[a) aufspannen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) schneiden]#only("3-")[#text(fill:red)[b) schneiden]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) teilen]#only("4-")[#text(fill:red)[c) teilen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) keine der oben genannten]#only("5-")[#text(fill:red)[d) keine der oben genannten]]

#only("1")[#voiceover("Großartig! Das ist absolut korrekt. Lass uns sehen, warum...")]
#only("2")[#voiceover("a) aufspannen ist die richtige Antwort. Eine Basis ist tatsächlich eine Menge von Vektoren, die einen Vektorraum aufspannen.")]
#only("3")[#voiceover("b) schneiden ist falsch. Basisvektoren schneiden sich nicht notwendigerweise, sie spannen den Raum auf.")]
#only("4")[#voiceover("c) teilen ist ebenfalls falsch. Teilung ist kein relevantes Konzept für Basisvektoren.")]
#only("5")[#voiceover("Und d) keine der oben genannten ist falsch, weil a) die richtige Antwort ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Aufspannen eines Vektorraums]
#v(40pt)
#only("1-")[Was bedeutet es, dass Vektoren einen Raum aufspannen? 🤔]
#v(20pt)
#only("2-")[- Jeder Vektor im Raum kann als Linearkombination der Basisvektoren geschrieben werden. 🎨]
#v(20pt)
#only("3-")[- Beispiel: In $RR^2$ spannen $mat(1;0)$ und $mat(0;1)$ den Raum auf. 📏]
#v(20pt)
#only("4-")[- Jeder Vektor $mat(a;b)$ kann als $a mat(1;0) + b mat(0;1)$ geschrieben werden. ✍]

#only("1")[#voiceover("Lass uns tiefer eintauchen, was es bedeutet, dass Vektoren einen Raum aufspannen.")]
#only("2")[#voiceover("Wenn wir sagen, dass Vektoren einen Raum aufspannen, meinen wir, dass jeder Vektor in diesem Raum als Linearkombination dieser Vektoren geschrieben werden kann.")]
#only("3")[#voiceover("Zum Beispiel spannen im zweidimensionalen reellen Raum $RR^2$ die Standardbasisvektoren $mat(1;0)$ und $mat(0;1)$ den gesamten Raum auf.")]
#only("4")[#voiceover("Das bedeutet, dass jeder Vektor $mat(a;b)$ in $RR^2$ als Linearkombination dieser Basisvektoren geschrieben werden kann: $a mat(1;0) + b mat(0;1)$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung des Aufspannens]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 0])
v2 = np.array([0, 1])

origin = np.array([[0, 0],[0, 0]]) 
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='(1, 0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='(0, 1)')

x = np.linspace(-5, 5, 10)
y = np.linspace(-5, 5, 10)
X, Y = np.meshgrid(x, y)

plt.figure(figsize=(6, 6))
plt.quiver(X, Y, X, Y, color='b', angles='xy', scale_units='xy', scale=1)
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='(1, 0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='(0, 1)')
plt.xlim(-6, 6)
plt.ylim(-6, 6)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.grid()
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine Visualisierung: 📊]
#v(20pt)
#only("2-")[- Die roten und grünen Pfeile sind die Basisvektoren $mat(1;0)$ und $mat(0;1)$. 🔴🟢]
#v(20pt)
#only("3-")[- Die blauen Pfeile repräsentieren alle möglichen Vektoren in $RR^2$. 🔵]
#v(20pt)
#only("4-")[- Jeder blaue Pfeil kann durch eine Kombination der roten und grünen Pfeile erreicht werden. 🎯]

#only("1")[#voiceover("Lass uns dieses Konzept visualisieren, um es klarer zu machen.")]
#only("2")[#voiceover("In diesem Diagramm repräsentieren die roten und grünen Pfeile die Basisvektoren $mat(1;0)$ und $mat(0;1)$.")]
#only("3")[#voiceover("Die blauen Pfeile repräsentieren alle möglichen Vektoren im zweidimensionalen Raum $RR^2$.")]
#only("4")[#voiceover("Wie du sehen kannst, kann jeder blaue Pfeil, also jeder Vektor in $RR^2$, durch eine Kombination der roten und grünen Basisvektoren erreicht werden. Das bedeutet, dass die Basisvektoren den Raum aufspannen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Eine Basis ist eine Menge von Vektoren, die einen Vektorraum aufspannen. 🎯]
#v(20pt)
#only("2-")[- Aufspannen bedeutet, dass jeder Vektor im Raum als Linearkombination der Basisvektoren geschrieben werden kann. 📐]
#v(20pt)
#only("3-")[- In $RR^2$ bilden $mat(1;0)$ und $mat(0;1)$ eine Standardbasis, die den Raum aufspannt. 🔴🟢]
#v(20pt)
#only("4-")[Großartige Arbeit beim Verständnis dieses grundlegenden Konzepts! 🌟]

#only("1")[#voiceover("Zusammenfassend ist eine Basis eine Menge von Vektoren, die einen Vektorraum aufspannen.")]
#only("2")[#voiceover("Aufspannen bedeutet, dass jeder Vektor im Raum als Linearkombination der Basisvektoren geschrieben werden kann.")]
#only("3")[#voiceover("Im zweidimensionalen reellen Raum $RR^2$ bilden die Vektoren $mat(1;0)$ und $mat(0;1)$ eine Standardbasis, die den gesamten Raum aufspannt.")]
#only("4")[#voiceover("Großartige Arbeit beim Verständnis dieses grundlegenden Konzepts der linearen Algebra! Mach weiter so.")]
]