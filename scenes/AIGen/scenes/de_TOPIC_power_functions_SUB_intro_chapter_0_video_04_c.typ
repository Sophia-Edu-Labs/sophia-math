#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Funktion: $x^2$]
#v(40pt)
Welches der folgenden Diagramme gehört zur Funktion $x^2$?
#v(20pt)
#only("-1")[a) Rotes Diagramm ($x^3$)]#only("2-")[#text(fill:red)[a) Rotes Diagramm ($x^3$)]]
#v(10pt)
#only("-2")[b) Grünes Diagramm ($1/x$)]#only("3-")[#text(fill:red)[b) Grünes Diagramm ($1/x$)]]
#v(10pt)
#only("-3")[c) Blaues Diagramm ($x^2$)]#only("4-")[#text(fill:green)[c) Blaues Diagramm ($x^2$)]]
#v(10pt)
#only("-4")[d) Oranges Diagramm ($1/x^2$)]#only("5-")[#text(fill:red)[d) Oranges Diagramm ($1/x^2$)]]

#only("1")[#voiceover("Ausgezeichnet! Du hast das Diagramm von x Quadrat korrekt identifiziert. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a, das rote Diagramm, repräsentiert x hoch drei. Diese Funktion wächst viel schneller als x Quadrat für positive x-Werte und nimmt schneller ab für negative x-Werte.")]
#only("3")[#voiceover("Option b, das grüne Diagramm, ist eins durch x. Dies ist eine Hyperbel und sieht ganz anders aus als unsere Parabel.")]
#only("4")[#voiceover("Option c, das blaue Diagramm, ist tatsächlich x Quadrat. Dies ist unsere richtige Antwort. Es bildet eine Parabel, die nach oben öffnet und symmetrisch zur y-Achse ist.")]
#only("5")[#voiceover("Option d, das orange Diagramm, repräsentiert eins durch x Quadrat. Diese Funktion bildet ebenfalls eine U-Form, aber sie schneidet niemals die x-Achse und nähert sich unendlich, wenn x sich von beiden Seiten null nähert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von $x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', label='$y = x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von $y = x^2$')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- U-förmige Kurve (Parabel) 📈]
#v(10pt)
#only("2-")[- Öffnet nach oben ⬆️]
#v(10pt)
#only("3-")[- Scheitelpunkt am Ursprung (0, 0) 🎯]
#v(10pt)
#only("4-")[- Symmetrisch zur y-Achse 🪞]

#only("1")[#voiceover("Lass uns die wichtigsten Eigenschaften der Funktion y gleich x Quadrat untersuchen. Zuerst beachte, dass sie eine U-förmige Kurve bildet, die wir Parabel nennen.")]
#only("2")[#voiceover("Die Parabel öffnet nach oben, das bedeutet, dass y zunimmt, wenn sich x in beide Richtungen von null entfernt.")]
#only("3")[#voiceover("Der tiefste Punkt der Parabel, der Scheitelpunkt, liegt am Ursprung - dem Punkt null, null.")]
#only("4")[#voiceover("Zuletzt beachte, dass der Graph symmetrisch zur y-Achse ist. Das bedeutet, wenn du den Graphen entlang der y-Achse faltest, würden beide Seiten perfekt übereinanderliegen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vergleich von $x^2$ mit anderen Funktionen]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3
y2 = 1/x
y3 = x**2
y4 = 1/(x**2)

plt.figure(figsize=(10, 7))
plt.plot(x, y1, 'r-', label='$y = x^3$')
plt.plot(x, y2, 'g-', label='$y = 1/x$')
plt.plot(x, y3, 'b-', label='$y = x^2$')
plt.plot(x, y4, 'orange', label='$y = 1/x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vergleich verschiedener Funktionen')
plt.legend()
plt.grid(True)
plt.ylim(-5, 5)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- $x^3$: Kubische Funktion (rot) 🔴]
#v(10pt)
#only("2-")[- $1/x$: Reziproke Funktion (grün) 🟢]
#v(10pt)
#only("3-")[- $x^2$: Quadratische Funktion (blau) 🔵]
#v(10pt)
#only("4-")[- $1/x^2$: Reziproke quadratische Funktion (orange) 🟠]

#only("1")[#voiceover("Nun, lass uns x Quadrat mit den anderen Funktionen aus unserer Multiple-Choice-Frage vergleichen. Die rote Kurve repräsentiert y gleich x hoch drei. Beachte, wie sie viel schneller wächst als x Quadrat für positive x-Werte und schneller abnimmt für negative x-Werte.")]
#only("2")[#voiceover("Die grüne Kurve ist y gleich eins durch x. Dies ist eine Hyperbel und sieht ganz anders aus als unsere Parabel. Sie hat zwei getrennte Teile und nähert sich positiv oder negativ unendlich, wenn x sich null nähert.")]
#only("3")[#voiceover("Die blaue Kurve ist unsere quadratische Funktion, y gleich x Quadrat. Wie besprochen, ist es eine Parabel, die nach oben öffnet und symmetrisch zur y-Achse ist.")]
#only("4")[#voiceover("Schließlich repräsentiert die orange Kurve y gleich eins durch x Quadrat. Während sie auch eine U-Form bildet, schneidet sie niemals die x-Achse und nähert sich positiv unendlich, wenn x sich null von beiden Seiten nähert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- $x^2$ bildet eine Parabel 📈]
#v(20pt)
#only("2-")[- Immer nicht-negativ für reale x-Werte ➕]
#v(20pt)
#only("3-")[- Symmetrisch zur y-Achse 🪞]
#v(20pt)
#only("4-")[- Einzigartig unter den gegebenen Optionen ✨]

#only("1")[#voiceover("Lass uns die wichtigsten Punkte über die Funktion y gleich x Quadrat zusammenfassen. Erstens und vor allem bildet sie eine Parabel.")]
#only("2")[#voiceover("Eine wichtige Eigenschaft ist, dass für jeden realen x-Wert y immer nicht-negativ ist. Deshalb geht der Graph niemals unter die x-Achse.")]
#only("3")[#voiceover("Wie bereits erwähnt, ist der Graph symmetrisch zur y-Achse.")]
#only("4")[#voiceover("Diese Eigenschaften machen x Quadrat einzigartig unter den in unserer Multiple-Choice-Frage gegebenen Optionen. Das Verständnis dieser Eigenschaften wird dir helfen, quadratische Funktionen in der Zukunft zu identifizieren.")]
]