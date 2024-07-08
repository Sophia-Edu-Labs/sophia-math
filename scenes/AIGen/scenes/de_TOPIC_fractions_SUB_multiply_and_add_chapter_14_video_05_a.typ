#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 4/5 - 2/5 $]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Gleicher Nenner]]
  ]

  #only("3-")[
    #align(center)[$ (4-2)/5 $]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Zähler vereinfachen]]
  ]

  #only("5-")[
    #align(center)[$ 2/5 $]
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit vier Fünfteln minus zwei Fünfteln. Beachte, dass beide Brüche den gleichen Nenner haben, nämlich fünf.")
  ]

  #only("3")[
    #voiceover("Beim Subtrahieren von Brüchen mit dem gleichen Nenner behalten wir den Nenner bei und subtrahieren die Zähler.")
  ]

  #only("4")[
    #voiceover("Also subtrahieren wir zwei von vier im Zähler, während wir fünf als Nenner beibehalten.")
  ]

  #only("5")[
    #voiceover("Das ergibt zwei Fünftel als unser Endergebnis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visuelle Darstellung]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# First fraction: 4/5
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.8, 1, fill=True, color='skyblue'))
ax1.text(0.5, -0.1, '4/5', ha='center', va='center')
ax1.axis('off')

# Second fraction: 2/5
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.4, 1, fill=True, color='lightgreen'))
ax2.text(0.5, -0.1, '2/5', ha='center', va='center')
ax2.axis('off')

# Result: 2/5
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.4, 1, fill=True, color='orange'))
ax3.text(0.5, -0.1, '2/5', ha='center', va='center')
ax3.axis('off')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Subtraktion visualisieren. Das erste Rechteck repräsentiert vier Fünftel, gefüllt in Blau. Das zweite repräsentiert zwei Fünftel, gefüllt in Grün. Das letzte Rechteck zeigt das Ergebnis, zwei Fünftel, gefüllt in Orange.")
  ]

  #only("2")[
    #voiceover("Wie du sehen kannst, wenn wir den grünen Teil (zwei Fünftel) vom blauen Teil (vier Fünftel) abziehen, bleibt uns der orange Teil, der zwei Fünftel ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[- Beim Subtrahieren von Brüchen mit dem gleichen Nenner: 🔢]
  #v(20pt)
  #only("2-")[  1️⃣ Den Nenner beibehalten]
  #v(20pt)
  #only("3-")[  2️⃣ Die Zähler subtrahieren]
  #v(20pt)
  #only("4-")[- Immer prüfen, ob eine Vereinfachung möglich ist ✅]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte beim Subtrahieren von Brüchen mit dem gleichen Nenner zusammenfassen.")
  ]

  #only("2")[
    #voiceover("Erstens, wir behalten den Nenner bei.")
  ]

  #only("3")[
    #voiceover("Zweitens, wir subtrahieren die Zähler.")
  ]

  #only("4")[
    #voiceover("Und schließlich, prüfe immer, ob dein Ergebnis weiter vereinfacht werden kann. In diesem Fall sind zwei Fünftel bereits in ihrer einfachsten Form.")
  ]
]