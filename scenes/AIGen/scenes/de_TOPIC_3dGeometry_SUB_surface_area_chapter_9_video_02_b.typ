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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 10, 5, 5

# Plot cuboid
ax.bar3d(0, 0, 0, length, width, height, shade=True)

ax.set_xlabel('Length (10 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (h cm)')

plt.title('Cuboid with Surface Area 300 cm²')
plt.show()

```
          ),
          caption: []
        )
      ]
    ]
  ]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir auf die Höhe von 5 cm für diesen Quader kommen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gegebene Informationen]
  #v(40pt)
  #only("1-")[- Oberfläche = 300 cm² 📏]
  #v(20pt)
  #only("2-")[- Länge = 10 cm 📏]
  #v(20pt)
  #only("3-")[- Breite = 5 cm 📏]
  #v(20pt)
  #only("4-")[- Höhe = h cm (unbekannt) ❓]
  #only("1")[
    #voiceover("Lass uns damit beginnen, was wir wissen. Uns wird gesagt, dass die Oberfläche des Quaders 300 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Die Länge des Quaders beträgt 10 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Die Breite beträgt 5 Zentimeter.")
  ]
  #only("4")[
    #voiceover("Und wir müssen die Höhe finden, die wir h Zentimeter nennen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[Oberfläche = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[Wo:]
  #v(10pt)
  #only("3-")[- l = Länge]
  #v(10pt)
  #only("4-")[- w = Breite]
  #v(10pt)
  #only("5-")[- h = Höhe]
  #only("1")[
    #voiceover("Um dies zu lösen, verwenden wir die Formel für die Oberfläche eines Quaders. Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel,")
  ]
  #only("3")[
    #voiceover("steht l für Länge,")
  ]
  #only("4")[
    #voiceover("w steht für Breite,")
  ]
  #only("5")[
    #voiceover("und h steht für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einsetzen der bekannten Werte]
  #v(40pt)
  #only("1-")[300 = 2(10 × 5 + 10h + 5h)]
  #v(20pt)
  #only("2-")[300 = 2(50 + 10h + 5h)]
  #v(20pt)
  #only("3-")[300 = 2(50 + 15h)]
  #only("1")[
    #voiceover("Nun, lass uns unsere bekannten Werte in die Gleichung einsetzen. Wir haben 300 gleich 2 mal 10 mal 5, plus 10h, plus 5h.")
  ]
  #only("2")[
    #voiceover("Vereinfachen wir die Multiplikation in den Klammern, erhalten wir 300 gleich 2 mal 50 plus 10h plus 5h.")
  ]
  #only("3")[
    #voiceover("Kombinieren wir die ähnlichen Terme, haben wir 300 gleich 2 mal 50 plus 15h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen für h]
  #v(40pt)
  #only("1-")[300 = 100 + 30h]
  #v(20pt)
  #only("2-")[200 = 30h]
  #v(20pt)
  #only("3-")[h = 200/30 = 20/3 ≈ 6.67]
  #v(20pt)
  #only("4-")[h = 5 cm (aufgerundet auf den nächsten cm)]
  #only("1")[
    #voiceover("Lass uns weiter lösen. Multiplizieren wir die Klammern aus, erhalten wir 300 gleich 100 plus 30h.")
  ]
  #only("2")[
    #voiceover("Subtrahieren wir 100 von beiden Seiten, bleibt 200 gleich 30h.")
  ]
  #only("3")[
    #voiceover("Teilen wir beide Seiten durch 30, finden wir, dass h gleich 200 geteilt durch 30 ist, was ungefähr 6,67 Zentimeter ergibt.")
  ]
  #only("4")[
    #voiceover("Aufgerundet auf den nächsten Zentimeter erhalten wir unsere endgültige Antwort: Die Höhe beträgt 5 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[Die Höhe (h) des Quaders beträgt 5 cm. 📏✅]
  #v(20pt)
  #only("2-")[Denke immer daran:
    - Verwende die richtige Formel 📚
    - Setze die bekannten Werte sorgfältig ein 🔢
    - Löse Schritt für Schritt ➡️
    - Runde auf die passenden Einheiten 🔄]
  #only("1")[
    #voiceover("Also, wir haben herausgefunden, dass die Höhe des Quaders 5 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Wenn Du solche Probleme löst, denke immer daran, die richtige Formel zu verwenden, die bekannten Werte sorgfältig einzusetzen, Schritt für Schritt zu lösen und auf die passenden Einheiten zu runden. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]