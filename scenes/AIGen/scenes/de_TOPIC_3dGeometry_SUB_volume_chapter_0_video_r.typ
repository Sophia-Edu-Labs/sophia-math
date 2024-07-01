#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Volumen von Würfeln 📦]
  #v(40pt)
  #only("1-")[- Würfel sind 3D-Formen mit gleichen Seiten 🧊]
  #only("2-")[- Volumen misst den Raum im Inneren 🌟]
  #only("3-")[- Lass uns überprüfen, wie man es berechnet 🧮]

  #only("1")[
    #voiceover("Lass uns das Konzept des Volumens für Würfel überprüfen. Würfel sind dreidimensionale Formen, bei denen alle Seiten gleich sind.")
  ]
  #only("2")[
    #voiceover("Das Volumen eines Würfels misst den Raum im Inneren.")
  ]
  #only("3")[
    #voiceover("Wir werden Schritt für Schritt überprüfen, wie man dieses Volumen berechnet.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Eigenschaften eines Würfels]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s - e)) == r[1] - r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Label
ax.text(0.5, -0.1, 0, "s", size=20, zorder=1)
ax.text(1.1, 0.5, 0, "s", size=20, zorder=1)
ax.text(0, 0.5, 1.1, "s", size=20, zorder=1)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

plt.tight_layout()
plt.show()
          ```,
          width: 300pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[- Alle Seiten haben die gleiche Länge $s$]
  #only("3-")[- Alle Flächen sind Quadrate]
  #only("4-")[- 8 Ecken, 12 Kanten, 6 Flächen]

  #only("1")[
    #voiceover("Hier ist ein Würfel. Beachte seine wichtigsten Eigenschaften:")
  ]
  #only("2")[
    #voiceover("Alle Seiten eines Würfels haben die gleiche Länge, die wir oft mit s für Seitenlänge bezeichnen.")
  ]
  #only("3")[
    #voiceover("Deshalb sind alle Flächen eines Würfels perfekte Quadrate.")
  ]
  #only("4")[
    #voiceover("Ein Würfel hat 8 Ecken, an denen sich Kanten treffen, insgesamt 12 Kanten und 6 quadratische Flächen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumenberechnung]
  #v(20pt)
  #only("1-")[Volumenformel: $V = s^3$]
  #v(10pt)
  #only("2-")[Wobei $s$ die Seitenlänge ist]
  #v(20pt)
  #only("3-")[Beispiel: Würfel mit $s = 4$ cm]
  #only("4-")[$V = 4^3 = 4 \cdot 4 \cdot 4 = 64$ cm³]

  #only("1")[
    #voiceover("Nun, lass uns überprüfen, wie man das Volumen eines Würfels berechnet. Die Formel für das Volumen eines Würfels ist V gleich s hoch drei,")
  ]
  #only("2")[
    #voiceover("wobei s die Länge einer Seite des Würfels ist.")
  ]
  #only("3")[
    #voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir haben einen Würfel mit einer Seitenlänge von 4 Zentimetern.")
  ]
  #only("4")[
    #voiceover("Um sein Volumen zu finden, würfeln wir 4. Das ist 4 mal 4 mal 4, was 64 Kubikzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Würfel: 3D-Form mit gleichen Seiten 🧊]
  #only("2-")[- Volumenformel: $V = s^3$ 🔢]
  #only("3-")[- $s$ ist die Seitenlänge 📏]
  #only("4-")[- Einheiten sind kubisch (z.B. cm³, m³) 📊]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir überprüft haben. Ein Würfel ist eine dreidimensionale Form mit gleichen Seiten.")
  ]
  #only("2")[
    #voiceover("Das Volumen eines Würfels wird berechnet, indem man die Seitenlänge hoch drei nimmt. Das ist s hoch drei.")
  ]
  #only("3")[
    #voiceover("Denke daran, dass s die Länge einer Seite des Würfels darstellt.")
  ]
  #only("4")[
    #voiceover("Schließlich sind die Einheiten für Volumen immer kubisch, wie Kubikzentimeter oder Kubikmeter.")
  ]
]