#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast dieses Subtraktionsproblem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um dein Verständnis zu festigen.")
  ]

  #text(size: 30pt, weight: "bold")[Subtraktion von Brüchen mit gleichen Nennern]
  #v(40pt)

  #only("2-")[
    $7/10 - 4/10$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: sieben Zehntel minus vier Zehntel.")
  ]

  #only("3-")[
    #text(fill: aqua)[⇓ Gleiche Nenner]
  ]

  #only("3")[
    #voiceover("Zuerst stellen wir fest, dass beide Brüche den gleichen Nenner, nämlich zehn, haben. Das macht unsere Subtraktion einfach.")
  ]

  #only("4-")[
    $7/10 - 4/10 = (7-4)/10$
  ]

  #only("4")[
    #voiceover("Wenn wir Brüche mit dem gleichen Nenner subtrahieren, behalten wir den Nenner bei und subtrahieren einfach die Zähler.")
  ]

  #only("5-")[
    $= 3/10$
  ]

  #only("5")[
    #voiceover("Sieben minus vier ergibt drei, also ist unser Endergebnis drei Zehntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung der Subtraktion]
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

# First fraction: 7/10
ax1.pie([7, 3], labels=['7/10', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('7/10')

# Second fraction: 4/10
ax2.pie([4, 6], labels=['4/10', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('4/10')

# Result: 3/10
ax3.pie([3, 7], labels=['3/10', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('7/10 - 4/10 = 3/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Subtraktion mit Tortendiagrammen visualisieren. Das erste Diagramm zeigt sieben Zehntel, das zweite zeigt vier Zehntel, und das dritte zeigt das Ergebnis der Subtraktion von vier Zehnteln von sieben Zehnteln, was drei Zehntel ergibt.")
  ]

  #only("2")[
    #voiceover("Diese visuelle Darstellung hilft uns zu verstehen, dass wir, wenn wir vier Zehntel von sieben Zehnteln subtrahieren, drei Zehntel des Ganzen übrig haben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Beim Subtrahieren von Brüchen mit gleichem Nenner:
  ]

  #only("2-")[
    #h(20pt) 1️⃣ Den Nenner gleich lassen
  ]

  #only("3-")[
    #h(20pt) 2️⃣ Nur die Zähler subtrahieren
  ]

  #only("4-")[
    - Das Ergebnis ist bereits in seiner einfachsten Form
  ]

  #only("5-")[
    - Diese Methode funktioniert auch bei der Addition! 🧮
  ]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte aus diesem Problem zusammenfassen.")
  ]

  #only("2")[
    #voiceover("Erstens, beim Subtrahieren von Brüchen mit gleichem Nenner lassen wir den Nenner gleich.")
  ]

  #only("3")[
    #voiceover("Zweitens, wir subtrahieren nur die Zähler.")
  ]

  #only("4")[
    #voiceover("In diesem Fall ist unser Ergebnis, drei Zehntel, bereits in seiner einfachsten Form.")
  ]

  #only("5")[
    #voiceover("Denke daran, dass diese Methode auch bei der Addition von Brüchen mit gleichem Nenner funktioniert. Übe weiter, und du wirst die Bruchrechnung im Handumdrehen meistern!")
  ]
]