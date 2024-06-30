#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche zusammengesetzter Figuren 📐]
  #v(40pt)
  #only("1-")[- Objekte in der realen Welt haben oft komplexe Formen 🏠🚗]
  #only("2-")[- Zusammengesetzte Figuren: Kombination von Grundformen 🔷🔺]
  #only("3-")[- Berechnung der Oberfläche ist entscheidend für verschiedene Anwendungen 🎨🏗️]
  
  #only("1")[
    #voiceover("Lass uns das Konzept der Oberfläche für zusammengesetzte Figuren wiederholen. In der realen Welt haben Objekte oft komplexe Formen, die keine einfachen geometrischen Formen sind.")
  ]
  #only("2")[
    #voiceover("Diese komplexen Formen können als zusammengesetzte Figuren betrachtet werden, die Kombinationen von grundlegenden geometrischen Formen sind.")
  ]
  #only("3")[
    #voiceover("Die Berechnung der Oberfläche dieser zusammengesetzten Figuren ist entscheidend für verschiedene Anwendungen, vom Streichen eines Hauses bis hin zur Gestaltung eines Raumfahrzeugs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche 🧮]
  #v(20pt)
  #only("1-")[1. Zerlege die zusammengesetzte Figur in Grundformen]
  #only("2-")[2. Berechne die Oberfläche jedes Teils separat]
  #only("3-")[3. Addiere alle einzelnen Oberflächen]
  #only("4-")[4. Subtrahiere überlappende Bereiche]
  
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle

fig, ax = plt.subplots(figsize=(8, 6))

# Draw rectangle
rect = Rectangle((0, 0), 4, 3, fill=False, edgecolor='blue')
ax.add_patch(rect)

# Draw circle
circle = Circle((4, 1.5), 1.5, fill=False, edgecolor='red')
ax.add_patch(circle)

# Set axis limits
ax.set_xlim(-0.5, 6)
ax.set_ylim(-0.5, 3.5)

# Remove axis ticks
ax.set_xticks([])
ax.set_yticks([])

# Add labels
ax.text(2, -0.3, 'Rectangle', ha='center')
ax.text(4, 3.3, 'Circle', ha='center')

plt.title('Composite Figure: Rectangle + Circle')
plt.axis('equal')
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  
  #only("1")[
    #voiceover("Lass uns die Schritte zur Berechnung der Oberfläche einer zusammengesetzten Figur durchgehen. Zuerst müssen wir die zusammengesetzte Figur in Grundformen zerlegen. In diesem Beispiel haben wir ein Rechteck mit einem an einer Seite befestigten Halbkreis.")
  ]
  #only("2")[
    #voiceover("Als nächstes berechnen wir die Oberfläche jedes Teils separat. Wir würden die Fläche des Rechtecks und die Fläche des Halbkreises berechnen.")
  ]
  #only("3")[
    #voiceover("Dann addieren wir alle einzelnen Oberflächen zusammen.")
  ]
  #only("4")[
    #voiceover("Schließlich subtrahieren wir alle überlappenden Bereiche. In diesem Fall haben wir keine Überlappung, aber es ist ein wichtiger Schritt, den man bei komplexeren Figuren beachten sollte.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Zusammengesetzte Figuren = Kombination von Grundformen 🔷🔺]
  #only("2-")[- Oberfläche = Summe der einzelnen Flächen - Überlappende Flächen]
  #only("3-")[- Formel: $"SA"_"total" = "SA"_1 + "SA"_2 + ... - "SA"_"overlap"$]
  #only("4-")[- Denke daran: Zweimal messen, einmal berechnen! ✅]
  
  #only("1")[
    #voiceover("Zusammenfassend sind zusammengesetzte Figuren Kombinationen von Grundformen.")
  ]
  #only("2")[
    #voiceover("Die gesamte Oberfläche ist die Summe der einzelnen Flächen minus aller überlappenden Flächen.")
  ]
  #only("3")[
    #voiceover("Wir können dies als Formel ausdrücken: Die gesamte Oberfläche ist gleich der Oberfläche 1 plus der Oberfläche 2 und so weiter, minus aller überlappenden Flächen.")
  ]
  #only("4")[
    #voiceover("Denke daran, bei zusammengesetzten Figuren ist es immer eine gute Idee, deine Messungen und Berechnungen doppelt zu überprüfen. Wie man so schön sagt: Zweimal messen, einmal berechnen!")
  ]
]