#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Lösung richtig erkannt. Lass uns die Schritte gemeinsam durchgehen, um zu verstehen, warum $5/8 + 2/8 = 7/8$ die richtige Antwort ist.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche mit gemeinsamen Nennern addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Gegeben: $5/8 + 1/4$]
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem gegebenen Problem: fünf Achtel plus ein Viertel.")
  ]

  #only("3-")[
    #text(size: 24pt)[Schritt 1: Gemeinsamen Nenner finden]
  ]

  #only("3")[
    #voiceover("Der erste Schritt ist, einen gemeinsamen Nenner zu finden. Die Nenner sind 8 und 4. Das kleinste gemeinsame Vielfache von 8 und 4 ist 8, also verwenden wir 8 als gemeinsamen Nenner.")
  ]

  #only("4-")[
    #text(size: 24pt)[Schritt 2: $1/4$ in einen gleichwertigen Bruch umwandeln]
  ]

  #only("4")[
    #voiceover("Als nächstes müssen wir ein Viertel in einen gleichwertigen Bruch mit einem Nenner von 8 umwandeln. Wir tun dies, indem wir sowohl den Zähler als auch den Nenner mit 2 multiplizieren.")
  ]

  #only("5-")[
    #text(size: 24pt)[$ 1/4 = (1 dot 2)/(4 dot 2) = 2/8 $]
  ]

  #only("5")[
    #voiceover("Ein Viertel entspricht zwei Achteln. Wir multiplizieren sowohl den Zähler als auch den Nenner mit 2, was uns 2 Achtel ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Brüche addieren]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Schritt 3: Die Zähler addieren]
  ]

  #only("1")[
    #voiceover("Nun, da wir einen gemeinsamen Nenner haben, können wir die Zähler addieren und den Nenner beibehalten.")
  ]

  #only("2-")[
    #text(size: 24pt)[$ 5/8 + 2/8 = (5+2)/8 = 7/8 $]
  ]

  #only("2")[
    #voiceover("Fünf Achtel plus zwei Achtel ergibt sieben Achtel. Wir addieren 5 und 2 im Zähler, was uns 7 ergibt, und behalten den Nenner von 8 bei.")
  ]

  #only("3-")[
    #text(size: 24pt)[Endgültige Antwort: $7/8$]
  ]

  #only("3")[
    #voiceover("Also, unsere endgültige Antwort ist sieben Achtel.")
  ]

  #only("4-")[
    #text(size: 24pt)[Wichtiger Punkt: Beim Addieren von Brüchen mit demselben Nenner addiere die Zähler und behalte den Nenner bei.]
  ]

  #only("4")[
    #voiceover("Denke daran, beim Addieren von Brüchen mit demselben Nenner addieren wir die Zähler und behalten den Nenner bei. Deshalb ergibt $5/8 + 2/8 = 7/8$.")
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

def draw_pie(ax, frac, label):
    ax.pie([frac, 1-frac], colors=['#ff9999', '#ffffff'], 
           wedgeprops={'edgecolor': 'black', 'linewidth': 2}, 
           startangle=90)
    ax.set_title(label)

draw_pie(ax1, 5/8, '5/8')
draw_pie(ax2, 2/8, '2/8')
draw_pie(ax3, 7/8, '7/8')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Addition visualisieren. Der erste Kreis stellt fünf Achtel dar, der zweite stellt zwei Achtel dar, und der dritte zeigt ihre Summe, sieben Achtel. Beachte, wie sich die farbigen Teile im letzten Kreis addieren.")
  ]

  #only("2-")[
    #text(size: 24pt)[💡 Tipp: Das Visualisieren von Brüchen kann helfen, ihre Addition zu verstehen!]
  ]

  #only("2")[
    #voiceover("Das Visualisieren von Brüchen wie diesem kann wirklich helfen zu verstehen, wie sie sich addieren. Es macht das abstrakte Konzept konkreter und leichter verständlich.")
  ]
]