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

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Rectangular prism
x = np.array([0, 8, 8, 0, 0, 8, 8, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 4, 4, 4, 4])

ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[i]], 'b')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[i+4]], 'b')

# Cylindrical hole
r = 1
h = 4
theta = np.linspace(0, 2*np.pi, 100)
x_c = r * np.cos(theta) + 4
y_c = r * np.sin(theta) + 3
z_c = np.linspace(0, h, 100)
X_c, Z_c = np.meshgrid(x_c, z_c)
Y_c, _ = np.meshgrid(y_c, z_c)

ax.plot_surface(X_c, Y_c, Z_c, alpha=0.5, color='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]]
  ]
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Du hast die Oberfläche korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben ein rechteckiges Prisma mit den Maßen 8 cm mal 6 cm mal 4 cm und ein zylindrisches Loch mit einem Radius von 1 cm und einer Höhe von 4 cm, das durch dessen Zentrum gebohrt wurde. Hier ist eine Visualisierung unserer zusammengesetzten Figur.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des rechteckigen Prismas]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"prism" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"prism" = 2((8 × 6) + (8 × 4) + (6 × 4))$]
  #v(20pt)
  #only("3-")[- $"SA"_"prism" = 2(48 + 32 + 24) = 2(104) = 208 "cm"^2$]
  #only("1")[
    #voiceover("Zuerst berechnen wir die Oberfläche des rechteckigen Prismas ohne das Loch. Die Formel für die Oberfläche eines rechteckigen Prismas ist zweimal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir zweimal die Summe aus acht mal sechs, acht mal vier und sechs mal vier.")
  ]
  #only("3")[
    #voiceover("Dies vereinfacht sich zu zweimal einhundertvier, was zweihundertacht Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des zylindrischen Lochs]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"hole" = 2pi r h$]
  #v(20pt)
  #only("2-")[- $"SA"_"hole" = 2pi × 1 "cm" × 4 "cm"$]
  #v(20pt)
  #only("3-")[- $"SA"_"hole" = 8pi "cm"^2 ≈ 25.13 "cm"^2$]
  #only("1")[
    #voiceover("Als nächstes müssen wir die Oberfläche des zylindrischen Lochs berechnen. Die Formel für die Mantelfläche eines Zylinders ist zwei Pi mal Radius mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir zwei Pi mal ein Zentimeter mal vier Zentimeter.")
  ]
  #only("3")[
    #voiceover("Dies vereinfacht sich zu acht Pi Quadratzentimetern, was ungefähr fünfundzwanzig Komma eins drei Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Endberechnung]
  #v(40pt)
  #only("1-")[- Gesamte SA = $"SA"_"prism" + "SA"_"hole"$]
  #v(20pt)
  #only("2-")[- Gesamte SA $= 208 "cm"^2 + 25.13 "cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamte SA $≈ 233.13 "cm"^2$]
  #v(20pt)
  #only("4-")[- Auf 2 Dezimalstellen gerundet: $233.13 "cm"^2$]
  #only("1")[
    #voiceover("Im letzten Schritt addieren wir die Oberfläche des Prismas zur Oberfläche des Lochs.")
  ]
  #only("2")[
    #voiceover("Dies ergibt zweihundertacht Quadratzentimeter plus fünfundzwanzig Komma eins drei Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Das Gesamtergebnis ist ungefähr zweihundertdreiunddreißig Komma eins drei Quadratzentimeter.")
  ]
  #only("4")[
    #voiceover("Auf zwei Dezimalstellen gerundet, ist unsere endgültige Antwort zweihundertdreiunddreißig Komma eins drei Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[Die gesamte Oberfläche beträgt $233.13 "cm"^2$.]
  #v(20pt)
  #only("2-")[💡 Denke daran: Bei zusammengesetzten Figuren müssen wir oft die Oberflächen addieren!]
  #only("1")[
    #voiceover("Also beträgt die gesamte Oberfläche unseres rechteckigen Prismas mit einem zylindrischen Loch zweihundertdreiunddreißig Komma eins drei Quadratzentimeter.")
  ]
  #only("2")[
    #voiceover("Denke daran, bei zusammengesetzten Figuren müssen wir oft die Oberflächen der verschiedenen Komponenten addieren. Großartige Arbeit bei der Lösung dieses komplexen Problems!")
  ]
]