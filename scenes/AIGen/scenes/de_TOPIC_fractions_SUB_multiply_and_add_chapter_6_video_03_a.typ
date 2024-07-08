#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("1-")[#text(size: 24pt)[Übung: $3/8 + 1/8$]]
  #v(20pt)

  #only("2-")[#text(size: 20pt)[Schritt 1: Gemeinsamen Nenner finden]]
  #only("3-")[#text(size: 20pt)[Schritt 2: Zähler addieren]]
  #only("4-")[#text(size: 20pt)[Schritt 3: Vereinfachen, falls möglich]]

  #only("1")[
    #voiceover("Großartig! Du hast dieses Bruchadditionsproblem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Zuerst identifizieren wir den gemeinsamen Nenner. In diesem Fall haben beide Brüche bereits den gleichen Nenner von 8, also müssen wir keinen neuen finden.")
  ]

  #only("3")[
    #voiceover("Als nächstes addieren wir die Zähler, während der Nenner gleich bleibt. Drei Achtel plus ein Achtel ergibt vier Achtel.")
  ]

  #only("4")[
    #voiceover("Schließlich prüfen wir, ob wir das Ergebnis vereinfachen können. Vier Achtel können vereinfacht werden, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 4 ist, teilen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösung]
  #v(40pt)

  #only("1-")[$ 3/8 + 1/8 = 4/8 $]
  #v(20pt)

  #only("2-")[#align(center)[#text(fill:aqua)[⇓ Vereinfachen]]]
  #v(20pt)

  #only("3-")[$ 4/8 = 1/2 $]

  #only("1")[
    #voiceover("Lass uns die Lösung Schritt für Schritt ansehen. Wir beginnen mit drei Achteln plus ein Achtel, was vier Achtel ergibt.")
  ]

  #only("2")[
    #voiceover("Nun können wir diesen Bruch vereinfachen.")
  ]

  #only("3")[
    #voiceover("Vier Achtel vereinfacht sich zu ein Halb. Wir tun dies, indem wir sowohl den Zähler als auch den Nenner durch 4 teilen.")
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
    ax.pie([frac, 1-frac], labels=[label, ''], colors=['#ff9999', '#ffffff'], 
           wedgeprops={'edgecolor': 'black'}, startangle=90)
    ax.set_aspect('equal')

draw_pie(ax1, 3/8, '3/8')
draw_pie(ax2, 1/8, '1/8')
draw_pie(ax3, 1/2, '1/2')

ax1.set_title('Erster Bruch')
ax2.set_title('Zweiter Bruch')
ax3.set_title('Ergebnis')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung unserer Addition. Das erste Tortendiagramm zeigt drei Achtel, das zweite zeigt ein Achtel, und das dritte zeigt ihre Summe, die ein Halb ist. Diese visuelle Darstellung hilft uns zu sehen, wie sich die Brüche kombinieren und vereinfachen.")
  ]
]