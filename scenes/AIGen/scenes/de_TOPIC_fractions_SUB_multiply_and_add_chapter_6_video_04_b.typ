#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider war das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu sehen, wie man diese Brüche richtig addiert.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("2-")[
    $4/10 + 3/10 = ?$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: vier Zehntel plus drei Zehntel. Beachte, dass beide Brüche den gleichen Nenner, nämlich zehn, haben.")
  ]

  #only("3-")[
    #v(20pt)
    - Gleicher Nenner: 10
  ]

  #only("3")[
    #voiceover("Beim Addieren von Brüchen mit gleichem Nenner bleibt der Nenner gleich und wir addieren nur die Zähler.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
  #v(40pt)

  #only("1-")[
    $4/10 + 3/10 = (4+3)/10$
  ]

  #only("1")[
    #voiceover("Also addieren wir die Zähler: vier plus drei und behalten den Nenner als zehn.")
  ]

  #only("2-")[
    #v(20pt)
    $= 7/10$
  ]

  #only("2")[
    #voiceover("Vier plus drei ergibt sieben, also ist unser Ergebnis sieben Zehntel.")
  ]

  #only("3-")[
    #v(20pt)
    - Zähler: 4 + 3 = 7
    - Nenner: 10 (unverändert)
  ]

  #only("3")[
    #voiceover("Zusammenfassend: Wir haben die Zähler, vier und drei, addiert, um sieben zu erhalten, während der Nenner, zehn, gleich bleibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

def draw_fraction(ax, numerator, denominator, color):
    ax.pie([numerator, denominator-numerator], colors=[color, 'white'], 
           startangle=90, counterclock=False)
    ax.add_artist(plt.Circle((0,0),0.7,color='white'))
    ax.text(0, 0, f"{numerator}/{denominator}", ha='center', va='center', fontsize=20)

draw_fraction(ax1, 4, 10, 'red')
ax1.set_title('4/10')

draw_fraction(ax2, 3, 10, 'blue')
ax2.set_title('3/10')

draw_fraction(ax3, 7, 10, 'purple')
ax3.set_title('7/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung unserer Addition. Der erste Kreis zeigt vier Zehntel in Rot, der zweite zeigt drei Zehntel in Blau. Wenn wir diese zusammenfügen, erhalten wir sieben Zehntel, dargestellt im dritten Kreis in Lila.")
  ]

  #only("2-")[
    #v(20pt)
    - Rot: 4/10
    - Blau: 3/10
    - Lila: 7/10 (Summe)
  ]

  #only("2")[
    #voiceover("Diese Visualisierung hilft uns zu sehen, wie sich die Brüche kombinieren. Die roten und blauen Teile zusammen ergeben sieben Zehntel des gesamten Kreises, was unsere endgültige Antwort ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnis]
  #v(40pt)

  #only("1-")[
    - Beim Addieren von Brüchen mit gleichem Nenner:
      1. Den Nenner gleich lassen
      2. Nur die Zähler addieren
  ]

  #only("1")[
    #voiceover("Die wichtige Erkenntnis hier ist, dass wir beim Addieren von Brüchen mit gleichem Nenner den Nenner gleich lassen und nur die Zähler addieren. Das funktioniert, weil die Brüche bereits Teile desselben Ganzen sind.")
  ]

  #only("2-")[
    #v(20pt)
    $a/c + b/c = (a+b)/c$
  ]

  #only("2")[
    #voiceover("Wir können dies verallgemeinern als: a durch c plus b durch c ergibt a plus b durch c, wobei a, b und c Zahlen sind und c nicht null ist.")
  ]
]