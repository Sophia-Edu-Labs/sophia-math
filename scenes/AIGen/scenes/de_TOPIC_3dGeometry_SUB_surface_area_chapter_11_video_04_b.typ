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
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid
x = np.array([0, 15, 15, 0, 0, 15, 15, 0])
y = np.array([0, 0, 10, 10, 0, 0, 10, 10])
z = np.array([0, 0, 0, 0, 8, 8, 8, 8])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot(x[i:i+2], y[i:i+2], z[i:i+2], 'b')
    ax.plot(x[i:i+2], y[i:i+2], z[i+4:i+6], 'b')
    ax.plot([x[i], x[i]], [y[i], y[i]], [z[i], z[i+4]], 'b')

# Cube on top
cube_x = np.array([4.5, 10.5, 10.5, 4.5, 4.5, 10.5, 10.5, 4.5])
cube_y = np.array([2, 2, 8, 8, 2, 2, 8, 8])
cube_z = np.array([8, 8, 8, 8, 14, 14, 14, 14])
ax.scatter(cube_x, cube_y, cube_z)

for i in range(4):
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i:i+2], 'r')
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i+4:i+6], 'r')
    ax.plot([cube_x[i], cube_x[i]], [cube_y[i], cube_y[i]], [cube_z[i], cube_z[i+4]], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus einem Quader mit den Maßen 15 cm mal 10 cm mal 8 cm und einem Würfel mit einer Seitenlänge von 6 cm oben drauf besteht. Hier ist eine Visualisierung unserer zusammengesetzten Figur.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des Quaders berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((15 × 10) + (15 × 8) + (10 × 8))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(150 + 120 + 80) = 2(350) = 700 "cm"^2$]
  #only("1")[
    #voiceover("Lass uns mit der Berechnung der Oberfläche des Quaders beginnen. Die Formel für die Oberfläche eines Quaders ist 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 2 mal die Summe aus 15 mal 10, 15 mal 8 und 10 mal 8.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir das, erhalten wir 2 mal 350, was 700 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 6^2 = 6 × 36 = 216 "cm"^2$]
  #only("1")[
    #voiceover("Nun lass uns die Oberfläche des Würfels berechnen. Die Formel für die Oberfläche eines Würfels ist 6 mal das Quadrat der Seitenlänge.")
  ]
  #only("2")[
    #voiceover("Bei einer Seitenlänge von 6 cm erhalten wir 6 mal 6 zum Quadrat, was 216 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Gemeinsame Fläche anpassen]
  #v(40pt)
  #only("1-")[- Fläche der gemeinsamen Seite: $6 "cm" × 6 "cm" = 36 "cm"^2$]
  #v(20pt)
  #only("2-")[- Diese Fläche wird doppelt gezählt, also ziehen wir sie einmal ab]
  #only("1")[
    #voiceover("Wir müssen jedoch die gemeinsame Fläche zwischen dem Quader und dem Würfel berücksichtigen. Diese Fläche hat eine Größe von 6 mal 6, was 36 Quadratzentimetern entspricht.")
  ]
  #only("2")[
    #voiceover("Da diese Fläche sowohl in den Berechnungen des Quaders als auch des Würfels enthalten ist, müssen wir sie einmal abziehen, um eine doppelte Zählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- Gesamte SA = $"SA"_"cuboid" + "SA"_"cube" - "Shared Area"$]
  #v(20pt)
  #only("2-")[- Gesamte SA = $700 "cm"^2 + 216 "cm"^2 - 36 "cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamte SA = $880 "cm"^2$]
  #only("1")[
    #voiceover("Nun lass uns alle Teile zusammenzählen. Die gesamte Oberfläche ist die Summe der Oberfläche des Quaders und der Oberfläche des Würfels, minus der gemeinsamen Fläche.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 700 plus 216 minus 36 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Das ergibt eine gesamte Oberfläche von 880 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche der zusammengesetzten Figur beträgt $880 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Bei zusammengesetzten Figuren achte darauf, gemeinsame Flächen nicht doppelt zu zählen!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die gesamte Oberfläche der zusammengesetzten Figur 880 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, bei zusammengesetzten Figuren darauf zu achten, gemeinsame Flächen nicht doppelt zu zählen. Dies ist ein häufiger Fehler, der zu falschen Antworten führen kann.")
  ]
]