#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider ist das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum $2/4$ oder $1/2$ die richtige Antwort ist.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Problem: $3/4 - 1/4$]
  ]

  #only("2")[
    #voiceover("Unser Problem ist es, ein Viertel von drei Vierteln zu subtrahieren.")
  ]

  #only("3-")[
    - Gleicher Nenner ✅
  ]

  #only("3")[
    #voiceover("Zuerst bemerken wir, dass beide Brüche den gleichen Nenner haben, nämlich 4. Das ist großartig, weil wir die Zähler direkt subtrahieren können.")
  ]

  #only("4-")[
    - Zähler subtrahieren: $3 - 1 = 2$
  ]

  #only("4")[
    #voiceover("Also subtrahieren wir einfach die Zähler: Drei minus Eins ergibt Zwei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösung]
  #v(40pt)

  #only("1-")[
    $3/4 - 1/4 = 2/4$
  ]

  #only("1")[
    #voiceover("Das gibt uns das Ergebnis: Drei Viertel minus ein Viertel ergibt zwei Viertel.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Vereinfachen]]
  ]

  #only("2")[
    #voiceover("Nun können wir diesen Bruch weiter vereinfachen.")
  ]

  #only("3-")[
    $2/4 = 1/2$
  ]

  #only("3")[
    #voiceover("Zwei Viertel können zu ein Halb vereinfacht werden, indem wir sowohl den Zähler als auch den Nenner durch 2 teilen.")
  ]

  #only("4-")[
    - Sowohl $2/4$ als auch $1/2$ sind korrekt ✅
  ]

  #only("4")[
    #voiceover("Also sind sowohl zwei Viertel als auch ein Halb korrekte Antworten auf dieses Problem. Sie repräsentieren denselben Wert, nur anders ausgedrückt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visuelle Darstellung]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

def draw_pie(ax, sizes, colors, labels):
    ax.pie(sizes, colors=colors, labels=labels, autopct='%1.1f%%', startangle=90)
    ax.axis('equal')

# 3/4
draw_pie(ax1, [3, 1], ['#ff9999','#ffffff'], ['3/4', ''])
ax1.set_title('3/4')

# 1/4
draw_pie(ax2, [1, 3], ['#ffcc99','#ffffff'], ['1/4', ''])
ax2.set_title('1/4')

# 2/4 or 1/2
draw_pie(ax3, [2, 2], ['#99ff99','#ffffff'], ['2/4 or 1/2', ''])
ax3.set_title('2/4 or 1/2')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Subtraktion mit Tortendiagrammen visualisieren. Das erste Diagramm zeigt drei Viertel, das zweite ein Viertel und das dritte das Ergebnis: zwei Viertel oder ein Halb.")
  ]

  #only("2")[
    #voiceover("Wie du sehen kannst, wenn wir das ein Viertel Stück vom drei Viertel Kuchen abziehen, bleibt uns zwei Viertel, was gleichbedeutend mit ein Halb des ganzen Kuchens ist.")
  ]

  #only("3")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum zwei Viertel und ein Halb beide korrekte Antworten auf unser Subtraktionsproblem sind.")
  ]
]