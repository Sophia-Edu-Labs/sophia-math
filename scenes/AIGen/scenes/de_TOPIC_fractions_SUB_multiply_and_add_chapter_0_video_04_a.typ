#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplikation von Brüchen]
  #v(40pt)

  #only("1-")[
    $5/6 times 3/7$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 3)/(6 dot 7)$
  ]

  #v(20pt)

  #only("3-")[
    $= 15/42$
  ]

  #v(20pt)

  #only("4-")[
    $= 5/14$ (vereinfacht)
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Multiplikation von 5/6 und 3/7.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 5 mit 3 im Zähler und 6 mit 7 im Nenner.")
  ]

  #only("3")[
    #voiceover("Das ergibt 15 über 42.")
  ]

  #only("4")[
    #voiceover("Wir können diesen Bruch vereinfachen, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 3 ist, teilen. 15 geteilt durch 3 ist 5, und 42 geteilt durch 3 ist 14. Also ist unsere endgültige, vereinfachte Antwort 5/14.")
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

def create_fraction_rectangle(ax, x, y, width, height, numerator, denominator, color):
    rect = plt.Rectangle((x, y), width, height, fill=False, edgecolor=color)
    ax.add_patch(rect)
    for i in range(1, denominator):
        ax.plot([x, x+width], [y+i*height/denominator, y+i*height/denominator], color=color, linestyle='--')
    for i in range(numerator):
        rect = plt.Rectangle((x, y+i*height/denominator), width, height/denominator, facecolor=color, alpha=0.3)
        ax.add_patch(rect)
    ax.text(x+width/2, y-0.05, f'{numerator}/{denominator}', ha='center', va='top')

fig, ax = plt.subplots(figsize=(10, 5))
ax.set_xlim(0, 3)
ax.set_ylim(0, 1)
ax.axis('off')

create_fraction_rectangle(ax, 0.1, 0.1, 0.8, 0.8, 5, 6, 'blue')
create_fraction_rectangle(ax, 1.1, 0.1, 0.8, 0.8, 3, 7, 'red')
create_fraction_rectangle(ax, 2.1, 0.1, 0.8, 0.8, 5, 14, 'green')

ax.text(1, 0.95, '×', ha='center', va='center', fontsize=20)
ax.text(2, 0.95, '=', ha='center', va='center', fontsize=20)

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
  #voiceover("Hier ist eine visuelle Darstellung unserer Bruchmultiplikation. Das blaue Rechteck stellt 5/6 dar, wobei 5 von 6 Teilen schattiert sind.")
]

#only("2")[
  #voiceover("Das rote Rechteck stellt 3/7 dar, wobei 3 von 7 Teilen schattiert sind.")
]

#only("3")[
  #voiceover("Wenn wir diese Brüche multiplizieren, erhalten wir 5/14, dargestellt durch das grüne Rechteck. Beachte, wie 5 von 14 Teilen schattiert sind, was unserer endgültigen Antwort entspricht.")
]

#only("4")[
  #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum die Multiplikation von Brüchen zu einem kleineren Bruch des Ganzen führt. Wir nehmen im Wesentlichen einen Bruch eines Bruchs.")
]]