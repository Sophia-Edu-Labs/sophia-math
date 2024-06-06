#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graph von $f(x) = x^2$]
#v(40pt)
#only("1-")[Wie sieht der Graph von $f(x) = x^2$ aus?]
#v(40pt)
#only("-1")[a) Eine gerade Linie]#only("2-")[#text(fill:red)[a) Eine gerade Linie]]
#v(10pt)
#only("-1")[b) Eine Parabel]#only("3-")[#text(fill:green)[b) Eine Parabel]] 
#v(10pt)
#only("-1")[c) Eine Hyperbel]#only("4-")[#text(fill:red)[c) Eine Hyperbel]]
#v(10pt)
#only("-1")[d) Ein Kreis]#only("5-")[#text(fill:red)[d) Ein Kreis]]
#v(40pt)

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("a) Eine gerade Linie ist falsch. Der Graph von x Quadrat ist keine gerade Linie.")]
#only("3")[#voiceover("b) Eine Parabel ist die richtige Antwort. Der Graph von x Quadrat ist tatsächlich eine Parabel.")]
#only("4")[#voiceover("c) Eine Hyperbel ist falsch. Eine Hyperbel hat zwei getrennte Kurven, im Gegensatz zum Graphen von x Quadrat.")]
#only("5")[#voiceover("d) Ein Kreis ist ebenfalls falsch. Der Graph von x Quadrat bildet keine geschlossene Kurve wie ein Kreis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von $f(x) = x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph von f(x) = x^2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Wichtige Merkmale einer Parabel:]
#v(20pt)
#only("2-")[- 📈 U-förmige Kurve]
#only("3-")[- 🔍 Symmetrisch zur y-Achse]
#only("4-")[- 🔝 Hat einen Minimum- oder Maximumspunkt (Scheitelpunkt)]

#only("1")[#voiceover("Lass uns den Graphen von f von x gleich x Quadrat visualisieren, um zu sehen, warum es eine Parabel ist.")]
#only("2")[#voiceover("Zuerst beachte die U-förmige Kurve, die ein charakteristisches Merkmal einer Parabel ist.")]
#only("3")[#voiceover("Der Graph ist auch symmetrisch zur y-Achse. Wenn du den Graphen entlang der y-Achse faltest, würden beide Hälften perfekt übereinander liegen.")]
#only("4")[#voiceover("Zuletzt hat die Parabel einen Minimumspunkt, auch als Scheitelpunkt bekannt. Für x Quadrat liegt der Scheitelpunkt im Ursprung (0, 0).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Der Graph von $f(x) = x^2$ ist eine Parabel 📊]
#v(20pt)
#only("2-")[- Parabeln sind U-förmige, symmetrische Kurven 📏]
#v(20pt)
#only("3-")[- Sie haben einen Minimum- oder Maximumspunkt (Scheitelpunkt) 🔝]

#only("1")[#voiceover("Zusammenfassend ist der Graph von f von x gleich x Quadrat eine Parabel.")]
#only("2")[#voiceover("Parabeln sind U-förmige Kurven, die symmetrisch zu einer vertikalen Linie sind.")]
#only("3")[#voiceover("Sie haben immer einen Minimum- oder Maximumspunkt, den sogenannten Scheitelpunkt. Merke dir diese wichtigen Merkmale von Parabeln!")]
]