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
l, w, h = 11, 6, 4

# Plot cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Add labels
ax.set_xlabel('Length (11 cm)')
ax.set_ylabel('Width (6 cm)')
ax.set_zlabel('Height (4 cm)')

ax.text(5.5, 3, 4.5, 'Surface Area: 242 cm²', fontsize=12)

plt.title('Cuboid with Surface Area 242 cm²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir auf die Höhe von 4 cm für diesen Quader kommen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Zuerst erinnern wir uns an die Formel für die Oberfläche eines Quaders. Sie lautet: zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Hier steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[- Gegeben: Oberfläche = 242 cm², $l$ = 11 cm, $w$ = 6 cm]
  #v(20pt)
  #only("2-")[- $242 = 2(11 dot 6 + 11h + 6h)$]
  #only("1")[
    #voiceover("Jetzt setzen wir die Werte ein, die wir kennen. Uns ist gegeben, dass die Oberfläche 242 Quadratzentimeter beträgt, die Länge 11 Zentimeter und die Breite 6 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Setzen wir diese in unsere Formel ein, erhalten wir: 242 gleich 2 mal die Menge 11 mal 6, plus 11h, plus 6h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Die Gleichung vereinfachen]
  #v(40pt)
  #only("1-")[- $242 = 2(66 + 11h + 6h)$]
  #v(20pt)
  #only("2-")[- $242 = 2(66 + 17h)$]
  #v(20pt)
  #only("3-")[- $242 = 132 + 34h$]
  #only("1")[
    #voiceover("Lass uns diese Gleichung vereinfachen. Zuerst können wir 11 mal 6 berechnen, was 66 ergibt.")
  ]
  #only("2")[
    #voiceover("Dann können wir die Terme mit h kombinieren, was uns 17h ergibt.")
  ]
  #only("3")[
    #voiceover("Jetzt können wir die 2 verteilen, was zu 242 gleich 132 plus 34h führt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Für h lösen]
  #v(40pt)
  #only("1-")[- $242 - 132 = 34h$]
  #v(20pt)
  #only("2-")[- $110 = 34h$]
  #v(20pt)
  #only("3-")[- $h = 110/34 = 3.235...$]
  #v(20pt)
  #only("4-")[- $h ≈ 4$ cm (auf den nächsten cm gerundet)]
  #only("1")[
    #voiceover("Um für h zu lösen, subtrahieren wir zuerst 132 von beiden Seiten.")
  ]
  #only("2")[
    #voiceover("Das ergibt 110 gleich 34h.")
  ]
  #only("3")[
    #voiceover("Teilen wir beide Seiten durch 34, erhalten wir h gleich 110 geteilt durch 34, was ungefähr 3.235 ergibt.")
  ]
  #only("4")[
    #voiceover("Auf den nächsten Zentimeter gerundet, erhalten wir 4 Zentimeter für die Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Höhe des Quaders beträgt 4 cm. 📏]]
  #v(40pt)
  #only("2-")[💡 Denke immer daran, Deine Einheiten zu überprüfen!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Höhe des Quaders 4 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist immer wichtig, die richtigen Einheiten in Deiner Antwort anzugeben. In diesem Fall messen wir die Länge, also verwenden wir Zentimeter.")
  ]
]