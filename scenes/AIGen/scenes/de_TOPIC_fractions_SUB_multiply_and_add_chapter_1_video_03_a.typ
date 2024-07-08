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
    $5/9 times 2/3$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 2) / (9 dot 3)$
  ]

  #v(20pt)

  #only("3-")[
    $= 10 / 27$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast diese Brüche korrekt multipliziert. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 5 mit 2 im Zähler und 9 mit 3 im Nenner.")
  ]

  #only("3")[
    #voiceover("Das ergibt 10 durch 27. Und das ist unser Endergebnis! 10/27 ist das korrekte Ergebnis der Multiplikation von 5/9 mit 2/3.")
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

def draw_rectangle(ax, x, y, width, height, color):
    rect = plt.Rectangle((x, y), width, height, facecolor=color, edgecolor='black')
    ax.add_patch(rect)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 5/9
draw_rectangle(ax1, 0, 0, 3, 3, 'white')
draw_rectangle(ax1, 0, 0, 3, 5/3, 'lightblue')
ax1.set_xlim(0, 3)
ax1.set_ylim(0, 3)
ax1.set_title('5/9')
ax1.axis('off')

# Second fraction: 2/3
draw_rectangle(ax2, 0, 0, 3, 3, 'white')
draw_rectangle(ax2, 0, 0, 2, 3, 'lightgreen')
ax2.set_xlim(0, 3)
ax2.set_ylim(0, 3)
ax2.set_title('2/3')
ax2.axis('off')

# Result: 10/27
draw_rectangle(ax3, 0, 0, 9, 3, 'white')
draw_rectangle(ax3, 0, 0, 10/3, 3, 'lightyellow')
ax3.set_xlim(0, 9)
ax3.set_ylim(0, 3)
ax3.set_title('10/27')
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
    #voiceover("Lass uns diese Multiplikation visualisieren. Das erste Rechteck stellt 5/9 dar, wobei 5 von 9 Teilen gefüllt sind.")
  ]

  #only("2")[
    #voiceover("Das zweite Rechteck zeigt 2/3, wobei 2 von 3 Teilen gefüllt sind.")
  ]

  #only("3")[
    #voiceover("Wenn wir diese Brüche multiplizieren, nehmen wir im Wesentlichen 2/3 von 5/9. Das Ergebnis, 10/27, wird im dritten Rechteck dargestellt. Wie du sehen kannst, ist es ein kleinerer Teil, was Sinn macht, da wir zwei Brüche multiplizieren, die kleiner als 1 sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("1-")[- Zähler multiplizieren: $5 times 2 = 10$]
  #v(20pt)
  #only("2-")[- Nenner multiplizieren: $9 times 3 = 27$]
  #v(20pt)
  #only("3-")[- Ergebnis: $10/27$]

  #only("1")[
    #voiceover("Lass uns verstehen, warum diese Methode funktioniert. Zuerst multiplizieren wir die Zähler. 5 mal 2 ergibt 10.")
  ]

  #only("2")[
    #voiceover("Dann multiplizieren wir die Nenner. 9 mal 3 ergibt 27.")
  ]

  #only("3")[
    #voiceover("Das ergibt unser Ergebnis von 10/27. Diese Methode funktioniert, weil wir beim Multiplizieren von Brüchen im Wesentlichen einen Bruch eines Bruchs finden, was zu einem kleineren Teil des Ganzen führt.")
  ]
]