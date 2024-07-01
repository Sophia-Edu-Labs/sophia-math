#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektordimension]
  #v(40pt)

  #only("1-")[Gegebener Vektor: $v = (-2, 4, 3, -5)$]
  #v(20pt)

  #only("2-")[Dimension = Anzahl der Komponenten]
  #v(20pt)

  #only("3-")[Zähle die Komponenten: ]
  #only("3-")[1. $-2$]
  #only("4-")[2. $4$]
  #only("5-")[3. $3$]
  #only("6-")[4. $-5$]
  #v(20pt)

  #only("7-")[Daher, Dimension = 4]

  #only("1")[
    #voiceover("Großartig! Du hast die Dimension des Vektors korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Die Dimension eines Vektors ist einfach die Anzahl der Komponenten, die er hat.")
  ]

  #only("3")[
    #voiceover("Lass uns die Komponenten unseres Vektors zählen. Die erste Komponente ist minus zwei.")
  ]

  #only("4")[
    #voiceover("Die zweite Komponente ist vier.")
  ]

  #only("5")[
    #voiceover("Die dritte Komponente ist drei.")
  ]

  #only("6")[
    #voiceover("Und die vierte Komponente ist minus fünf.")
  ]

  #only("7")[
    #voiceover("Wir haben insgesamt vier Komponenten gezählt. Daher ist die Dimension dieses Vektors 4.")
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

fig, ax = plt.subplots()

vector = [-2, 4, 3, -5]
x = np.arange(1, len(vector) + 1)

ax.stem(x, vector, linefmt='C0-', markerfmt='C0o', bottom=0)
ax.axhline(y=0, color='k', linestyle='--', linewidth=0.5)

ax.set_xticks(x)
ax.set_xticklabels(['1st', '2nd', '3rd', '4th'])
ax.set_xlabel('Component')
ax.set_ylabel('Value')
ax.set_title('Vector Components')

for i, v in enumerate(vector):
    ax.text(i+1, v, f' {v}', verticalalignment='bottom')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung unseres Vektors. Jeder Stiel repräsentiert eine Komponente des Vektors.")
  ]

  #only("2")[
    #voiceover("Wie wir sehen können, gibt es vier Stiele, die den vier Komponenten unseres Vektors entsprechen.")
  ]

  #only("3")[
    #voiceover("Diese Darstellung zeigt deutlich, warum die Dimension des Vektors 4 ist - es ist die Anzahl der verschiedenen Komponenten oder Koordinaten, die benötigt werden, um den Vektor zu spezifizieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bedeutung der Dimension]
  #v(40pt)

  #only("1-")[- Bestimmt den Raum, in dem der Vektor lebt 🌌]
  #v(20pt)

  #only("2-")[- Für diesen Vektor: 4D Raum 🚀]
  #v(20pt)

  #only("3-")[- Jede Komponente repräsentiert eine Richtung 🧭]
  #v(20pt)

  #only("4-")[- Wichtig für Operationen wie:
    - Addition ➕
    - Skalarprodukt 🔢
    - Lineare Transformationen 🔄]

  #only("1")[
    #voiceover("Das Verständnis der Dimension eines Vektors ist entscheidend, weil es uns etwas über den Raum sagt, in dem der Vektor existiert.")
  ]

  #only("2")[
    #voiceover("Unser Vektor mit einer Dimension von 4 existiert in einem vierdimensionalen Raum. Auch wenn wir dies nicht direkt visualisieren können, ist es ein wichtiges Konzept in der höheren Mathematik und Physik.")
  ]

  #only("3")[
    #voiceover("Jede Komponente des Vektors repräsentiert eine Richtung in diesem 4D-Raum, genau wie x-, y- und z-Komponenten Richtungen im 3D-Raum repräsentieren.")
  ]

  #only("4")[
    #voiceover("Die Dimension ist entscheidend für verschiedene Vektoroperationen. Zum Beispiel kannst du nur Vektoren derselben Dimension addieren, und das Skalarprodukt ist nur für Vektoren mit derselben Anzahl von Komponenten definiert. Es ist auch wichtig für das Verständnis linearer Transformationen.")
  ]
]