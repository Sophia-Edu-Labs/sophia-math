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
x = np.array([0, 10, 10, 0, 0, 10, 10, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 4, 4, 4, 4])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
ax.plot(x[:4], y[:4], z[:4], 'b')
ax.plot(x[4:], y[4:], z[4:], 'b')

# Cube on top
cube_x = np.array([3.5, 6.5, 6.5, 3.5, 3.5, 6.5, 6.5, 3.5])
cube_y = np.array([1.5, 1.5, 4.5, 4.5, 1.5, 1.5, 4.5, 4.5])
cube_z = np.array([4, 4, 4, 4, 7, 7, 7, 7])
ax.scatter(cube_x, cube_y, cube_z, c='r')

for i in range(4):
    ax.plot([cube_x[i], cube_x[i+4]], [cube_y[i], cube_y[i+4]], [cube_z[i], cube_z[i+4]], 'r')
ax.plot(cube_x[:4], cube_y[:4], cube_z[:4], 'r')
ax.plot(cube_x[4:], cube_y[4:], cube_z[4:], 'r')

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
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus einem Quader mit den Maßen 10 cm mal 6 cm mal 4 cm und einem Würfel mit einer Seitenlänge von 3 cm oben drauf besteht. Unsere Aufgabe ist es, die gesamte Oberfläche zu berechnen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des Quaders berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((10×6) + (10×4) + (6×4))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(60 + 40 + 24) = 2(124) = 248 "cm"^2$]
  #only("1")[
    #voiceover("Fangen wir mit dem Quader an. Die Oberfläche eines Quaders wird durch die Formel gegeben: S A Quader gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: S A Quader gleich zwei mal die Summe aus zehn mal sechs, zehn mal vier und sechs mal vier.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir das, erhalten wir: S A Quader gleich zwei mal die Summe aus sechzig, vierzig und vierundzwanzig, was zwei mal einhundertvierundzwanzig ergibt, also zweihundertachtundvierzig Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 3^2 = 6 × 9 = 54 "cm"^2$]
  #only("1")[
    #voiceover("Nun zum Würfel. Die Oberfläche eines Würfels wird durch die Formel gegeben: S A Würfel gleich sechs mal das Quadrat der Seitenlänge.")
  ]
  #only("2")[
    #voiceover("Bei einer Seitenlänge von drei Zentimetern erhalten wir: S A Würfel gleich sechs mal drei zum Quadrat, was sechs mal neun ergibt, also vierundfünfzig Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Gemeinsame Fläche abziehen]
  #v(40pt)
  #only("1-")[- Gemeinsame Fläche: $3 × 3 = 9 "cm"^2$]
  #v(20pt)
  #only("2-")[- Diese Fläche wird doppelt gezählt, also einmal abziehen]
  #only("1")[
    #voiceover("Wir müssen jedoch vorsichtig sein. Der Würfel und der Quader teilen sich eine Fläche, an der sie sich berühren. Diese Fläche hat eine Größe von drei mal drei, also neun Quadratzentimeter.")
  ]
  #only("2")[
    #voiceover("Diese Fläche haben wir in unseren Berechnungen zweimal gezählt - einmal für den Quader und einmal für den Würfel. Daher müssen wir sie einmal abziehen, um eine doppelte Zählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- Gesamte Oberfläche = $"SA"_"cuboid" + "SA"_"cube" - "Shared face"$]
  #v(20pt)
  #only("2-")[- Gesamte Oberfläche = $248 + 54 - 9 = 293 "cm"^2$]
  #only("1")[
    #voiceover("Nun können wir die gesamte Oberfläche berechnen. Es ist die Summe der Oberfläche des Quaders und der Oberfläche des Würfels, minus die Fläche der gemeinsamen Fläche.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: zweihundertachtundvierzig plus vierundfünfzig minus neun, was zweihundertdreiundneunzig Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche beträgt $293 "cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer deine Einheiten!]
  #only("1")[
    #voiceover("Unsere endgültige Antwort lautet also, dass die gesamte Oberfläche der zusammengesetzten Figur zweihundertdreiundneunzig Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren immer die gemeinsamen Flächen zu berücksichtigen, um eine doppelte Zählung zu vermeiden. Überprüfe immer deine Berechnungen und vergiss nicht, die richtigen Einheiten in deiner endgültigen Antwort anzugeben.")
  ]
]