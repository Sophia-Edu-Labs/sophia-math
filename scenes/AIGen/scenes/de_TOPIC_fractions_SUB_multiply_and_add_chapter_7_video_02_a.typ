#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die richtige Antwort gefunden. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum $5/7$ das richtige Ergebnis ist.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Gegeben: $3/7 + 2/7$]
  ]

  #only("2")[
    #voiceover("Wir haben die Aufgabe, $3/7$ und $2/7$ zu addieren. Beachte, dass diese Brüche den gleichen Nenner haben, was unsere Addition einfach macht.")
  ]

  #only("3-")[
    #text(size: 24pt)[Schritt 1: Gemeinsamen Nenner identifizieren]
    #v(10pt)
    #text(size: 20pt)[Gemeinsamer Nenner: 7]
  ]

  #only("3")[
    #voiceover("Der erste Schritt ist, den gemeinsamen Nenner zu identifizieren. In diesem Fall haben beide Brüche bereits 7 als Nenner.")
  ]

  #only("4-")[
    #text(size: 24pt)[Schritt 2: Zähler addieren]
    #v(10pt)
    #text(size: 20pt)[$ 3 + 2 = 5 $]
  ]

  #only("4")[
    #voiceover("Als nächstes addieren wir einfach die Zähler. Drei plus zwei ergibt fünf.")
  ]

  #only("5-")[
    #text(size: 24pt)[Schritt 3: Ergebnis über den gemeinsamen Nenner schreiben]
    #v(10pt)
    #text(size: 20pt)[$ 5/7 $]
  ]

  #only("5")[
    #voiceover("Schließlich schreiben wir diese Summe über den gemeinsamen Nenner. Also ergibt $3/7$ plus $2/7$ gleich $5/7$.")
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

def draw_pie(ax, ratio, label):
    sizes = [ratio, 1 - ratio]
    colors = ['#ff9999', '#66b3ff']
    ax.pie(sizes, colors=colors, startangle=90)
    ax.set_title(label)

draw_pie(ax1, 3/7, '3/7')
draw_pie(ax2, 2/7, '2/7')
draw_pie(ax3, 5/7, '5/7')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Addition mit Tortendiagrammen visualisieren. Das erste Diagramm stellt $3/7$ dar, das zweite $2/7$, und das dritte zeigt ihre Summe, $5/7$.")
  ]

  #only("2")[
    #voiceover("Wie du sehen kannst, erhalten wir $5/7$ des gesamten Kuchens, wenn wir die Anteile von $3/7$ und $2/7$ kombinieren.")
  ]

  #only("3")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, warum das Addieren von Brüchen mit gleichem Nenner so einfach ist wie das Addieren der Zähler und das Beibehalten des Nenners.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Beim Addieren von Brüchen mit gleichem Nenner:
  ]

  #only("2-")[
    #v(10pt)
    #text(size: 20pt)[1. Behalte den gemeinsamen Nenner bei 🔢]
  ]

  #only("3-")[
    #v(10pt)
    #text(size: 20pt)[2. Addiere nur die Zähler ➕]
  ]

  #only("4-")[
    #v(10pt)
    #text(size: 20pt)[3. Vereinfache, wenn möglich ✨]
  ]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zum Addieren von Brüchen mit gleichem Nenner zusammenfassen.")
  ]

  #only("2")[
    #voiceover("Erstens, wir behalten den gemeinsamen Nenner bei. In diesem Fall war es 7.")
  ]

  #only("3")[
    #voiceover("Zweitens, wir addieren nur die Zähler. Wir haben 3 und 2 addiert, um 5 zu erhalten.")
  ]

  #only("4")[
    #voiceover("Schließlich sollten wir das Ergebnis, wenn möglich, vereinfachen. In diesem Fall ist $5/7$ bereits in seiner einfachsten Form.")
  ]

  #only("5")[
    #voiceover("Denke daran, dass diese Methode für jede Anzahl von Brüchen funktioniert, solange sie alle den gleichen Nenner haben. Übe weiter, und du wirst das Addieren von Brüchen im Handumdrehen meistern!")
  ]
]