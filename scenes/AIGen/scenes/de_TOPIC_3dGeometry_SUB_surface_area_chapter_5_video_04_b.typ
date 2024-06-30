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
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Larger cube
ax.bar3d(0, 0, 0, 4, 4, 4, color='lightblue', alpha=0.8)

# Smaller cube
ax.bar3d(4, 1, 0, 2, 2, 2, color='lightgreen', alpha=0.8)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus zwei Würfeln besteht: einem mit einer Seitenlänge von 4 cm und einem anderen mit einer Seitenlänge von 2 cm, die an einer Fläche verbunden sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Würfel]
  #v(40pt)
  #only("1-")[- Würfel 1: Seitenlänge = 4 cm 🟦]
  #v(20pt)
  #only("2-")[- Würfel 2: Seitenlänge = 2 cm 🟩]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere beiden Würfel. Wir haben einen größeren Würfel mit einer Seitenlänge von 4 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Und einen kleineren Würfel mit einer Seitenlänge von 2 Zentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne die Oberflächen]
  #v(40pt)
  #only("1-")[- Oberfläche eines Würfels = 6 × (Seitenlänge)²]
  #v(20pt)
  #only("2-")[- Würfel 1: $"SA"_1 = 6 × 4^2 = 6 × 16 = 96"cm"^2$]
  #v(20pt)
  #only("3-")[- Würfel 2: $"SA"_2 = 6 × 2^2 = 6 × 4 = 24"cm"^2$]
  #only("1")[
    #voiceover("Nun berechnen wir die Oberflächen. Denke daran, dass die Oberfläche eines Würfels sechs Mal das Quadrat seiner Seitenlänge ist.")
  ]
  #only("2")[
    #voiceover("Für den größeren Würfel haben wir sechs Mal vier zum Quadrat, was sechsundneunzig Quadratzentimeter ergibt.")
  ]
  #only("3")[
    #voiceover("Für den kleineren Würfel haben wir sechs Mal zwei zum Quadrat, was vierundzwanzig Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berücksichtige die verbundene Fläche]
  #v(40pt)
  #only("1-")[- Fläche der verbundenen Fläche = Seitenlänge² = $2^2 = 4"cm"^2$]
  #v(20pt)
  #only("2-")[- Diese Fläche wird doppelt gezählt, also ziehen wir sie einmal ab]
  #only("1")[
    #voiceover("Jetzt müssen wir die Fläche berücksichtigen, an der die Würfel verbunden sind. Diese Fläche hat eine Fläche von zwei zum Quadrat, was vier Quadratzentimeter ergibt.")
  ]
  #only("2")[
    #voiceover("Da diese Fläche in den Oberflächen beider Würfel enthalten ist, müssen wir sie einmal abziehen, um sie nicht doppelt zu zählen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Berechne die gesamte Oberfläche]
  #v(40pt)
  #only("1-")[- Gesamte Oberfläche = $"SA"_1 + "SA"_2 - "Fläche der verbundenen Fläche"$]
  #v(20pt)
  #only("2-")[- Gesamte Oberfläche = $96"cm"^2 + 24"cm"^2 - 4"cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamte Oberfläche = $116"cm"^2$]
  #only("1")[
    #voiceover("Schließlich berechnen wir die gesamte Oberfläche. Wir addieren die Oberflächen beider Würfel und ziehen die Fläche der verbundenen Fläche ab.")
  ]
  #only("2")[
    #voiceover("Das sind sechsundneunzig plus vierundzwanzig minus vier Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Was uns eine Gesamtfläche von einhundertsechzehn Quadratzentimetern ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche beträgt $116"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Bei zusammengesetzten Figuren achte darauf, gemeinsame Flächen nicht doppelt zu zählen!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die Oberfläche der zusammengesetzten Figur einhundertsechzehn Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit! Denke daran, bei zusammengesetzten Figuren darauf zu achten, gemeinsame Flächen nicht doppelt zu zählen. Diese Problemlösungsfähigkeit wird dir bei vielen zukünftigen Geometrieproblemen nützlich sein.")
  ]
]