#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider ist das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum 3/4 die richtige Antwort ist.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche addieren: 1/4 + 2/4]
  #v(40pt)

  #only("2-")[
    $1/4 + 2/4$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem Problem: ein Viertel plus zwei Viertel.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Nenner überprüfen]]
  ]

  #only("3")[
    #voiceover("Zuerst überprüfen wir die Nenner. In diesem Fall haben beide Brüche bereits den gleichen Nenner von 4, daher müssen wir keinen gemeinsamen Nenner finden.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Zähler addieren]]
  ]

  #only("4")[
    #voiceover("Wenn Brüche den gleichen Nenner haben, können wir sie addieren, indem wir einfach ihre Zähler addieren und den Nenner gleich lassen.")
  ]

  #only("5-")[
    $(1 + 2)/4$
  ]

  #only("5")[
    #voiceover("Also addieren wir 1 und 2 im Zähler, während wir den Nenner von 4 beibehalten.")
  ]

  #only("6-")[
    $= 3/4$
  ]

  #only("6")[
    #voiceover("Das ergibt 3/4 als unser Endergebnis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Addition visualisieren]
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

# First fraction: 1/4
ax1.pie([1, 3], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('1/4')

# Second fraction: 2/4
ax2.pie([2, 2], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax2.set_title('2/4')

# Result: 3/4
ax3.pie([3, 1], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax3.set_title('3/4')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Addition mit Tortendiagrammen visualisieren. Das erste Diagramm zeigt ein Viertel, das zweite zeigt zwei Viertel, und das dritte zeigt ihre Summe, drei Viertel.")
  ]

  #only("2")[
    #voiceover("Wie Du sehen kannst, wenn wir die schattierten Bereiche aus den ersten beiden Diagrammen kombinieren, erhalten wir den schattierten Bereich im dritten Diagramm, der drei Viertel darstellt.")
  ]

  #only("3")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum die Addition von 1/4 und 2/4 zu 3/4 führt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte zum Merken]
  #v(40pt)

  #only("1-")[
    - Gleiche Nenner: Nur Zähler addieren 🔢
  ]

  #only("1")[
    #voiceover("Beim Addieren von Brüchen mit dem gleichen Nenner müssen wir nur die Zähler addieren. Der Nenner bleibt gleich.")
  ]

  #only("2-")[
    - Wenn möglich, vereinfachen ✂️
  ]

  #only("2")[
    #voiceover("Überprüfe immer, ob Du Dein Endergebnis vereinfachen kannst. In diesem Fall ist 3/4 bereits in seiner einfachsten Form.")
  ]

  #only("3-")[
    - Visualisieren, um zu verstehen 👁️
  ]

  #only("3")[
    #voiceover("Das Visualisieren von Brüchen, wie wir es mit den Tortendiagrammen gemacht haben, kann Dir helfen, Deine Berechnungen zu verstehen und zu überprüfen.")
  ]
]