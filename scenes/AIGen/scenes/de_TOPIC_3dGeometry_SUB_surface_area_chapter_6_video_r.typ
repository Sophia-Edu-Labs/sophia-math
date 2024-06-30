#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche zusammengesetzter Figuren 📐]
  #v(40pt)
  #only("1-")[- Zusammengesetzte Figuren: Kombinationen von Grundformen 🔷🔶]
  #only("2-")[- Anwendungen in der realen Welt: Architektur, Verpackung 🏠📦]
  #only("3-")[- Lass uns den Prozess der Berechnung der Oberfläche überprüfen 🧮]

  #only("1")[
    #voiceover("Lass uns das Konzept der Oberfläche für zusammengesetzte Figuren überprüfen. Zusammengesetzte Figuren sind Formen, die aus Kombinationen von grundlegenden geometrischen Formen bestehen.")
  ]
  #only("2")[
    #voiceover("Dieses Konzept ist entscheidend für Anwendungen in der realen Welt, wie Architektur und Verpackungsdesign.")
  ]
  #only("3")[
    #voiceover("Wir werden den Prozess der Berechnung der Oberfläche für diese komplexen Formen überprüfen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche: Schritt für Schritt]
  #v(20pt)
  #only("1-")[1️⃣ Zerlege die Figur]
  #only("2-")[2️⃣ Berechne die einzelnen Oberflächen]
  #only("3-")[3️⃣ Ziehe überlappende Bereiche ab]
  #only("4-")[4️⃣ Summiere die Ergebnisse]

  #only("1")[
    #voiceover("Lass uns die Schritte zur Berechnung der Oberfläche einer zusammengesetzten Figur überprüfen. Zuerst zerlegen wir die zusammengesetzte Figur in ihre grundlegenden Komponentenformen.")
  ]
  #only("2")[
    #voiceover("Als nächstes berechnen wir die Oberfläche jeder einzelnen Komponentenform mit den entsprechenden Formeln.")
  ]
  #only("3")[
    #voiceover("Dann identifizieren und ziehen wir alle überlappenden Bereiche ab, um eine doppelte Zählung zu vermeiden.")
  ]
  #only("4")[
    #voiceover("Schließlich summieren wir alle einzelnen Oberflächen, abzüglich der Überlappungen, um die Gesamtoberfläche der zusammengesetzten Figur zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: L-förmiges Prisma]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the vertices of the L-shaped prism
vertices = [
    [0, 0, 0], [2, 0, 0], [2, 1, 0], [3, 1, 0], [3, 3, 0], [0, 3, 0],
    [0, 0, 1], [2, 0, 1], [2, 1, 1], [3, 1, 1], [3, 3, 1], [0, 3, 1]
]

# Define the faces
faces = [
    [0, 1, 7, 6], [1, 2, 8, 7], [2, 3, 9, 8],
    [3, 4, 10, 9], [4, 5, 11, 10], [5, 0, 6, 11],
    [0, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11]
]

# Create a list of face vertices
face_vertices = [[vertices[vert] for vert in face] for face in faces]

# Plot the faces
poly3d = Poly3DCollection(face_vertices, alpha=0.8, edgecolor='k')
ax.add_collection3d(poly3d)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('L-shaped Prism')

# Set viewing angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[
    #text(size: 20pt)[
      $"SA"_"total" = "SA"_"rectangle1" + "SA"_"rectangle2" - "SA"_"overlap"$
    ]
  ]
  #only("3-")[
    $"SA"_"total" = (3 dot 3 + 3 dot 1 + 3 dot 1) + (2 dot 1 + 2 dot 1 + 2 dot 2) - (1 dot 1)$
  ]
  #only("4-")[
    $"SA"_"total" = 15 + 8 - 1 = 22 "Quadrateinheiten"$
  ]

  #only("1")[
    #voiceover("Lass uns ein Beispiel mit diesem L-förmigen Prisma überprüfen. Wir werden seine Oberfläche Schritt für Schritt berechnen.")
  ]
  #only("2")[
    #voiceover("Wir zerlegen es in zwei Rechtecke und identifizieren den überlappenden Bereich. Die Gesamtoberfläche entspricht der Summe der Oberflächen beider Rechtecke, abzüglich der Überlappung.")
  ]
  #only("3")[
    #voiceover("Wir berechnen jeden Teil: Für das größere Rechteck haben wir drei mal drei plus drei mal eins plus drei mal eins. Für das kleinere Rechteck haben wir zwei mal eins plus zwei mal eins plus zwei mal zwei. Die Überlappung ist eins mal eins.")
  ]
  #only("4")[
    #voiceover("Wenn wir alles zusammenzählen, erhalten wir fünfzehn plus acht minus eins, was zweiundzwanzig Quadrateinheiten ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Zerlege zusammengesetzte Figuren in Grundformen 🧩]
  #only("2-")[- Berechne die Oberflächen separat 🔢]
  #only("3-")[- Ziehe überlappende Bereiche ab ➖]
  #only("4-")[- Summiere für die Gesamtoberfläche ➕]

  #only("1")[
    #voiceover("Zusammenfassend, wenn Du es mit zusammengesetzten Figuren zu tun hast, zerlege sie zuerst in ihre grundlegenden Komponentenformen.")
  ]
  #only("2")[
    #voiceover("Berechne dann die Oberfläche jeder Komponente separat mit den entsprechenden Formeln.")
  ]
  #only("3")[
    #voiceover("Denke daran, alle überlappenden Bereiche zu identifizieren und abzuziehen, um eine doppelte Zählung zu vermeiden.")
  ]
  #only("4")[
    #voiceover("Schließlich summiere alle einzelnen Oberflächen, abzüglich der Überlappungen, um die Gesamtoberfläche der zusammengesetzten Figur zu erhalten. Diese Methode ermöglicht es uns, komplexe Formen zu bewältigen, indem wir sie in handhabbare Teile zerlegen.")
  ]
]