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
$7/8 times 4/9 = ?$
]

#v(20pt)

#only("2-")[
$7/8 times 4/9 = (7 dot 4)/(8 dot 9)$
]

#v(20pt)

#only("3-")[
$= 28/72$
]

#v(20pt)

#only("4-")[
$= 7/18$ (vereinfacht)
]

#only("1")[
#voiceover("Großartige Arbeit bei der Lösung dieses Multiplikationsproblems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit sieben Achteln multipliziert mit vier Neunteln.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 7 mit 4 im Zähler und 8 mit 9 im Nenner.")
]

#only("3")[
#voiceover("Das ergibt achtundzwanzig Zweiundsiebzigstel.")
]

#only("4")[
#voiceover("Wir können diesen Bruch vereinfachen, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 4 ist, teilen. Das ergibt unsere endgültige Antwort: sieben Achtzehntel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(20pt)

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
    ax.set_aspect('equal')
    ax.axis('off')

draw_fraction(ax1, 7, 8, 'skyblue')
ax1.set_title('7/8')

draw_fraction(ax2, 4, 9, 'lightgreen')
ax2.set_title('4/9')

draw_fraction(ax3, 7, 18, 'salmon')
ax3.set_title('7/18')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Brüche. Das erste Rechteck zeigt sieben Achtel, wobei sieben von acht Teilen schattiert sind.")
]

#only("2")[
#voiceover("Das zweite Rechteck repräsentiert vier Neuntel, wobei vier von neun Teilen schattiert sind.")
]

#only("3")[
#voiceover("Und das letzte Rechteck zeigt unser Ergebnis, sieben Achtzehntel. Beachte, dass es ein kleinerer Anteil ist als sieben Achtel, was Sinn ergibt, da wir mit einem Bruch kleiner als eins multiplizieren.")
]
]