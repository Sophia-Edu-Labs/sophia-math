#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
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
length, width, height = 5, 3, 4

# Draw cuboid
ax.bar3d(0, 0, 0, length, width, height, shade=True)

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')

ax.set_title('Cuboid: 5 cm × 3 cm × 4 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Hier ist eine Visualisierung unseres Quaders mit einer Länge von 5 cm, einer Breite von 3 cm und einer Höhe von 4 cm.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[- $V = l dot w dot h$]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Quaders zu erinnern. Das Volumen ist gleich dem Produkt seiner Länge, Breite und Höhe.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich l mal w mal h schreiben, wobei V das Volumen, l die Länge, w die Breite und h die Höhe ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge (l) = 5 cm]
  #v(10pt)
  #only("2-")[- Breite (w) = 3 cm]
  #v(10pt)
  #only("3-")[- Höhe (h) = 4 cm]
  #v(20pt)
  #only("4-")[- $V = 5"cm" dot 3"cm" dot 4"cm"$]
  #only("1")[
    #voiceover("Nun, lass uns die gegebenen Werte einsetzen. Wir haben eine Länge von 5 Zentimetern,")
  ]
  #only("2")[
    #voiceover("eine Breite von 3 Zentimetern,")
  ]
  #only("3")[
    #voiceover("und eine Höhe von 4 Zentimetern.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Volumen gleich 5 Zentimeter mal 3 Zentimeter mal 4 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = 5"cm" dot 3"cm" dot 4"cm"$]
  #v(20pt)
  #only("2-")[- $V = 15"cm"^2 dot 4"cm"$]
  #v(20pt)
  #only("3-")[- $V = 60"cm"^3$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst multiplizieren wir 5 Zentimeter mit 3 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Das ergibt 15 Quadratzentimeter. Dann multiplizieren wir dies mit 4 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Das Endergebnis ist 60 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Quaders beträgt $60"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind in der Geometrie entscheidend!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass das Volumen des Quaders 60 Kubikzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikzentimeter.")
  ]
]