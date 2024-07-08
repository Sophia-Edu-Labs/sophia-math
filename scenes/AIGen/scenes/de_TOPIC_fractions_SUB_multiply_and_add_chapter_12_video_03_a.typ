#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche ändern]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Ursprünglicher Bruch: $2/3$]
  ]

  #only("2-")[
    #text(size: 24pt)[Zielnenner: $9$]
  ]

  #only("3-")[
    #text(size: 24pt)[Multipliziere sowohl Zähler als auch Nenner mit $3$:]
  ]

  #only("4-")[
    $2/3 = (2 dot 3)/(3 dot 3) = 6/9$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast zwei Drittel korrekt in einen Bruch mit dem Nenner 9 umgewandelt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, zwei Drittel, und wollen ihn in einen äquivalenten Bruch mit dem Nenner 9 umwandeln.")
  ]

  #only("3")[
    #voiceover("Dazu müssen wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren. Diese Zahl finden wir, indem wir unseren Zielnenner, 9, durch unseren aktuellen Nenner, 3, teilen.")
  ]

  #only("4")[
    #voiceover("Neun geteilt durch drei ergibt drei. Also multiplizieren wir sowohl den Zähler als auch den Nenner mit 3. Zwei mal drei ist sechs, und drei mal drei ist neun. Daher ist zwei Drittel gleich sechs Neuntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung der Äquivalenz]
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

# First pie chart for 2/3
sizes1 = [2, 1]
labels1 = ['2/3', '1/3']
colors1 = ['#ff9999', '#66b3ff']
ax1.pie(sizes1, labels=labels1, colors=colors1, autopct='%1.1f%%', startangle=90)
ax1.set_title('2/3')

# Second pie chart for 6/9
sizes2 = [6, 3]
labels2 = ['6/9', '3/9']
colors2 = ['#ff9999', '#66b3ff']
ax2.pie(sizes2, labels=labels2, colors=colors2, autopct='%1.1f%%', startangle=90)
ax2.set_title('6/9')

plt.suptitle('Equivalent Fractions: 2/3 = 6/9', fontsize=16)
plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns visualisieren, warum zwei Drittel und sechs Neuntel äquivalent sind. Hier haben wir zwei Tortendiagramme. Das linke zeigt zwei Drittel, während das rechte sechs Neuntel darstellt.")
  ]

  #only("2")[
    #voiceover("Wie du sehen kannst, zeigen beide Diagramme denselben Anteil des Ganzen, nur in unterschiedliche Anzahl von Teilen aufgeteilt. Diese visuelle Darstellung hilft uns zu verstehen, dass diese Brüche tatsächlich äquivalent sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Um den Nenner eines Bruchs zu ändern, multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl 🔢
  ]

  #only("2-")[
    - Der resultierende Bruch ist äquivalent zum ursprünglichen 🟰
  ]

  #only("3-")[
    - Dieser Prozess wird "Erweitern" oder "Skalieren" eines Bruchs genannt ⚖️
  ]

  #only("1")[
    #voiceover("Fassen wir zusammen, was wir gelernt haben. Erstens, um den Nenner eines Bruchs zu ändern und seinen Wert beizubehalten, multiplizieren wir sowohl den Zähler als auch den Nenner mit derselben Zahl.")
  ]

  #only("2")[
    #voiceover("Das führt zu einem neuen Bruch, der äquivalent zum ursprünglichen ist. In unserem Fall ist zwei Drittel äquivalent zu sechs Neuntel.")
  ]

  #only("3")[
    #voiceover("Dieser Prozess wird oft als 'Erweitern' oder 'Skalieren' eines Bruchs bezeichnet. Es ist ein grundlegendes Konzept im Umgang mit Brüchen und kann in vielen mathematischen Operationen sehr nützlich sein.")
  ]
]