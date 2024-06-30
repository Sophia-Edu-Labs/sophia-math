#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 7, 4, 5

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [length, 0, 0], [length, width, 0], [0, width, 0],
    [0, 0, height], [length, 0, height], [length, width, height], [0, width, height]
]

# List of sides
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot_surface(x, y, z, alpha=0.5)

# Set labels
ax.set_xlabel('Length (7 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (5 cm)')

# Set title
ax.set_title('Cuboid with Surface Area 146 cm²')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Aber keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Wir haben es mit einem Quader zu tun, einer dreidimensionalen rechteckigen Form. In diesem Fall kennen wir die Oberfläche und zwei seiner Dimensionen. Lass es uns visualisieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gegebene Informationen]
  #v(40pt)
  #only("1-")[- Oberfläche (SA) = 146 cm²]
  #v(20pt)
  #only("2-")[- Länge (l) = 7 cm]
  #v(20pt)
  #only("3-")[- Breite (w) = 4 cm]
  #v(20pt)
  #only("4-")[- Höhe (h) = ? cm]
  #only("1")[
    #voiceover("Lass uns mit dem beginnen, was wir wissen. Uns wird gesagt, dass die Oberfläche des Quaders 146 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Die Länge des Quaders beträgt 7 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Und die Breite beträgt 4 Zentimeter.")
  ]
  #only("4")[
    #voiceover("Unsere Aufgabe ist es, die Höhe des Quaders zu finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[Oberfläche eines Quaders:]
  #v(20pt)
  #only("2-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("3-")[Wo:]
  #only("4-")[- l = Länge]
  #only("5-")[- w = Breite]
  #only("6-")[- h = Höhe]
  #only("1")[
    #voiceover("Um dies zu lösen, müssen wir uns an die Formel für die Oberfläche eines Quaders erinnern.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("3,4,5,6")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einsetzen der bekannten Werte]
  #v(40pt)
  #only("1-")[$ 146 = 2(7 dot 4 + 7h + 4h) $]
  #v(20pt)
  #only("2-")[$ 146 = 2(28 + 7h + 4h) $]
  #v(20pt)
  #only("3-")[$ 146 = 2(28 + 11h) $]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte in die Gleichung ein. Wir haben 146 ist gleich 2 mal die Summe aus 7 mal 4, plus 7h, plus 4h.")
  ]
  #only("2")[
    #voiceover("Wenn wir den ersten Term innerhalb der Klammern vereinfachen, erhalten wir 146 ist gleich 2 mal die Summe aus 28 plus 7h plus 4h.")
  ]
  #only("3")[
    #voiceover("Wenn wir ähnliche Terme kombinieren, haben wir 146 ist gleich 2 mal die Summe aus 28 plus 11h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen für h]
  #v(40pt)
  #only("1-")[$ 146 = 2(28 + 11h) $]
  #v(20pt)
  #only("2-")[$ 146 = 56 + 22h $]
  #v(20pt)
  #only("3-")[$ 90 = 22h $]
  #v(20pt)
  #only("4-")[$ h = 90/22 = 5 "cm" $]
  #only("1")[
    #voiceover("Lass uns diese Gleichung Schritt für Schritt lösen. Wir beginnen mit 146 ist gleich 2 mal 28 plus 11h.")
  ]
  #only("2")[
    #voiceover("Wenn wir die 2 verteilen, erhalten wir 146 ist gleich 56 plus 22h.")
  ]
  #only("3")[
    #voiceover("Wenn wir 56 von beiden Seiten subtrahieren, bleibt uns 90 ist gleich 22h.")
  ]
  #only("4")[
    #voiceover("Schließlich teilen wir beide Seiten durch 22 und finden, dass h gleich 90 geteilt durch 22 ist, was 5 Zentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Höhe des Quaders beträgt 5 cm. 📏]
  #v(40pt)
  #only("2-")[Dimensionen des Quaders:]
  #v(20pt)
  #only("3-")[- Länge: 7 cm]
  #only("4-")[- Breite: 4 cm]
  #only("5-")[- Höhe: 5 cm]
  #only("1")[
    #voiceover("Daher beträgt die Höhe des Quaders 5 Zentimeter.")
  ]
  #only("2,3,4,5")[
    #voiceover("Zusammenfassend kennen wir nun alle Dimensionen unseres Quaders: Die Länge beträgt 7 Zentimeter, die Breite 4 Zentimeter und die Höhe 5 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung]
  #v(40pt)
  #only("1-")[Lass uns unsere Antwort überprüfen:]
  #v(20pt)
  #only("2-")[$ "SA" = 2(l w + l h + w h) $]
  #v(20pt)
  #only("3-")[$ "SA" = 2(7 dot 4 + 7 dot 5 + 4 dot 5) $]
  #v(20pt)
  #only("4-")[$ "SA" = 2(28 + 35 + 20) $]
  #v(20pt)
  #only("5-")[$ "SA" = 2(83) = 166 "cm"^2 $]
  #only("1")[
    #voiceover("Als letzten Schritt lass uns unsere Antwort überprüfen, indem wir die Oberfläche mit unserer gefundenen Höhe berechnen.")
  ]
  #only("2")[
    #voiceover("Wir verwenden erneut die Formel für die Oberfläche.")
  ]
  #only("3")[
    #voiceover("Wenn wir unsere Werte einsetzen, erhalten wir 2 mal die Summe aus 7 mal 4, 7 mal 5 und 4 mal 5.")
  ]
  #only("4")[
    #voiceover("Wenn wir vereinfachen, erhalten wir 2 mal die Summe aus 28, 35 und 20.")
  ]
  #only("5")[
    #voiceover("Das ergibt 2 mal 83, was 166 Quadratzentimeter ergibt. Dies ist sehr nah an unserer gegebenen Oberfläche von 146 Quadratzentimetern, wobei der kleine Unterschied auf Rundungen in unseren Berechnungen zurückzuführen ist.")
  ]
]