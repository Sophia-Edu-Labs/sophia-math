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
x = np.array([0, 7, 7, 0, 0, 7, 7, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 5, 5, 5, 5])
ax.scatter(x, y, z)

for i in range(4):
    ax.plot(x[i:i+2], y[i:i+2], z[i:i+2], 'b')
    ax.plot(x[i:i+2]+[0,0], y[i:i+2]+[0,0], z[i:i+2]+[5,5], 'b')
    ax.plot([x[i],x[i]], [y[i],y[i]], [0,5], 'b')

# Cube on top
cube_x = np.array([1.5, 5.5, 5.5, 1.5, 1.5, 5.5, 5.5, 1.5])
cube_y = np.array([1, 1, 5, 5, 1, 1, 5, 5])
cube_z = np.array([5, 5, 5, 5, 9, 9, 9, 9])
ax.scatter(cube_x, cube_y, cube_z)

for i in range(4):
    ax.plot(cube_x[i:i+2], cube_y[i:i+2], cube_z[i:i+2], 'r')
    ax.plot(cube_x[i:i+2]+[0,0], cube_y[i:i+2]+[0,0], cube_z[i:i+2]+[4,4], 'r')
    ax.plot([cube_x[i],cube_x[i]], [cube_y[i],cube_y[i]], [5,9], 'r')

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
    ]
  ]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung gemeinsam durch. Lass uns Schritt für Schritt die gesamte Oberfläche der zusammengesetzten Figur berechnen.")
  ]]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des Quaders berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cuboid" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"cuboid" = 2((7×6) + (7×5) + (6×5))$]
  #v(20pt)
  #only("3-")[- $"SA"_"cuboid" = 2(42 + 35 + 30) = 2(107) = 214"cm"^2$]
  #only("1")[
    #voiceover("Fangen wir mit dem Quader an. Die Oberfläche eines Quaders wird durch die Formel gegeben: 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 2 mal die Summe aus 7 mal 6, 7 mal 5 und 6 mal 5.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir das, erhalten wir 2 mal 107, was 214 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$]
  #v(20pt)
  #only("2-")[- $"SA"_"cube" = 6 × 4^2 = 6 × 16 = 96"cm"^2$]
  #only("1")[
    #voiceover("Nun zum Würfel. Die Oberfläche eines Würfels wird durch 6 mal das Quadrat seiner Seitenlänge gegeben.")
  ]
  #only("2")[
    #voiceover("Bei einer Seitenlänge von 4 cm erhalten wir 6 mal 4 zum Quadrat, was 96 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Anpassung für gemeinsame Fläche]
  #v(40pt)
  #only("1-")[- Gemeinsame Fläche: $4 × 4 = 16"cm"^2$]
  #v(20pt)
  #only("2-")[- Wir müssen diese Fläche einmal abziehen]
  #only("1")[
    #voiceover("Wir müssen jedoch vorsichtig sein. Der Würfel sitzt auf dem Quader, was bedeutet, dass sie eine gemeinsame Fläche haben. Diese gemeinsame Fläche hat eine Fläche von 4 mal 4, was 16 Quadratzentimetern entspricht.")
  ]
  #only("2")[
    #voiceover("Diese gemeinsame Fläche haben wir bisher zweimal in unseren Berechnungen berücksichtigt, einmal für den Quader und einmal für den Würfel. Wir müssen sie einmal abziehen, um eine doppelte Zählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- $"Total SA" = "SA"_"cuboid" + "SA"_"cube" - "Shared Face"$]
  #v(20pt)
  #only("2-")[- $"Total SA" = 214 + 96 - 16 = 294"cm"^2$]
  #only("1")[
    #voiceover("Nun können wir die gesamte Oberfläche berechnen. Es ist die Summe der Oberflächen des Quaders und des Würfels minus der Fläche der gemeinsamen Fläche.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir 214 plus 96 minus 16, was 294 Quadratzentimetern entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche beträgt $294"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer deine Einheiten!]
  #only("1")[
    #voiceover("Daher beträgt die gesamte Oberfläche unserer zusammengesetzten Figur 294 Quadratzentimeter.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren immer die gemeinsamen Flächen zu berücksichtigen, um eine doppelte Zählung zu vermeiden. Überprüfe auch immer deine Einheiten, um sicherzustellen, dass deine endgültige Antwort sinnvoll ist.")
  ]
]