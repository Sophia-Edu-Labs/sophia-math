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
    $5/8 times 7/9$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 7) / (8 dot 9)$
  ]

  #v(20pt)

  #only("3-")[
    $= 35 / 72$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Multiplikation von 5/8 und 7/9.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 5 mit 7 im Zähler und 8 mit 9 im Nenner.")
  ]

  #only("3")[
    #voiceover("Das ergibt 35 durch 72. Und das ist unsere endgültige Antwort! Keine Vereinfachung ist nötig, da 35 und 72 keine gemeinsamen Faktoren außer 1 haben.")
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
    ax.pie([numerator, denominator-numerator], colors=[color, 'white'], 
           startangle=90, counterclock=False)
    ax.add_artist(plt.Circle((0, 0), 0.7, color='white'))
    ax.text(0, 0, f'{numerator}/{denominator}', ha='center', va='center', fontsize=20)

draw_fraction(ax1, 5, 8, 'skyblue')
ax1.set_title('5/8', fontsize=16)

draw_fraction(ax2, 7, 9, 'lightgreen')
ax2.set_title('7/9', fontsize=16)

draw_fraction(ax3, 35, 72, 'lightcoral')
ax3.set_title('35/72', fontsize=16)

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
    )
  ]
]

#only("4")[
  #voiceover("Hier ist eine visuelle Darstellung unserer Brüche. Der erste Kreis zeigt 5/8, wobei 5 von 8 Teilen eingefärbt sind. Der zweite zeigt 7/9, wobei 7 von 9 Teilen eingefärbt sind. Der letzte Kreis stellt unser Ergebnis 35/72 dar, wobei 35 von 72 Teilen eingefärbt sind. Dies hilft uns zu visualisieren, wie das Produkt dieser Brüche zu einem kleineren Bruch des Ganzen führt.")
]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("5-")[- Zähler multiplizieren: $5 dot 7 = 35$]
  #v(20pt)
  #only("6-")[- Nenner multiplizieren: $8 dot 9 = 72$]
  #v(20pt)
  #only("7-")[- Ergebnis: $35/72$]

  #only("5")[
    #voiceover("Lass uns verstehen, warum diese Methode funktioniert. Wenn wir Brüche multiplizieren, fragen wir im Wesentlichen: Welcher Bruch des zweiten Bruchs wird durch den ersten Bruch dargestellt?")
  ]

  #only("6")[
    #voiceover("Wir multiplizieren die Zähler, um herauszufinden, wie viele Teile wir betrachten, und wir multiplizieren die Nenner, um herauszufinden, aus wie vielen Gesamteilen.")
  ]

  #only("7")[
    #voiceover("Das ergibt unser Ergebnis von 35/72. Denke daran, Übung macht den Meister! Arbeite weiter an diesen Aufgaben, um dein Verständnis der Bruchmultiplikation zu festigen.")
  ]
]