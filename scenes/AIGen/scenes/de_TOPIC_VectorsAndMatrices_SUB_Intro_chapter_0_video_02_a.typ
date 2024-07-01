#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis von Vektoren]
#v(40pt)

Welche der folgenden Aussagen beschreibt einen Vektor am besten?

#v(20pt)
#only("-1")[a) Eine einzelne Zahl]#only("2-")[#text(fill:red)[a) Eine einzelne Zahl]]
#v(10pt)
#only("-2")[b) Eine mehrdimensionale Zahl]#only("3-")[#text(fill:green)[b) Eine mehrdimensionale Zahl]]
#v(10pt)
#only("-3")[c) Eine rechteckige Anordnung von Zahlen]#only("4-")[#text(fill:red)[c) Eine rechteckige Anordnung von Zahlen]]
#v(10pt)
#only("-4")[d) Keine der oben genannten]#only("5-")[#text(fill:red)[d) Keine der oben genannten]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Lass uns erklären, warum b) Eine mehrdimensionale Zahl die beste Beschreibung für einen Vektor ist.")]

#only("2")[#voiceover("Option a) Eine einzelne Zahl ist falsch. Eine einzelne Zahl ist ein Skalar, kein Vektor. Vektoren haben typischerweise mehrere Komponenten, im Gegensatz zu Skalaren, die nur einzelne Werte sind.")]

#only("3")[#voiceover("Option b) Eine mehrdimensionale Zahl ist korrekt! Dies ist die beste Beschreibung für einen Vektor. Ein Vektor kann als eine Zahl mit mehreren Dimensionen oder Komponenten betrachtet werden. Zum Beispiel hat ein Vektor im zweidimensionalen Raum sowohl eine x- als auch eine y-Komponente.")]

#only("4")[#voiceover("Option c) Eine rechteckige Anordnung von Zahlen ist keine optimale Beschreibung für einen Vektor. Obwohl Vektoren als Arrays dargestellt werden können, passt diese Beschreibung besser zu Matrizen, die zweidimensionale Arrays von Zahlen sind.")]

#only("5")[#voiceover("Option d) Keine der oben genannten ist falsch, weil wir eine richtige Option haben, nämlich b).")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vektordarstellung]
#v(40pt)

#only("1-")[#align(center)[
2D Vektor: $vec(v) = (v_x, v_y)$
]]

#v(20pt)

#only("2-")[#align(center)[
3D Vektor: $vec(w) = (w_x, w_y, w_z)$
]]

#v(40pt)

#only("3-")[
Beispiele:
- 2D Positionsvektor: $vec(p) = (3, 4)$
- 3D Geschwindigkeitsvektor: $vec(v) = (2, -1, 5)$
]

#only("1")[#voiceover("Lass uns visualisieren, wie Vektoren dargestellt werden. Im zweidimensionalen Raum wird ein Vektor v typischerweise als geordnetes Paar von Zahlen geschrieben.")]

#only("2")[#voiceover("Ähnlich wird im dreidimensionalen Raum ein Vektor w durch ein geordnetes Tripel von Zahlen dargestellt.")]

#only("3")[#voiceover("Zum Beispiel könnte ein zweidimensionaler Positionsvektor als (3, 4) dargestellt werden, was 3 Einheiten in x-Richtung und 4 Einheiten in y-Richtung bedeutet. Ein dreidimensionaler Geschwindigkeitsvektor könnte (2, -1, 5) sein, was 2 Einheiten in x-Richtung, -1 in y-Richtung und 5 in z-Richtung bedeutet.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vektorvisualisierung]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Origin
ax.scatter(0, 0, 0, color='k', s=100, label='Origin')

# 2D vector
ax.quiver(0, 0, 0, 3, 4, 0, color='r', arrow_length_ratio=0.1, label='2D Vector (3,4)')

# 3D vector
ax.quiver(0, 0, 0, 2, -1, 5, color='b', arrow_length_ratio=0.1, label='3D Vector (2,-1,5)')

ax.set_xlim([-1, 5])
ax.set_ylim([-2, 5])
ax.set_zlim([0, 6])

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

ax.legend()

plt.title('Vector Visualization')
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung der Vektoren, die wir gerade besprochen haben. Der rote Pfeil stellt unseren 2D-Positionsvektor (3, 4) dar, während der blaue Pfeil unseren 3D-Geschwindigkeitsvektor (2, -1, 5) zeigt.")]

#only("2")[#voiceover("Beachte, wie der 2D-Vektor flach auf der XY-Ebene liegt, während der 3D-Vektor auch in die Z-Dimension reicht. Dies veranschaulicht, warum wir Vektoren als mehrdimensionale Zahlen beschreiben - sie können Größen in mehreren Richtungen gleichzeitig darstellen.")]

#only("3")[#voiceover("Das Verständnis von Vektoren als mehrdimensionale Zahlen ermöglicht es uns, komplexe physikalische Größen wie Position, Geschwindigkeit oder Kraft auf eine kompakte und mathematisch nützliche Weise zu beschreiben. Dieses Konzept bildet die Grundlage für viele fortgeschrittene Themen in Physik und Ingenieurwesen.")]
]