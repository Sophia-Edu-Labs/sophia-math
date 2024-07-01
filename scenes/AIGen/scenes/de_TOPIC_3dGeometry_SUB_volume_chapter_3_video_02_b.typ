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
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Quaderdimensionen
l, w, h = 9, 5, 3

# Quader erstellen
xx, yy = np.meshgrid(range(2), range(2))
ax.plot_surface(xx*l, yy*w, np.zeros((2,2)), alpha=0.5)
ax.plot_surface(xx*l, yy*w, np.ones((2,2))*h, alpha=0.5)
ax.plot_surface(np.zeros((2,2)), xx*w, yy*h, alpha=0.5)
ax.plot_surface(np.ones((2,2))*l, xx*w, yy*h, alpha=0.5)
ax.plot_surface(xx*l, np.zeros((2,2)), yy*h, alpha=0.5)
ax.plot_surface(xx*l, np.ones((2,2))*w, yy*h, alpha=0.5)

# Beschriftungen setzen
ax.set_xlabel('Länge (9 cm)')
ax.set_ylabel('Breite (5 cm)')
ax.set_zlabel('Höhe (3 cm)')

ax.set_title('Quader')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Hier ist eine Visualisierung unseres Quaders mit einer Länge von 9 cm, einer Breite von 5 cm und einer Höhe von 3 cm.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Quaders zu erinnern. Das Volumen eines Quaders ist gleich seiner Länge multipliziert mit seiner Breite multipliziert mit seiner Höhe.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich l mal w mal h schreiben, wobei V das Volumen, l die Länge, w die Breite und h die Höhe ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge, $l = 9"cm"$]
  #v(10pt)
  #only("2-")[- Breite, $w = 5"cm"$]
  #v(10pt)
  #only("3-")[- Höhe, $h = 3"cm"$]
  #v(20pt)
  #only("4-")[- $V = 9"cm" × 5"cm" × 3"cm"$]
  #only("1")[
    #voiceover("Nun, lass uns unsere bekannten Werte einsetzen. Uns wird gegeben, dass die Länge 9 Zentimeter beträgt,")
  ]
  #only("2")[
    #voiceover("die Breite 5 Zentimeter beträgt,")
  ]
  #only("3")[
    #voiceover("und die Höhe 3 Zentimeter beträgt.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir V gleich 9 Zentimeter mal 5 Zentimeter mal 3 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = 9"cm" × 5"cm" × 3"cm"$]
  #v(20pt)
  #only("2-")[- $V = 45"cm"^2 × 3"cm"$]
  #v(20pt)
  #only("3-")[- $V = 135"cm"^3$]
  #only("1")[
    #voiceover("Nun lass uns berechnen. Zuerst multiplizieren wir 9 mit 5.")
  ]
  #only("2")[
    #voiceover("9 mal 5 ist 45, also haben wir 45 Quadratzentimeter mal 3 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Schließlich ist 45 mal 3 gleich 135. Also ist unsere endgültige Antwort 135 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Quaders beträgt $135"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind in der Geometrie entscheidend!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass das Volumen des Quaders 135 Kubikzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist entscheidend, die richtigen Einheiten in deiner Antwort anzugeben. Hier haben wir es mit Volumen zu tun, also sind unsere Einheiten Kubikzentimeter. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]