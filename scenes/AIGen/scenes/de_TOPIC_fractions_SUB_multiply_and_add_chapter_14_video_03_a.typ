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
    #text(size: 24pt)[Gegeben: $3/4$]
    #v(10pt)
    #text(size: 24pt)[Zielnenner: 16]
  ]

  #only("1")[
    #voiceover("Großartig! Du hast drei Viertel korrekt in einen Bruch mit dem Nenner 16 umgewandelt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2-")[
    #align(center)[#text(fill: aqua)[⇓ Finde den Multiplikator]]
  ]

  #only("3-")[
    $16 / 4 = 4$
  ]

  #only("2")[
    #voiceover("Um den Nenner von 4 auf 16 zu ändern, müssen wir herausfinden, mit welcher Zahl wir 4 multiplizieren, um 16 zu erhalten.")
  ]

  #only("3")[
    #voiceover("Wir teilen 16 durch 4, was uns 4 ergibt. Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit 4 multiplizieren.")
  ]

  #only("4-")[
    #align(center)[#text(fill: aqua)[⇓ Multipliziere sowohl den Zähler als auch den Nenner]]
  ]

  #only("5-")[
    $(3 * 4) / (4 * 4) = 12/16$
  ]

  #only("4")[
    #voiceover("Jetzt multiplizieren wir sowohl den Zähler als auch den Nenner mit 4.")
  ]

  #only("5")[
    #voiceover("Drei mal 4 ist 12, und 4 mal 4 ist 16. Also erhalten wir 12 Sechzehntel.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Äquivalente Brüche visualisiert]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

# 3/4 pie chart
sizes = [3, 1]
labels = ['3/4', '1/4']
colors = ['#ff9999', '#66b3ff']
ax1.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax1.set_title('3/4')

# 12/16 pie chart
sizes = [12, 4]
labels = ['12/16', '4/16']
colors = ['#ff9999', '#66b3ff']
ax2.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax2.set_title('12/16')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung der äquivalenten Brüche. Links haben wir drei Viertel, und rechts haben wir zwölf Sechzehntel. Wie Du sehen kannst, repräsentieren sie denselben Teil des Ganzen, nur in unterschiedliche Anzahl von Teilen aufgeteilt.")
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Wichtiger Punkt: $3/4 = 12/16$]
  ]

  #only("2")[
    #voiceover("Der wichtige Punkt, den Du dir merken solltest, ist, dass drei Viertel gleich zwölf Sechzehntel ist. Diese Brüche sind äquivalent, weil sie denselben Wert darstellen, nur mit unterschiedlichen Zahlen ausgedrückt.")
  ]
]