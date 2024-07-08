#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit gemeinsamen Nennern addieren]
  #v(40pt)

  #only("1-")[#text(size: 24pt)[Übung: Addiere 1/6 und 1/3]]
  #v(20pt)

  #only("2-")[#text(size: 20pt)[Schritt 1: Brüche auf gemeinsamen Nenner bringen]]
  #v(10pt)
  #only("3-")[$ 1/6 + 1/3 = 1/6 + 2/6 $]
  
  #only("4-")[#text(size: 20pt)[Schritt 2: Zähler addieren]]
  #v(10pt)
  #only("5-")[$ 1/6 + 2/6 = 3/6 $]
  
  #only("6-")[#text(size: 20pt)[Schritt 3: Vereinfachen (falls möglich)]]
  #v(10pt)
  #only("7-")[$ 3/6 = 1/2 $]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Der erste Schritt beim Addieren von Brüchen ist sicherzustellen, dass sie einen gemeinsamen Nenner haben. In diesem Fall müssen wir ein Drittel in einen Bruch mit dem Nenner 6 umwandeln.")
  ]

  #only("3")[
    #voiceover("Ein Drittel entspricht zwei Sechsteln. Das sehen wir, indem wir sowohl den Zähler als auch den Nenner mit 2 multiplizieren. Unser Problem wird also zu ein Sechstel plus zwei Sechstel.")
  ]

  #only("4")[
    #voiceover("Jetzt, da wir einen gemeinsamen Nenner haben, können wir die Brüche addieren, indem wir einfach die Zähler addieren.")
  ]

  #only("5")[
    #voiceover("Ein Sechstel plus zwei Sechsteln ergibt drei Sechstel.")
  ]

  #only("6")[
    #voiceover("Der letzte Schritt ist zu prüfen, ob wir unser Ergebnis vereinfachen können.")
  ]

  #only("7")[
    #voiceover("Drei Sechstel können vereinfacht werden, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 3 ist, teilen. Das ergibt ein Halb als unser Endergebnis.")
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

# First fraction: 1/6
ax1.pie([1, 5], labels=['1/6', ''], colors=['#ff9999', '#eeeeee'], startangle=90)
ax1.set_title('1/6')

# Second fraction: 1/3 (or 2/6)
ax2.pie([2, 4], labels=['1/3', ''], colors=['#66b3ff', '#eeeeee'], startangle=90)
ax2.set_title('1/3 (2/6)')

# Sum: 1/2
ax3.pie([1, 1], labels=['1/2', ''], colors=['#99ff99', '#eeeeee'], startangle=90)
ax3.set_title('Sum: 1/2')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Lass uns unsere Brüche und ihre Summe visualisieren. Der erste Kreis repräsentiert ein Sechstel, dargestellt in Pink. Der zweite Kreis repräsentiert ein Drittel, oder zwei Sechstel, dargestellt in Blau. Wenn wir diese zusammenzählen, erhalten wir ein Halb, dargestellt durch den grünen Halbkreis im dritten Diagramm.")
  ]

  #only("2")[
    #voiceover("Diese visuelle Darstellung hilft uns zu sehen, warum ein Sechstel plus ein Drittel ein Halb ergibt. Die pinken und blauen Abschnitte zusammen machen genau die Hälfte eines Kreises aus.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[- Finde immer zuerst einen gemeinsamen Nenner 📊]
  #v(20pt)
  #only("2-")[- Addiere die Zähler, behalte den Nenner bei 🧮]
  #v(20pt)
  #only("3-")[- Vereinfache das Ergebnis, wenn möglich ✨]
  #v(20pt)
  #only("4-")[- Visualisierung kann helfen, Brüche zu verstehen 🖼️]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte aus dieser Übung zusammenfassen. Zuerst finde immer einen gemeinsamen Nenner, bevor du Brüche addierst.")
  ]

  #only("2")[
    #voiceover("Sobald du einen gemeinsamen Nenner hast, addiere die Zähler, während du den Nenner beibehältst.")
  ]

  #only("3")[
    #voiceover("Nach dem Addieren prüfe, ob du dein Ergebnis vereinfachen kannst, indem du sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler teilst.")
  ]

  #only("4")[
    #voiceover("Erinnere dich schließlich daran, dass die Visualisierung von Brüchen oft helfen kann, ihre Beziehungen und Summen zu verstehen. Großartige Arbeit beim Beherrschen dieses Konzepts!")
  ]
]