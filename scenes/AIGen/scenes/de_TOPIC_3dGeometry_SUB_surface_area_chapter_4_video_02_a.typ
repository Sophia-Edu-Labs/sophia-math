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
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 5, 3

# Plot cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Add labels
ax.set_xlabel('Length (9 m)')
ax.set_ylabel('Width (5 m)')
ax.set_zlabel('Height (3 m)')

ax.text(4.5, 2.5, 3.5, 'Surface Area = 198 m²', fontsize=12)

plt.title('Cuboid with Surface Area 198 m²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Du hast dieses Problem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir auf die Höhe von 3 Metern für diesen Quader kommen.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Erinnere dich an die Formel]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Zuerst, lass uns die Formel für die Oberfläche eines Quaders in Erinnerung rufen. Sie lautet: zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Hierbei steht l für Länge, w für Breite und h für Höhe.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Setze die bekannten Werte ein]
  #v(40pt)
  #only("1-")[- Gegeben: Oberfläche = 198 m², $l$ = 9 m, $w$ = 5 m]
  #v(20pt)
  #only("2-")[- $198 = 2(9 dot 5 + 9h + 5h)$]
  #only("1")[
    #voiceover("Nun, lass uns die bekannten Werte einsetzen. Gegeben ist, dass die Oberfläche 198 Quadratmeter beträgt, die Länge 9 Meter und die Breite 5 Meter.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: 198 ist gleich 2 mal die Summe aus 9 mal 5, plus 9h, plus 5h.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Vereinfache die Gleichung]
  #v(40pt)
  #only("1-")[- $198 = 2(45 + 9h + 5h)$]
  #v(20pt)
  #only("2-")[- $198 = 2(45 + 14h)$]
  #v(20pt)
  #only("3-")[- $198 = 90 + 28h$]
  #only("1")[
    #voiceover("Lass uns diese Gleichung vereinfachen. Zuerst können wir 9 mal 5 berechnen, was 45 ergibt.")
  ]
  #only("2")[
    #voiceover("Dann können wir 9h und 5h zu 14h zusammenfassen.")
  ]
  #only("3")[
    #voiceover("Nun können wir die 2 verteilen, was uns 198 gleich 90 plus 28h ergibt.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Löse nach h auf]
  #v(40pt)
  #only("1-")[- $198 - 90 = 28h$]
  #v(20pt)
  #only("2-")[- $108 = 28h$]
  #v(20pt)
  #only("3-")[- $h = 108/28 = 3"m"$]
  #only("1")[
    #voiceover("Um nach h aufzulösen, subtrahieren wir zuerst 90 von beiden Seiten.")
  ]
  #only("2")[
    #voiceover("Das ergibt uns 108 gleich 28h.")
  ]
  #only("3")[
    #voiceover("Schließlich teilen wir beide Seiten durch 28, und wir erhalten h gleich 3 Meter.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Höhe des Quaders beträgt 3 Meter.]]
  #v(40pt)
  #only("2-")[💡 Überprüfe immer deine Antwort, indem du sie zurück in die ursprüngliche Gleichung einsetzt!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Höhe des Quaders 3 Meter beträgt.")
  ]
  #only("2")[
    #voiceover("Als gute Praxis solltest du immer daran denken, deine Antwort zu überprüfen, indem du sie zurück in die ursprüngliche Gleichung einsetzt, um sicherzustellen, dass sie stimmt!")
  ]
]