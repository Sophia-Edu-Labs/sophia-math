#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Äquivalente Brüche]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $4/5 = ?/20$
    ]
  ]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, warum $16/20$ äquivalent zu $4/5$ ist.")
  ]

  #only("2-")[
    #align(center)[
      $4/5 = (4 dot ?)/(5 dot ?)$
    ]
  ]

  #only("2")[
    #voiceover("Um $4/5$ in einen äquivalenten Bruch mit dem Nenner 20 zu ändern, müssen wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren. Überlege, mit welcher Zahl wir 5 multiplizieren müssen, um 20 zu erhalten.")
  ]

  #only("3-")[
    #align(center)[
      $4/5 = (4 dot 4)/(5 dot 4) = 16/20$
    ]
  ]

  #only("3")[
    #voiceover("Wir sehen, dass 5 mal 4 gleich 20 ist. Also multiplizieren wir sowohl den Zähler als auch den Nenner mit 4. Das ergibt $16/20$, was unsere Antwort ist.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Warum das funktioniert]
  #v(40pt)

  #only("1-")[
    - Multiplikation mit 1 ändert den Wert nicht
  ]

  #only("1")[
    #voiceover("Diese Methode funktioniert, weil wir im Grunde den Bruch mit 1 multiplizieren, was seinen Wert nicht ändert.")
  ]

  #only("2-")[
    - $4/4 = 1$
  ]

  #only("2")[
    #voiceover("Denke daran, $4/4$ ergibt 1.")
  ]

  #only("3-")[
    - $4/5 dot 4/4 = 16/20$
  ]

  #only("3")[
    #voiceover("Wenn wir also $4/5$ mit $4/4$ multiplizieren, multiplizieren wir mit 1, was uns einen äquivalenten Bruch, $16/20$, ergibt.")
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# First fraction
ax1.pie([4, 1], labels=['4/5', '1/5'], colors=['#ff9999','#66b3ff'], autopct='%1.1f%%', startangle=90)
ax1.set_title('4/5')

# Second fraction
ax2.pie([16, 4], labels=['16/20', '4/20'], colors=['#ff9999','#66b3ff'], autopct='%1.1f%%', startangle=90)
ax2.set_title('16/20')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung beider Brüche. Wie du sehen kannst, repräsentieren $4/5$ und $16/20$ denselben Teil des Ganzen, nur in unterschiedliche Anzahlen von Teilen aufgeteilt.")
  ]

  #only("2")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, dass obwohl die Zahlen unterschiedlich sind, die Brüche äquivalent sind, weil sie denselben Anteil darstellen.")
  ]

  #only("3")[
    #voiceover("Denke daran, wann immer du einen Bruch in einen äquivalenten Bruch mit einem anderen Nenner ändern musst, multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl. Das stellt sicher, dass der Wert des Bruchs unverändert bleibt.")
  ]
]