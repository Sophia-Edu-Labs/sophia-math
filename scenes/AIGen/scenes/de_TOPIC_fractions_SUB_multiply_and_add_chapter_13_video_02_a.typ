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
    #align(center)[
      $4/5 times 3/8 = ?$
    ]
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      $4/5 times 3/8 = (4 times 3)/(5 times 8)$
    ]
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      $= 12/40$
    ]
  ]

  #v(20pt)

  #only("4-")[
    #align(center)[
      $= 3/10$ (vereinfacht)
    ]
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit vier Fünfteln multipliziert mit drei Achteln.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 4 mit 3 im Zähler und 5 mit 8 im Nenner.")
  ]

  #only("3")[
    #voiceover("Das ergibt zwölf Vierzigstel.")
  ]

  #only("4")[
    #voiceover("Wir können diesen Bruch vereinfachen, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 4 ist, teilen. Zwölf geteilt durch 4 ist 3, und vierzig geteilt durch 4 ist 10, was uns den vereinfachten Bruch von drei Zehnteln ergibt.")
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

# First fraction: 4/5
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.8, 1, fill=True, color='skyblue'))
ax1.text(0.4, -0.1, '4/5', ha='center')
ax1.axis('off')

# Second fraction: 3/8
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.375, 1, fill=True, color='lightgreen'))
ax2.text(0.5, -0.1, '3/8', ha='center')
ax2.axis('off')

# Result: 3/10
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.3, 1, fill=True, color='salmon'))
ax3.text(0.5, -0.1, '3/10', ha='center')
ax3.axis('off')

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
        ),
      )
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Brüche visualisieren, um die Multiplikation besser zu verstehen. Hier haben wir drei Rechtecke.")
  ]

  #only("2")[
    #voiceover("Das erste Rechteck repräsentiert vier Fünftel, dargestellt in Blau. Das zweite repräsentiert drei Achtel, in Grün.")
  ]

  #only("3")[
    #voiceover("Wenn wir diese Brüche multiplizieren, finden wir im Wesentlichen einen Bruch eines Bruchs. Das Ergebnis, drei Zehntel, ist im dritten Rechteck in Rot dargestellt.")
  ]

  #only("4")[
    #voiceover("Beachte, wie die Fläche des roten Rechtecks kleiner ist als die der blauen und grünen Rechtecke, was Sinn ergibt, da wir zwei echte Brüche multiplizieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[- Zähler multiplizieren 🔢]
  #v(20pt)
  #only("2-")[- Nenner multiplizieren 🔢]
  #v(20pt)
  #only("3-")[- Falls möglich, vereinfachen ✂️]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zur Multiplikation von Brüchen zusammenfassen. Zuerst multiplizieren wir die Zähler.")
  ]

  #only("2")[
    #voiceover("Dann multiplizieren wir die Nenner.")
  ]

  #only("3")[
    #voiceover("Schließlich vereinfachen wir den resultierenden Bruch, falls möglich. Denke daran, dass die Multiplikation von Brüchen oft zu einer kleineren Zahl führt, wie wir in unserer visuellen Darstellung gesehen haben.")
  ]
]