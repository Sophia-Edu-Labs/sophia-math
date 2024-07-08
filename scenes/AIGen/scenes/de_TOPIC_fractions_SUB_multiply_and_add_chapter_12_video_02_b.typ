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
$3/4 times 5/6 = ?$
]

#v(20pt)

#only("2-")[
$3/4 times 5/6 = (3 times 5)/(4 times 6)$
]

#v(20pt)

#only("3-")[
$= 15/24$
]

#v(20pt)

#only("4-")[
$= 5/8$ (vereinfacht)
]

#only("1")[
#voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Lass uns mit drei Viertel mal fünf Sechstel beginnen.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 3 mit 5 im Zähler und 4 mit 6 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt fünfzehn Vierundzwanzigstel. Das ist unsere korrekte Antwort, aber wir können sie weiter vereinfachen.")
]

#only("4")[
#voiceover("Um zu vereinfachen, teilen wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 3 ist. Das ergibt unsere endgültige vereinfachte Antwort: fünf Achtel.")
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
                                 facecolor=color, alpha=0.5)
            ax.add_patch(rect)
    
    ax.text(0.5, -0.1, f'{numerator}/{denominator}', ha='center', va='center', fontsize=12)

draw_fraction(ax1, 3, 4, 'red')
ax1.set_title('3/4', fontsize=14)

draw_fraction(ax2, 5, 6, 'blue')
ax2.set_title('5/6', fontsize=14)

draw_fraction(ax3, 5, 8, 'purple')
ax3.set_title('5/8 (result)', fontsize=14)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Lass uns unsere Brüche visualisieren. Hier haben wir drei Viertel in Rot dargestellt.")
]

#only("2")[
#voiceover("Und hier sind fünf Sechstel in Blau.")
]

#only("3")[
#voiceover("Wenn wir diese Brüche multiplizieren, erhalten wir fünf Achtel, hier in Lila dargestellt.")
]

#only("4")[
#voiceover("Beachte, dass der resultierende Bruch kleiner ist als beide ursprünglichen Brüche. Das liegt daran, dass wir einen Bruch eines Bruchs finden, was zu einer kleineren Menge führt.")
]
]