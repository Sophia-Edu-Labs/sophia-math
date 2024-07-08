#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)

#only("1-")[
  $1/2 × 3/4$
]

#v(20pt)

#only("2-")[
  $= (1 × 3) / (2 × 4)$
]

#v(20pt)

#only("3-")[
  $= 3 / 8$
]

#only("1")[
#voiceover("Großartig! Du hast diese Bruchmultiplikation korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 1 mit 3 im Zähler und 2 mit 4 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt 3 Achtel als unser Endergebnis. Es ist keine weitere Vereinfachung nötig, da 3 und 8 keine gemeinsamen Faktoren außer 1 haben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 1/2
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.5, 1, fill=True, color='lightblue'))
ax1.text(0.25, 0.5, '1/2', ha='center', va='center', fontsize=20)
ax1.set_xlim(0, 1)
ax1.set_ylim(0, 1)
ax1.set_aspect('equal')
ax1.axis('off')

# Second fraction: 3/4
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.75, 1, fill=True, color='lightgreen'))
ax2.text(0.375, 0.5, '3/4', ha='center', va='center', fontsize=20)
ax2.set_xlim(0, 1)
ax2.set_ylim(0, 1)
ax2.set_aspect('equal')
ax2.axis('off')

# Result: 3/8
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.375, 1, fill=True, color='lightyellow'))
ax3.text(0.1875, 0.5, '3/8', ha='center', va='center', fontsize=20)
ax3.set_xlim(0, 1)
ax3.set_ylim(0, 1)
ax3.set_aspect('equal')
ax3.axis('off')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Lass uns diese Multiplikation visualisieren. Hier haben wir drei Rechtecke. Das erste stellt 1/2 dar, in Blau gezeigt.")
]

#only("2")[
#voiceover("Das zweite Rechteck stellt 3/4 dar, in Grün gezeigt.")
]

#only("3")[
#voiceover("Wenn wir diese Brüche multiplizieren, nehmen wir im Wesentlichen 3/4 von 1/2. Das Ergebnis ist 3/8, im dritten Rechteck in Gelb gezeigt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum das funktioniert]
#v(40pt)

#only("1-")[- Multiplikation ist wiederholte Addition 🔁]
#v(20pt)
#only("2-")[- $(1/2) × (3/4) = 3 × (1/2 × 1/4)$ 🧮]
#v(20pt)
#only("3-")[- $(1/2 × 1/4) = 1/(2 × 4) = 1/8$ 📊]
#v(20pt)
#only("4-")[- $3 × (1/8) = 3/8$ ✅]

#only("1")[
#voiceover("Nun, lass uns verstehen, warum diese Methode funktioniert. Denke daran, dass Multiplikation im Wesentlichen wiederholte Addition ist.")
]

#only("2")[
#voiceover("Wir können 1/2 mal 3/4 als 3 mal 1/2 von 1/4 betrachten.")
]

#only("3")[
#voiceover("1/2 von 1/4 ist 1/8. Das erhalten wir, indem wir die Nenner multiplizieren: 2 mal 4 ergibt 8.")
]

#only("4")[
#voiceover("Schließlich nehmen wir 3 dieser 1/8 Stücke, was uns 3/8 ergibt. Deshalb funktioniert es, die Zähler und Nenner separat zu multiplizieren!")
]
]