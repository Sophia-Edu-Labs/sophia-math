#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche der L-förmigen Figur]
  #v(40pt)

  #only("1-")[
#align(center)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid 1
x1 = [0, 7, 7, 0, 0]
y1 = [0, 0, 5, 5, 0]
z1 = [0, 0, 0, 0, 0]
ax.plot(x1, y1, z1, 'b')
ax.plot(x1, y1, [3]*5, 'b')
for i in range(4):
    ax.plot([x1[i], x1[i]], [y1[i], y1[i]], [0, 3], 'b')

# Cuboid 2
x2 = [0, 3, 3, 0, 0]
y2 = [0, 0, 5, 5, 0]
z2 = [3, 3, 3, 3, 3]
ax.plot(x2, y2, z2, 'r')
ax.plot(x2, y2, [7]*5, 'r')
for i in range(4):
    ax.plot([x2[i], x2[i]], [y2[i], y2[i]], [3, 7], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('L-Shaped Figure')

plt.show()
```,
width: 360pt
),
caption: []
)
]
]
]
]

  #only("2-")[
    - Blauer Quader: 7 cm × 5 cm × 3 cm
    - Roter Quader: 3 cm × 5 cm × 4 cm
  ]

  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer L-förmigen Figur zu tun, die aus zwei Quadern besteht.")
  ]

  #only("2")[
    #voiceover("Wie wir im Diagramm sehen können, haben wir einen blauen Quader, der 7 Zentimeter lang, 5 Zentimeter breit und 3 Zentimeter hoch ist. Auf ihm befindet sich ein roter Quader, der 3 Zentimeter lang, 5 Zentimeter breit und 4 Zentimeter hoch ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)

  #only("1-")[
    1. Fläche jeder Seite berechnen
    2. Alle sichtbaren Flächen summieren
    3. Überlappende Fläche abziehen
  ]

  #only("2-")[
    Flächen des blauen Quaders:
    - Oben: $7 * 5 = 35 "cm"^2$
    - Vorne: $7 * 3 = 21 "cm"^2$
    - Hinten: $7 * 3 = 21 "cm"^2$
    - Linke Seite: $5 * 3 = 15 "cm"^2$
    - Rechte Seite: $5 * 3 = 15 "cm"^2$
  ]

  #only("1")[
    #voiceover("Um die Oberfläche zu berechnen, folgen wir diesen Schritten: Zuerst berechnen wir die Fläche jeder Seite. Dann summieren wir alle sichtbaren Flächen. Schließlich ziehen wir die überlappenden Flächen ab.")
  ]

  #only("2")[
    #voiceover("Beginnen wir mit dem blauen Quader. Die obere Fläche ist 7 mal 5, was 35 Quadratzentimeter ergibt. Die Vorder- und Rückseite sind beide 7 mal 3, jeweils 21 Quadratzentimeter. Die linke und rechte Seite sind beide 5 mal 3, jeweils 15 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche (Fortsetzung)]
  #v(40pt)

  #only("1-")[
    Flächen des roten Quaders:
    - Oben: $3 * 5 = 15 "cm"^2$
    - Vorne: $3 * 4 = 12 "cm"^2$
    - Hinten: $3 * 4 = 12 "cm"^2$
    - Rechte Seite: $5 * 4 = 20 "cm"^2$
  ]

  #only("2-")[
    Überlappende Fläche:
    - Unterseite des roten Quaders: $3 * 5 = 15 "cm"^2$
  ]

  #only("1")[
    #voiceover("Nun zum roten Quader. Die obere Fläche ist 3 mal 5, also 15 Quadratzentimeter. Die Vorder- und Rückseite sind beide 3 mal 4, jeweils 12 Quadratzentimeter. Die rechte Seite ist 5 mal 4, also 20 Quadratzentimeter.")
  ]

  #only("2")[
    #voiceover("Wir müssen darauf achten, die Unterseite des roten Quaders nicht zu zählen, da sie nicht sichtbar ist. Diese überlappende Fläche ist 3 mal 5, also 15 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Berechnung]
  #v(40pt)

  #only("1-")[
    Gesamte Oberfläche:
    #only("1")[= Summe aller sichtbaren Flächen - Überlappende Fläche]
    #only("2-")[= $(35 + 21 + 21 + 15 + 15) + (15 + 12 + 12 + 20) - 15$]
    #only("3-")[= $107 + 59 - 15$]
    #only("4-")[= $151 "cm"^2$]
  ]

  #only("1")[
    #voiceover("Nun fassen wir alles zusammen. Die gesamte Oberfläche ist die Summe aller sichtbaren Flächen minus der überlappenden Fläche.")
  ]

  #only("2")[
    #voiceover("Das sind 35 plus 21 plus 21 plus 15 plus 15 für den blauen Quader, plus 15 plus 12 plus 12 plus 20 für den roten Quader, minus 15 für die überlappende Fläche.")
  ]

  #only("3")[
    #voiceover("Das vereinfacht sich zu 107 plus 59 minus 15.")
  ]

  #only("4")[
    #voiceover("Und unser Endergebnis ist 151 Quadratzentimeter!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Komplexe Formen in einfachere zerlegen 📐
    - Fläche jeder Seite berechnen 🧮
    - Überlappende Flächen abziehen ➖
    - Berechnungen doppelt überprüfen ✅
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren ist es hilfreich, sie in einfachere Formen zu zerlegen. Berechne die Fläche jeder Seite, aber achte darauf, überlappende Flächen nicht doppelt zu zählen. Überprüfe immer deine Berechnungen. Mit etwas Übung wirst du diese Art von Problemen im Handumdrehen meistern!")
  ]
]