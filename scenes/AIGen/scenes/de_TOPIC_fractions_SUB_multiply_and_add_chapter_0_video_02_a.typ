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
$3/4 times 2/5 = ?$
]

#v(20pt)

#only("2-")[
$= (3 dot 2) / (4 dot 5)$
]

#v(20pt)

#only("3-")[
$= 6 / 20$
]

#v(20pt)

#only("4-")[
$= 3 / 10$ (vereinfacht)
]

#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit unserem Problem: drei Viertel mal zwei Fünftel.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 3 mit 2 für den neuen Zähler und 4 mit 5 für den neuen Nenner.")
]

#only("3")[
#voiceover("Das ergibt sechs Zwanzigstel.")
]

#only("4")[
#voiceover("Jetzt können wir diesen Bruch vereinfachen. Sowohl 6 als auch 20 sind durch 2 teilbar, also teilen wir sowohl den Zähler als auch den Nenner durch 2. Das gibt uns unsere endgültige Antwort: drei Zehntel.")
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
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_aspect('equal')
    ax.axis('off')
    
    for i in range(denominator):
        rect = plt.Rectangle((i/denominator, 0), 1/denominator, 1, 
                             fill=False, edgecolor='black')
        ax.add_patch(rect)
        if i < numerator:
            rect = plt.Rectangle((i/denominator, 0), 1/denominator, 1, 
                                 fill=True, facecolor=color, alpha=0.5)
            ax.add_patch(rect)
    
    ax.text(0.5, -0.1, f'{numerator}/{denominator}', ha='center', va='center', fontsize=14)

draw_fraction(ax1, 3, 4, 'blue')
ax1.set_title('3/4', fontsize=16)

draw_fraction(ax2, 2, 5, 'red')
ax2.set_title('2/5', fontsize=16)

draw_fraction(ax3, 3, 10, 'purple')
ax3.set_title('3/10', fontsize=16)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Lass uns unsere Brüche visualisieren. Hier haben wir drei Viertel, dargestellt durch das blaue Rechteck,")
]

#only("2")[
#voiceover("zwei Fünftel, dargestellt durch das rote Rechteck,")
]

#only("3")[
#voiceover("und unser Ergebnis, drei Zehntel, dargestellt durch das violette Rechteck.")
]

#only("4")[
#voiceover("Beachte, wie die Fläche des violetten Rechtecks tatsächlich das Produkt der Flächen der blauen und roten Rechtecke ist.")
]
]