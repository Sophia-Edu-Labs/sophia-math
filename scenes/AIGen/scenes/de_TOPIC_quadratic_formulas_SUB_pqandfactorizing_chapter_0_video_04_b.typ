#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen: Grafische Darstellung]
#v(40pt)
Welche der folgenden Darstellungen repräsentiert eine quadratische Gleichung grafisch?
#v(20pt)
#only("-1")[a) Eine gerade Linie]#only("2-")[#text(fill:red)[a) Eine gerade Linie]]
#v(10pt)
#only("-2")[b) Eine Parabel]#only("3-")[#text(fill:green)[b) Eine Parabel]]
#v(10pt)
#only("-3")[c) Eine Hyperbel]#only("4-")[#text(fill:red)[c) Eine Hyperbel]]

#only("1")[#voiceover("Ausgezeichnet! Du hast richtig erkannt, dass eine Parabel eine quadratische Gleichung grafisch darstellt. Lass uns erkunden, warum das so ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("Option a, eine gerade Linie, ist falsch. Eine gerade Linie stellt eine lineare Gleichung dar, keine quadratische.")]
#only("3")[#voiceover("Option b, eine Parabel, ist korrekt. Eine Parabel ist tatsächlich die grafische Darstellung einer quadratischen Gleichung.")]
#only("4")[#voiceover("Option c, eine Hyperbel, ist falsch. Eine Hyperbel stellt eine andere Art von Gleichung dar, nicht eine quadratische.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichung: Allgemeine Form]
#v(40pt)
#only("1-")[Die allgemeine Form einer quadratischen Gleichung ist:]
#v(20pt)
#only("2-")[$ f(x) = a x^2 + b x + c $]
#v(20pt)
#only("3-")[Wobei:]
#v(10pt)
#only("4-")[- $a ≠ 0$]
#only("5-")[- $b$ und $c$ können beliebige reelle Zahlen sein]

#only("1")[#voiceover("Lass uns zunächst die allgemeine Form einer quadratischen Gleichung in Erinnerung rufen.")]
#only("2")[#voiceover("Eine quadratische Gleichung wird typischerweise als f von x gleich a x Quadrat plus b x plus c geschrieben.")]
#only("3")[#voiceover("In dieser Gleichung:")]
#only("4")[#voiceover("a ist nicht gleich null. Wenn a null wäre, wäre die Gleichung nicht mehr quadratisch.")]
#only("5")[#voiceover("b und c können beliebige reelle Zahlen sein, einschließlich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Parabel: Der Graph einer quadratischen Gleichung]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.title('Parabel: y = x²')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Form: ∪ oder ∩]
#only("2-")[- Symmetrisch zur vertikalen Achse]
#only("3-")[- Ein Minimum- oder Maximumspunkt]

#only("1")[#voiceover("Wenn wir eine quadratische Gleichung grafisch darstellen, erhalten wir eine Parabel. Diese Parabel kann nach oben oder unten geöffnet sein, je nachdem, ob a positiv oder negativ ist.")]
#only("2")[#voiceover("Ein wesentliches Merkmal einer Parabel ist, dass sie symmetrisch zur vertikalen Achse ist.")]
#only("3")[#voiceover("Sie hat auch einen Minimumspunkt, wenn sie nach oben geöffnet ist, oder einen Maximumspunkt, wenn sie nach unten geöffnet ist. Dieser Punkt wird als Scheitelpunkt der Parabel bezeichnet.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum keine gerade Linie oder Hyperbel?]
#v(20pt)
#only("1-")[Gerade Linie:] 
#only("2-")[- Repräsentiert lineare Gleichungen: $ y = m x + b $]
#only("3-")[- Kein quadratischer Term]
#v(20pt)
#only("4-")[Hyperbel:]
#only("5-")[- Repräsentiert Gleichungen wie: $ x y = k $ oder $ y = 1/x $]
#only("6-")[- Andere Form und Eigenschaften]

#only("1")[#voiceover("Nun, lass uns betrachten, warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("Eine gerade Linie repräsentiert eine lineare Gleichung, die typischerweise als y gleich m x plus b geschrieben wird.")]
#only("3")[#voiceover("Im Gegensatz zu quadratischen Gleichungen haben lineare Gleichungen keinen quadratischen Term, weshalb ihre Graphen gerade Linien und keine Kurven sind.")]
#only("4")[#voiceover("Eine Hyperbel hingegen")]
#only("5")[#voiceover("repräsentiert Gleichungen wie x y gleich k oder y gleich eins durch x.")]
#only("6")[#voiceover("Hyperbeln haben eine ganz andere Form und Eigenschaften im Vergleich zu Parabeln.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[✅ Quadratische Gleichungen werden als Parabeln dargestellt]
#v(20pt)
#only("2-")[🔑 Wichtige Merkmale: U-Form, Symmetrie, Scheitelpunkt]
#v(20pt)
#only("3-")[💡 Denke daran: $ f(x) = a x^2 + b x + c $ wobei $ a ≠ 0 $]

#only("1")[#voiceover("Zusammenfassend werden quadratische Gleichungen als Parabeln dargestellt.")]
#only("2")[#voiceover("Die wichtigsten Merkmale einer Parabel sind ihre U-Form, Symmetrie und das Vorhandensein eines Scheitelpunkts.")]
#only("3")[#voiceover("Denke immer daran, eine quadratische Gleichung hat die Form f von x gleich a x Quadrat plus b x plus c, wobei a nicht gleich null ist. Dies verleiht uns die charakteristische parabolische Form.")]
]