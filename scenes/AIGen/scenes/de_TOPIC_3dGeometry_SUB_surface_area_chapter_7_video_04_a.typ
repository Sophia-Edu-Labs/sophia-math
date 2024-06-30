#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche einer zusammengesetzten Figur]
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
x = np.array([0, 8, 8, 0, 0, 8, 8, 0])
y = np.array([0, 0, 5, 5, 0, 0, 5, 5])
z = np.array([0, 0, 0, 0, 3, 3, 3, 3])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
x_cube = np.array([2.5, 5.5, 5.5, 2.5, 2.5, 5.5, 5.5, 2.5])
y_cube = np.array([1, 1, 4, 4, 1, 1, 4, 4])
z_cube = np.array([3, 3, 3, 3, 6, 6, 6, 6])
ax.scatter(x_cube, y_cube, z_cube)

for i in range(4):
    ax.plot([x_cube[i], x_cube[i+4]], [y_cube[i], y_cube[i+4]], [z_cube[i+4]], 'r')
ax.plot(x_cube[:4], y_cube[:4], z_cube[:4], 'r')
ax.plot(x_cube[4:], y_cube[4:], z_cube[4:], 'r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]]
  ]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur bestehend aus einem Quader mit den Maßen 8 cm mal 5 cm mal 3 cm und einem Würfel mit einer Seitenlänge von 3 cm oben drauf. Unsere Aufgabe ist es, die gesamte Oberfläche zu berechnen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Berechnung der Oberfläche des Quaders]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((8×5) + (8×3) + (5×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(40 + 24 + 15) = 2(79) = 158"cm"^2$]
  #only("1")[
    #voiceover("Fangen wir mit dem Quader an. Die Oberfläche eines Quaders wird durch die Formel: S A Quader gleich 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe berechnet.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: S A Quader gleich 2 mal die Summe aus 8 mal 5, 8 mal 3 und 5 mal 3.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir das, erhalten wir: S A Quader gleich 2 mal 79, was 158 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechnung der Oberfläche des Würfels]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54"cm"^2$]
  #only("1")[
    #voiceover("Nun zum Würfel. Die Oberfläche eines Würfels wird durch die Formel: S A Würfel gleich 6 mal das Quadrat seiner Seitenlänge berechnet.")
  ]
  #only("2")[
    #voiceover("Bei einer Seitenlänge von 3 cm erhalten wir: S A Würfel gleich 6 mal 3 zum Quadrat, was 6 mal 9 ergibt, gleich 54 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berücksichtigung der gemeinsamen Fläche]
  #v(40pt)
  #only("1-")[- Gemeinsame Fläche: $3"cm" × 3"cm" = 9"cm"^2$]
  #v(20pt)
  #only("2-")[- Diese Fläche wurde doppelt gezählt, daher ziehen wir sie einmal ab]
  #only("1")[
    #voiceover("Wir müssen jedoch vorsichtig sein. Der Würfel und der Quader teilen sich eine Fläche, die wir in unseren Berechnungen doppelt gezählt haben.")
  ]
  #only("2")[
    #voiceover("Diese gemeinsame Fläche hat eine Größe von 3 Zentimeter mal 3 Zentimeter, was 9 Quadratzentimeter ergibt. Wir müssen diese einmal abziehen, um eine Doppelzählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Berechnung der gesamten Oberfläche]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"cuboid" + "SA"_"cube" - "SA"_"shared"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 158"cm"^2 + 54"cm"^2 - 9"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA"_"total" = 203"cm"^2$]
  #only("1")[
    #voiceover("Nun können wir die gesamte Oberfläche berechnen. Sie ist die Summe der Oberfläche des Quaders und der Oberfläche des Würfels, abzüglich der Fläche der gemeinsamen Fläche.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: 158 Quadratzentimeter plus 54 Quadratzentimeter minus 9 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Das ergibt eine gesamte Oberfläche von 203 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche der zusammengesetzten Figur beträgt $203"cm"^2$. 🎉]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer gemeinsame Flächen bei zusammengesetzten Figuren!]
  #only("1")[
    #voiceover("Unsere endgültige Antwort lautet also, dass die gesamte Oberfläche der zusammengesetzten Figur 203 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren immer auf gemeinsame Flächen zu achten, um eine Doppelzählung zu vermeiden. Diese Aufmerksamkeit für Details ist in Geometrieaufgaben entscheidend.")
  ]
]