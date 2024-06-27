#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
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
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Rectangular prism
l, w, h = 8, 6, 4
x = [0, l, l, 0, 0]
y = [0, 0, w, w, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [h]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, h], 'b')

# Cylindrical hole
r = 1
theta = np.linspace(0, 2*np.pi, 100)
x = r * np.cos(theta) + l/2
y = r * np.sin(theta) + w/2
ax.plot(x, y, [0]*100, 'r')
ax.plot(x, y, [h]*100, 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

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
    - Rechteckiges Prisma: 8 cm × 6 cm × 4 cm
    - Zylindrisches Loch: Radius 1 cm, Höhe 4 cm
  ]

  #only("1")[
    #voiceover("Ausgezeichnete Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben ein rechteckiges Prisma mit einem zylindrischen Loch, das durch die Mitte gebohrt ist.")
  ]

  #only("2")[
    #voiceover("Das rechteckige Prisma misst 8 Zentimeter in der Länge, 6 Zentimeter in der Breite und 4 Zentimeter in der Höhe. Das zylindrische Loch hat einen Radius von 1 Zentimeter und geht durch die gesamte Höhe des Prismas, die 4 Zentimeter beträgt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des rechteckigen Prismas]
  #v(40pt)

  #only("1-")[
    Oberfläche = 2(lw + lh + wh)
  ]

  #only("2-")[
    = 2((8 × 6) + (8 × 4) + (6 × 4))
  ]

  #only("3-")[
    = 2(48 + 32 + 24)
  ]

  #only("4-")[
    = 2(104) = 208 cm²
  ]

  #only("1")[
    #voiceover("Lass uns mit der Berechnung der Oberfläche des rechteckigen Prismas ohne das Loch beginnen. Die Formel für die Oberfläche eines rechteckigen Prismas ist 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]

  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 2 mal die Summe aus 8 mal 6, 8 mal 4 und 6 mal 4.")
  ]

  #only("3")[
    #voiceover("Vereinfachen wir, haben wir 2 mal die Summe aus 48, 32 und 24.")
  ]

  #only("4")[
    #voiceover("Das ergibt 2 mal 104, was 208 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Fläche der kreisförmigen Löcher]
  #v(40pt)

  #only("1-")[
    Fläche einer kreisförmigen Fläche = $pi r^2$
  ]

  #only("2-")[
    = $pi × (1 "cm")^2$ = $pi$ cm²
  ]

  #only("3-")[
    Fläche der zwei kreisförmigen Flächen = $2pi$ cm²
  ]

  #only("1")[
    #voiceover("Nun müssen wir das zylindrische Loch berücksichtigen. Das Loch erzeugt zwei kreisförmige Flächen, eine oben und eine unten am Prisma. Die Fläche eines Kreises ist pi mal Radius zum Quadrat.")
  ]

  #only("2")[
    #voiceover("Mit einem Radius von 1 Zentimeter ist die Fläche einer kreisförmigen Fläche einfach pi Quadratzentimeter.")
  ]

  #only("3")[
    #voiceover("Da wir zwei kreisförmige Flächen haben, beträgt die Gesamtfläche 2 pi Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Fläche der zylindrischen Oberfläche]
  #v(40pt)

  #only("1-")[
    Fläche der zylindrischen Oberfläche = 2$pi$rh
  ]

  #only("2-")[
    = 2$pi$ × 1 cm × 4 cm = 8$pi$ cm²
  ]

  #only("1")[
    #voiceover("Das zylindrische Loch erzeugt auch eine gekrümmte Oberfläche im Inneren des Prismas. Die Fläche dieser Oberfläche wird durch 2 pi mal Radius mal Höhe gegeben.")
  ]

  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 2 pi mal 1 Zentimeter mal 4 Zentimeter, was sich zu 8 pi Quadratzentimetern vereinfacht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamtoberfläche]
  #v(40pt)

  #only("1-")[
    Gesamtoberfläche = Prisma-Oberfläche - Kreisflächen + Zylinderfläche
  ]

  #only("2-")[
    = 208 cm² - 2$pi$ cm² + 8$pi$ cm²
  ]

  #only("3-")[
    = 208 cm² + 6$pi$ cm²
  ]

  #only("4-")[
    ≈ 226,85 cm² (gerundet auf 2 Dezimalstellen)
  ]

  #only("1")[
    #voiceover("Um die Gesamtoberfläche zu finden, müssen wir die Oberfläche des Prismas nehmen, die Fläche der beiden kreisförmigen Flächen abziehen und die Fläche der zylindrischen Oberfläche hinzufügen.")
  ]

  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 208 Quadratzentimeter minus 2 pi Quadratzentimeter plus 8 pi Quadratzentimeter.")
  ]

  #only("3")[
    #voiceover("Vereinfachen wir, ergibt das 208 Quadratzentimeter plus 6 pi Quadratzentimeter.")
  ]

  #only("4")[
    #voiceover("Mit einem Taschenrechner und auf zwei Dezimalstellen gerundet, erhalten wir ungefähr 226,85 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)

  #only("1-")[
    Die Gesamtoberfläche der zusammengesetzten Figur beträgt ungefähr 226,85 cm².
  ]

  #only("2-")[
    Wichtige Schritte:
    1. Berechne die Oberfläche des Prismas
    2. Berechne die Fläche der kreisförmigen Löcher
    3. Berechne die Fläche der zylindrischen Oberfläche
    4. Kombiniere alle Komponenten
  ]

  #only("1")[
    #voiceover("Also beträgt die Gesamtoberfläche unserer zusammengesetzten Figur ungefähr 226,85 Quadratzentimeter.")
  ]

  #only("2")[
    #voiceover("Zusammenfassend haben wir dieses Problem gelöst, indem wir zuerst die Oberfläche des rechteckigen Prismas berechnet haben, dann die kreisförmigen Löcher oben und unten berücksichtigt haben und schließlich die Fläche der zylindrischen Oberfläche im Inneren des Prismas hinzugefügt haben. Diese Methode, komplexe Formen in einfachere Komponenten zu zerlegen, ist eine mächtige Technik in der Geometrie.")
  ]
]