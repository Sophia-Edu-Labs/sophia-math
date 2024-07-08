#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion Auswertung]
  #v(40pt)
  #only("1-")[- Gegeben: $f(x) = -5x^4$]
  #v(20pt)
  #only("2-")[- Gesucht: $f(2)$]
  #v(20pt)
  #only("3-")[- Schritt 1: Ersetze $x$ durch 2]
  #v(20pt)
  #only("4-")[- Schritt 2: Berechne das Ergebnis]

  #only("1")[
    #voiceover("Großartig! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer Potenzfunktion zu tun: f von x ist gleich minus fünf mal x hoch vier.")
  ]
  #only("2")[
    #voiceover("Wir müssen den Wert von f von 2 finden, das bedeutet, wir müssen die Funktion bei x gleich 2 auswerten.")
  ]
  #only("3")[
    #voiceover("Unser erster Schritt ist, x durch 2 in unserer Funktion zu ersetzen.")
  ]
  #only("4")[
    #voiceover("Dann berechnen wir das Ergebnis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Substitution und Berechnung]
  #v(40pt)
  #only("1-")[- $f(2) = -5(2)^4$]
  #v(20pt)
  #only("2-")[- $f(2) = -5 \cdot 16$]
  #v(20pt)
  #only("3-")[- $f(2) = -80$]

  #only("1")[
    #voiceover("Lass uns 2 für x in unserer Funktion einsetzen. Wir erhalten f von 2 ist gleich minus fünf mal 2 hoch vier.")
  ]
  #only("2")[
    #voiceover("Jetzt berechnen wir 2 hoch vier. 2 hoch vier ist 16. Also wird unsere Gleichung zu minus fünf mal 16.")
  ]
  #only("3")[
    #voiceover("Schließlich multiplizieren wir minus fünf mit 16. Minus fünf mal 16 ist gleich minus 80.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Der Wert von $f(2)$ ist $-80$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Die Reihenfolge der Operationen ist entscheidend!]

  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass f von 2 gleich minus 80 ist.")
  ]
  #only("2")[
    #voiceover("Denke daran, bei solchen Aufgaben ist die Reihenfolge der Operationen entscheidend. Berechne immer zuerst den Exponenten vor der Multiplikation!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung der Funktion]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = -5 * x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -5x^4')
plt.scatter(2, -80, color='red', s=100, label='f(2) = -80')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = -5x^4')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
      )
    ]
  ]

  #only("1")[
    #voiceover("Hier ist eine Visualisierung unserer Funktion f von x ist gleich minus fünf x hoch vier. Der rote Punkt zeigt den von uns berechneten Punkt, f von 2, der gleich minus 80 ist. Beachte, wie die Funktion schnell abnimmt, wenn sich x in beide Richtungen von null entfernt.")
  ]
]