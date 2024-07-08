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
    $6/7 \times 2/3$
  ]

  #v(20pt)

  #only("2-")[
    $= (6 \cdot 2) / (7 \cdot 3)$
  ]

  #v(20pt)

  #only("3-")[
    $= 12 / 21$
  ]

  #v(20pt)

  #only("4-")[
    $= 4 / 7$ (vereinfacht)
  ]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit sechs Siebtel mal zwei Drittel.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 6 mit 2 im Zähler und 7 mit 3 im Nenner.")
  ]

  #only("3")[
    #voiceover("Das ergibt zwölf Einundzwanzigstel.")
  ]

  #only("4")[
    #voiceover("Wir können diesen Bruch vereinfachen, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 3 ist, teilen. Zwölf geteilt durch 3 ist 4, und einundzwanzig geteilt durch 3 ist 7. Also ist unsere endgültige, vereinfachte Antwort vier Siebtel.")
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

def draw_fraction(ax, numerator, denominator, color):
    parts = np.linspace(0, 1, denominator+1)
    for i in range(numerator):
        ax.add_patch(plt.Rectangle((parts[i], 0), 1/denominator, 1, 
                                   facecolor=color, edgecolor='black'))
    for i in range(denominator):
        ax.axvline(parts[i+1], color='black', linewidth=0.5)
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.axis('off')

draw_fraction(ax1, 6, 7, 'skyblue')
ax1.set_title('6/7')

draw_fraction(ax2, 2, 3, 'lightgreen')
ax2.set_title('2/3')

draw_fraction(ax3, 4, 7, 'salmon')
ax3.set_title('4/7')

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

#only("1")[
  #voiceover("Lass uns diese Brüche visualisieren. Das erste Rechteck stellt sechs Siebtel dar, wobei sechs von sieben Teilen schattiert sind.")
]

#only("2")[
  #voiceover("Das zweite Rechteck zeigt zwei Drittel, wobei zwei von drei Teilen schattiert sind.")
]

#only("3")[
  #voiceover("Wenn wir diese Brüche multiplizieren, erhalten wir vier Siebtel, wie im dritten Rechteck gezeigt. Dies entspricht zwölf Einundzwanzigstel, aber vereinfacht.")
]

#only("4")[
  #voiceover("Diese visuelle Darstellung hilft uns zu sehen, wie das Multiplizieren von Brüchen zu einem Bruch der ursprünglichen Brüche führt, weshalb unsere Antwort kleiner ist als sowohl sechs Siebtel als auch zwei Drittel.")
]]