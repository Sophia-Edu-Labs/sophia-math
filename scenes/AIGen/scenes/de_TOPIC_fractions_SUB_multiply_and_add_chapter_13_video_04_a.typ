#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit gleichem Nenner addieren]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Gegeben: $3/10 + 2/5$]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Wandle $2/5$ in einen gleichwertigen Bruch mit dem Nenner 10 um]]
  ]

  #only("3-")[
    #text(size: 24pt)[Schritt 1: $2/5 = (2 dot 2)/(5 dot 2) = 4/10$]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Addiere die Brüche]]
  ]

  #only("5-")[
    #text(size: 24pt)[Schritt 2: $3/10 + 4/10 = 7/10$]
  ]

  #only("1")[
    #voiceover("Großartig! Du hast dieses Problem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum drei Zehntel plus zwei Fünftel sieben Zehntel ergibt.")
  ]

  #only("2")[
    #voiceover("Zuerst müssen wir sicherstellen, dass beide Brüche den gleichen Nenner haben. Drei Zehntel hat bereits den Nenner 10, also müssen wir zwei Fünftel in einen gleichwertigen Bruch mit dem Nenner 10 umwandeln.")
  ]

  #only("3")[
    #voiceover("Dazu multiplizieren wir sowohl den Zähler als auch den Nenner von zwei Fünftel mit 2. Das ergibt vier Zehntel, was gleichwertig zu zwei Fünftel ist.")
  ]

  #only("4")[
    #voiceover("Jetzt, da beide Brüche den gleichen Nenner haben, können wir sie zusammenzählen.")
  ]

  #only("5")[
    #voiceover("Wir addieren einfach die Zähler: 3 plus 4 ergibt 7. Der Nenner bleibt gleich. Also ergibt drei Zehntel plus vier Zehntel sieben Zehntel, was unsere endgültige Antwort ist.")
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

# First fraction: 3/10
ax1.pie([3, 7], labels=['3/10', ''], colors=['#ff9999', '#eeeeee'], startangle=90)
ax1.set_title('3/10')

# Second fraction: 4/10
ax2.pie([4, 6], labels=['4/10', ''], colors=['#66b3ff', '#eeeeee'], startangle=90)
ax2.set_title('4/10')

# Sum: 7/10
ax3.pie([7, 3], labels=['7/10', ''], colors=['#99ff99', '#eeeeee'], startangle=90)
ax3.set_title('3/10 + 4/10 = 7/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Addition mit Tortendiagrammen visualisieren. Das erste Diagramm zeigt drei Zehntel, dargestellt durch den roten Abschnitt. Das zweite Diagramm zeigt vier Zehntel, dargestellt durch den blauen Abschnitt. Wenn wir diese zusammenzählen, erhalten wir sieben Zehntel, dargestellt im dritten Diagramm als der grüne Abschnitt.")
  ]

  #only("2")[
    #voiceover("Diese visuelle Darstellung hilft uns zu sehen, warum das Addieren von Brüchen mit dem gleichen Nenner so einfach ist wie das Addieren der Zähler und das Beibehalten des Nenners.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Beim Addieren von Brüchen, gleiche Nenner sicherstellen 🔢
  ]

  #only("2-")[
    - Brüche bei Bedarf umwandeln (Zähler und Nenner mit derselben Zahl multiplizieren) ↔️
  ]

  #only("3-")[
    - Zähler addieren, Nenner bleibt gleich ➕
  ]

  #only("4-")[
    - Ergebnis wenn möglich vereinfachen (in diesem Fall nicht nötig) ✅
  ]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte aus diesem Problem zusammenfassen. Erstens, beim Addieren von Brüchen müssen wir sicherstellen, dass sie den gleichen Nenner haben.")
  ]

  #only("2")[
    #voiceover("Wenn die Nenner unterschiedlich sind, müssen wir einen oder beide Brüche in gleichwertige Brüche mit einem gemeinsamen Nenner umwandeln. Das tun wir, indem wir sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren.")
  ]

  #only("3")[
    #voiceover("Sobald die Nenner gleich sind, können wir die Brüche addieren, indem wir die Zähler addieren und den Nenner gleich lassen.")
  ]

  #only("4")[
    #voiceover("Schließlich sollten wir, wenn möglich, das Ergebnis vereinfachen. In diesem Fall sind sieben Zehntel bereits in ihrer einfachsten Form, also ist keine weitere Vereinfachung nötig.")
  ]
]