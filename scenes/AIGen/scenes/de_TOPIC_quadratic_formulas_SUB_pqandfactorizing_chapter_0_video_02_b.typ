#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen]
#v(40pt)
Welche der folgenden ist eine quadratische Gleichung?
#v(20pt)
#only("-1")[a) $2x + 3 = 0$]#only("2-")[#text(fill:red)[a) $2x + 3 = 0$]]
#v(10pt)
#only("-2")[b) $x^2 + 5x + 6 = 0$]#only("3-")[#text(fill:green)[b) $x^2 + 5x + 6 = 0$]]
#v(10pt)
#only("-3")[c) $3x^3 - 2x^2 + 1 = 0$]#only("4-")[#text(fill:red)[c) $3x^3 - 2x^2 + 1 = 0$]]

#only("1")[#voiceover("Großartig! Du hast die quadratische Gleichung korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen warum.")]
#only("2")[#voiceover("Option a, 2x plus 3 gleich 0, ist keine quadratische Gleichung. Es ist eine lineare Gleichung, da der höchste Exponent von x 1 ist.")]
#only("3")[#voiceover("Option b, x quadrat plus 5x plus 6 gleich 0, ist tatsächlich eine quadratische Gleichung. Sie hat x quadrat als höchsten Exponent.")]
#only("4")[#voiceover("Option c, 3x hoch 3 minus 2x quadrat plus 1 gleich 0, ist keine quadratische Gleichung. Es ist eine kubische Gleichung, da der höchste Exponent von x 3 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von quadratischen Gleichungen]
#v(40pt)
#only("1-")[- Höchster Exponent von x ist 2 📊]
#v(20pt)
#only("2-")[- Allgemeine Form: $a x^2 + b x + c = 0$ 🧮]
#v(20pt)
#only("3-")[- $a ≠ 0$ ❗]

#only("1")[#voiceover("Lass uns die Eigenschaften von quadratischen Gleichungen überprüfen. Erstens, in einer quadratischen Gleichung ist der höchste Exponent von x immer 2.")]
#only("2")[#voiceover("Die allgemeine Form einer quadratischen Gleichung ist a x quadrat plus b x plus c gleich 0, wobei a, b und c Konstanten sind.")]
#only("3")[#voiceover("Es ist wichtig zu beachten, dass a nicht null sein darf. Wenn a null wäre, wäre die Gleichung nicht mehr quadratisch.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Unsere quadratische Gleichung]
#v(40pt)
#only("1-")[#text(size: 24pt)[#text(fill:green)[$x^2 + 5x + 6 = 0$]]]
#v(40pt)
#only("2-")[- $a = 1$]
#v(20pt)
#only("3-")[- $b = 5$]
#v(20pt)
#only("4-")[- $c = 6$]

#only("1")[#voiceover("Schauen wir uns nun unsere quadratische Gleichung an: x quadrat plus 5x plus 6 gleich 0.")]
#only("2")[#voiceover("In dieser Gleichung ist a gleich 1, da der Koeffizient von x quadrat 1 ist.")]
#only("3")[#voiceover("b ist gleich 5, da es der Koeffizient von x ist.")]
#only("4")[#voiceover("Und c ist gleich 6, was der konstante Term ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-6, 1, 100)
y = x**2 + 5*x + 6

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='y = x² + 5x + 6')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=0, color='k')
plt.axhline(y=0, color='k')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von x² + 5x + 6 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine grafische Darstellung unserer quadratischen Gleichung. Die blaue Kurve repräsentiert y gleich x quadrat plus 5x plus 6, und die rote gestrichelte Linie repräsentiert y gleich 0.")]
#only("2")[#voiceover("Die Punkte, an denen die blaue Kurve die rote gestrichelte Linie schneidet, sind die Lösungen unserer quadratischen Gleichung. Diese Punkte werden als die Wurzeln der Gleichung bezeichnet.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Quadratische Gleichung: $a x^2 + b x + c = 0$ 📝]
#v(20pt)
#only("2-")[- Unsere Gleichung: $x^2 + 5x + 6 = 0$ ✅]
#v(20pt)
#only("3-")[- Höchster Exponent von x ist 2 🔢]
#v(20pt)
#only("4-")[- Bildet eine Parabel, wenn sie grafisch dargestellt wird 📈]

#only("1")[#voiceover("Zusammenfassend hat eine quadratische Gleichung die allgemeine Form a x quadrat plus b x plus c gleich 0.")]
#only("2")[#voiceover("Unsere spezifische quadratische Gleichung ist x quadrat plus 5x plus 6 gleich 0.")]
#only("3")[#voiceover("Denke daran, dass das Hauptmerkmal einer quadratischen Gleichung ist, dass der höchste Exponent von x 2 ist.")]
#only("4")[#voiceover("Wenn sie grafisch dargestellt wird, bildet eine quadratische Gleichung eine Parabel, wie wir in unserem Diagramm gesehen haben. Großartige Arbeit beim Verständnis quadratischer Gleichungen!")]
]