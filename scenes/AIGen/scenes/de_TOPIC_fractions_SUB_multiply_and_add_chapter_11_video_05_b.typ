#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("1-")[Übung: $6/7 - 2/7$]
  #v(20pt)

  #only("2-")[Schritt 1: Gemeinsamen Nenner identifizieren]
  #v(10pt)
  #only("3-")[Schritt 2: Zähler subtrahieren]
  #v(10pt)
  #only("4-")[Schritt 3: Falls möglich, vereinfachen]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum $4/7$ die richtige Antwort ist.")
  ]

  #only("2")[
    #voiceover("Zuerst stellen wir fest, dass beide Brüche bereits einen gemeinsamen Nenner von 7 haben. Das macht unsere Subtraktion einfach.")
  ]

  #only("3")[
    #voiceover("Als nächstes subtrahieren wir die Zähler und behalten den Nenner bei. Also haben wir 6 minus 2 über 7.")
  ]

  #only("4")[
    #voiceover("Schließlich vereinfachen wir, falls möglich. In diesem Fall ergibt 6 minus 2 gleich 4, also ist unsere endgültige Antwort $4/7$. Der Bruch $4/7$ kann nicht weiter vereinfacht werden.")
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

# First fraction: 6/7
ax1.pie([6, 1], labels=['6/7', '1/7'], colors=['#ff9999','#ffffff'], startangle=90)
ax1.set_title('6/7')

# Second fraction: 2/7
ax2.pie([2, 5], labels=['2/7', '5/7'], colors=['#66b3ff','#ffffff'], startangle=90)
ax2.set_title('2/7')

# Result: 4/7
ax3.pie([4, 3], labels=['4/7', '3/7'], colors=['#99ff99','#ffffff'], startangle=90)
ax3.set_title('4/7 (Result)')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Subtraktion mit Tortendiagrammen visualisieren. Das erste Diagramm zeigt $6/7$, das zweite zeigt $2/7$ und das dritte zeigt unser Ergebnis, $4/7$.")
  ]

  #only("2")[
    #voiceover("Wie Du sehen kannst, wenn wir den $2/7$-Teil vom $6/7$-Teil abziehen, bleibt uns $4/7$.")
  ]

  #only("3")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum $6/7$ minus $2/7$ gleich $4/7$ ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte]
  #v(40pt)

  #only("1-")[- Gemeinsamer Nenner: 7 🔢]
  #v(20pt)
  #only("2-")[- Subtraktion: $6 - 2 = 4$ ➖]
  #v(20pt)
  #only("3-")[- Endgültige Antwort: $4/7$ ✅]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte dieses Problems zusammenfassen. Zuerst hatten wir einen gemeinsamen Nenner von 7, was unsere Subtraktion einfach machte.")
  ]

  #only("2")[
    #voiceover("Dann haben wir die Subtraktion im Zähler durchgeführt: 6 minus 2 ergibt 4.")
  ]

  #only("3")[
    #voiceover("Das gab uns unsere endgültige Antwort von $4/7$. Denke daran, wenn Du Brüche mit demselben Nenner subtrahierst, subtrahierst Du nur die Zähler und behältst den Nenner bei.")
  ]
]