#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche ändern: Gleicher Wert, anderes Aussehen]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 1/2 = ?/4 $]
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir ein Halb in einen äquivalenten Bruch mit einem Nenner von 4 umwandeln.")
  ]

  #only("2-")[
    #align(center)[#text(fill: aqua)[⇓ Zähler und Nenner mit 2 multiplizieren]]
  ]

  #only("2")[
    #voiceover("Der Schlüssel zum Ändern von Brüchen, während ihr Wert gleich bleibt, besteht darin, sowohl den Zähler als auch den Nenner mit derselben Zahl zu multiplizieren. In diesem Fall müssen wir mit 2 multiplizieren, um von 2 auf 4 im Nenner zu kommen.")
  ]

  #only("3-")[
    #align(center)[$ (1 dot 2)/(2 dot 2) = 2/4 $]
  ]

  #only("3")[
    #voiceover("Also multiplizieren wir sowohl den Zähler als auch den Nenner von ein Halb mit 2. Das ergibt 1 mal 2 über 2 mal 2, was 2 über 4 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("1-")[
    - Multiplikation mit 1 ändert den Wert nicht
  ]

  #only("1")[
    #voiceover("Diese Methode funktioniert, weil wir im Wesentlichen den Bruch mit 1 multiplizieren, was seinen Wert nicht ändert.")
  ]

  #only("2-")[
    - $2/2 = 1$
  ]

  #only("2")[
    #voiceover("Denke daran, 2 geteilt durch 2 ergibt 1.")
  ]

  #only("3-")[
    - $1/2 dot 2/2 = 2/4$
  ]

  #only("3")[
    #voiceover("Also, ein Halb mal zwei Halbe ergibt zwei Viertel. Wir haben die Form des Bruchs geändert, ohne seinen Wert zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Äquivalenz visualisieren]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# First pie chart
ax1.pie([1, 1], labels=['1/2', '1/2'], colors=['skyblue', 'lightgray'], autopct='%1.1f%%', startangle=90)
ax1.set_title('1/2')

# Second pie chart
ax2.pie([1, 1, 1, 1], labels=['1/4', '1/4', '1/4', '1/4'], colors=['skyblue', 'skyblue', 'lightgray', 'lightgray'], autopct='%1.1f%%', startangle=90)
ax2.set_title('2/4')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Äquivalenz visualisieren. Links haben wir ein Tortendiagramm, das ein Halb darstellt. Rechts haben wir ein weiteres Tortendiagramm, das in Viertel unterteilt ist, wobei zwei Teile schattiert sind. Beide repräsentieren die gleiche Menge, nur unterschiedlich aufgeteilt.")
  ]

  #only("2")[
    #voiceover("Diese visuelle Darstellung hilft uns zu sehen, dass ein Halb und zwei Viertel tatsächlich die gleiche Menge sind, nur unterschiedlich ausgedrückt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Äquivalente Brüche haben den gleichen Wert 🟰
  ]

  #only("1")[
    #voiceover("Die wichtigste Erkenntnis hier ist, dass äquivalente Brüche den gleichen Wert haben, auch wenn sie unterschiedlich aussehen.")
  ]

  #only("2-")[
    - Zähler und Nenner mit derselben Zahl multiplizieren ✖️
  ]

  #only("2")[
    #voiceover("Um einen äquivalenten Bruch zu erstellen, multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl.")
  ]

  #only("3-")[
    - Diese Fähigkeit ist entscheidend für das Addieren und Subtrahieren von Brüchen 🧮
  ]

  #only("3")[
    #voiceover("Diese Fähigkeit, Nenner zu ändern, ist entscheidend, wenn du Brüche mit unterschiedlichen Nennern addieren oder subtrahieren musst. Großartige Arbeit beim Meistern dieses wichtigen Konzepts!")
  ]
]