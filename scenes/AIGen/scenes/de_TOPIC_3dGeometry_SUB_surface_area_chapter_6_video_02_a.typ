#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Figuren]
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
x = np.array([0, 6, 6, 0, 0, 6, 6, 0])
y = np.array([0, 0, 4, 4, 0, 0, 4, 4])
z = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
x_cube = np.array([1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5, 1.5])
y_cube = np.array([0.5, 0.5, 3.5, 3.5, 0.5, 0.5, 3.5, 3.5])
z_cube = np.array([3, 3, 3, 3, 6, 6, 6, 6])
ax.scatter(x_cube, y_cube, z_cube)

for i in range(4):
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i], z_cube[i+4]], 'r')
ax.plot(x_cube[:4], y_cube[:4], z_cube[:4], 'r')
ax.plot(x_cube[4:], y_cube[4:], z_cube[4:], 'r')

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
  ]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus einem Quader mit den Maßen 6 cm mal 4 cm mal 3 cm und einem Würfel mit einer Seitenlänge von 3 cm oben drauf besteht. Unsere Aufgabe ist es, die gesamte Oberfläche zu berechnen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des Quaders berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cuboid" = 2("lw" + "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((6×4) + (6×3) + (4×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(24 + 18 + 12) = 2(54) = 108 "cm"^2$]
  #only("1")[
    #voiceover("Lass uns mit der Berechnung der Oberfläche des Quaders beginnen. Die Formel für die Oberfläche eines Quaders ist 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 2 mal die Summe aus 6 mal 4, 6 mal 3 und 4 mal 3.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir das, erhalten wir 2 mal 54, was 108 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54 "cm"^2$]
  #only("1")[
    #voiceover("Nun, lass uns die Oberfläche des Würfels berechnen. Die Formel für die Oberfläche eines Würfels ist 6 mal das Quadrat seiner Seitenlänge.")
  ]
  #only("2")[
    #voiceover("Mit einer Seitenlänge von 3 cm erhalten wir 6 mal 3 zum Quadrat, was 54 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Anpassung für die gemeinsame Fläche]
  #v(40pt)
  #only("1-")[- Fläche der gemeinsamen Seite: $3 "cm" × 3 "cm" = 9 "cm"^2$]
  #v(20pt)
  #only("2-")[- Vom Gesamtwert abziehen: $9 "cm"^2$]
  #only("1")[
    #voiceover("Wir müssen jedoch die gemeinsame Fläche zwischen dem Quader und dem Würfel berücksichtigen. Diese Fläche hat eine Größe von 3 Zentimetern mal 3 Zentimetern, was 9 Quadratzentimetern entspricht.")
  ]
  #only("2")[
    #voiceover("Wir müssen diese gemeinsame Fläche einmal von unserem Gesamtwert abziehen, da sie derzeit doppelt gezählt wird.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- Gesamt $"SA" = "SA"_"cuboid" + "SA"_"cube" - "gemeinsame Fläche"$]
  #v(20pt)
  #only("2-")[- Gesamt $"SA" = 108 "cm"^2 + 54 "cm"^2 - 9 "cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamt $"SA" = 153 "cm"^2$]
  #only("1")[
    #voiceover("Nun, lass uns alles zusammenfügen. Die gesamte Oberfläche ist die Summe der Oberfläche des Quaders und der Oberfläche des Würfels, minus der Fläche der gemeinsamen Seite.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 108 Quadratzentimeter plus 54 Quadratzentimeter minus 9 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Das ergibt eine gesamte Oberfläche von 153 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche der zusammengesetzten Figur beträgt $153 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer deine Einheiten und berücksichtige gemeinsame Flächen!]
  #only("1")[
    #voiceover("Daher beträgt die gesamte Oberfläche unserer zusammengesetzten Figur 153 Quadratzentimeter.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren immer gemeinsame Flächen zu berücksichtigen und sicherzustellen, dass du die richtigen Einheiten verwendest.")
  ]
]