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
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 11, 5, 3

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
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
    poly = Poly3DCollection([side], color='cyan', alpha=0.2)
    ax.add_collection3d(poly)
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='blue')

# Set labels
ax.set_xlabel('Length (11 m)')
ax.set_ylabel('Width (5 m)')
ax.set_zlabel('Height (3 m)')

# Set title
ax.set_title('Cuboid with Surface Area 220 m²')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Leider ist das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der eine Oberfläche von 220 Quadratmetern hat. Wir kennen zwei seiner Dimensionen: 11 Meter und 5 Meter. Unsere Aufgabe ist es, die Höhe zu finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Beginnen wir damit, uns die Formel für die Oberfläche eines Quaders ins Gedächtnis zu rufen. Sie lautet 2 mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[- $220 = 2(11 × 5 + 11h + 5h)$]
  #v(20pt)
  #only("2-")[- $220 = 2(55 + 11h + 5h)$]
  #only("1")[
    #voiceover("Nun setzen wir die bekannten Werte in unsere Formel ein. Wir wissen, dass die Oberfläche 220 Quadratmeter beträgt, die Länge 11 Meter und die Breite 5 Meter sind. Die Höhe, h, ist das, was wir herausfinden wollen.")
  ]
  #only("2")[
    #voiceover("Vereinfachen wir den Teil in den Klammern. 11 mal 5 ergibt 55.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Die Gleichung lösen]
  #v(40pt)
  #only("1-")[- $220 = 2(55 + 16h)$]
  #v(20pt)
  #only("2-")[- $220 = 110 + 32h$]
  #v(20pt)
  #only("3-")[- $110 = 32h$]
  #v(20pt)
  #only("4-")[- $h = 110/32 = 3.4375$]
  #only("1")[
    #voiceover("Lass uns weiter rechnen. Wir können 11h und 5h zu 16h zusammenfassen.")
  ]
  #only("2")[
    #voiceover("Nun verteilen wir die 2. Das ergibt 110 plus 32h gleich 220.")
  ]
  #only("3")[
    #voiceover("Subtrahiere 110 von beiden Seiten. Es bleibt 32h gleich 110.")
  ]
  #only("4")[
    #voiceover("Schließlich teilen wir beide Seiten durch 32. Das ergibt h gleich 3.4375 Meter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Höhe des Quaders beträgt 3 m.]
  #v(40pt)
  #only("2-")[💡 Denke daran, auf die nächste ganze Zahl zu runden, wie in der Aufgabe angegeben!]
  #only("1")[
    #voiceover("In der Aufgabe wurde nach der Antwort in ganzen Metern gefragt, also runden wir 3.4375 auf die nächste ganze Zahl.")
  ]
  #only("2")[
    #voiceover("Das gibt uns unsere endgültige Antwort: Die Höhe des Quaders beträgt 3 Meter. Gut gemacht, dass du dieses Problem gelöst hast!")
  ]
]