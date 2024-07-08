#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion mit negativem Koeffizienten]
  #v(40pt)
  #only("1-")[
    $f(x) = -2x^3$
  ]
  #v(20pt)
  #only("2-")[
    Finde: $f(3)$
  ]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer Potenzfunktion zu tun: f von x ist gleich minus zwei mal x hoch drei.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, den Wert von f von 3 zu finden, das bedeutet, wir müssen die Funktion bei x gleich 3 auswerten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Ersetze x durch 3]
  #v(40pt)
  #only("1-")[
    $f(3) = -2(3)^3$
  ]
  #v(20pt)
  #only("2-")[
    💡 Denke daran: Klammern sind wichtig!
  ]
  #only("1")[
    #voiceover("Der erste Schritt ist, x durch 3 in unserer Funktion zu ersetzen. Das gibt uns f von 3 gleich minus zwei mal 3 hoch drei.")
  ]
  #only("2")[
    #voiceover("Es ist wichtig, hier Klammern zu verwenden, um sicherzustellen, dass wir 3 hoch drei nehmen, bevor wir mit minus zwei multiplizieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Den Exponenten auswerten]
  #v(40pt)
  #only("1-")[
    $f(3) = -2(27)$
  ]
  #v(20pt)
  #only("2-")[
    $3^3 = 3 dot 3 dot 3 = 27$
  ]
  #only("1")[
    #voiceover("Nun, lass uns 3 hoch drei auswerten. 3 hoch drei ist gleich 27, also wird unser Ausdruck zu minus zwei mal 27.")
  ]
  #only("2")[
    #voiceover("Denke daran, 3 hoch drei bedeutet 3 mal 3 mal 3, was 27 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Multiplizieren]
  #v(40pt)
  #only("1-")[
    $f(3) = -54$
  ]
  #v(20pt)
  #only("2-")[
    Endergebnis: $-54$
  ]
  #only("1")[
    #voiceover("Der letzte Schritt ist, minus zwei mit 27 zu multiplizieren. Minus zwei mal 27 ergibt minus 54.")
  ]
  #only("2")[
    #voiceover("Daher ist unser Endergebnis, dass f von 3 gleich minus 54 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = -2 * x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -2x³')
plt.axhline(y=0, color='k', linestyle='--', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='--', linewidth=0.5)
plt.plot(3, -54, 'ro', markersize=10, label='f(3) = -54')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph of f(x) = -2x³')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]]
  #only("1")[
    #voiceover("Hier ist eine Visualisierung unserer Funktion f von x gleich minus zwei x hoch drei. Der rote Punkt zeigt den berechneten Punkt, bei dem x gleich 3 und f von x gleich minus 54 ist. Beachte, wie die Funktion aufgrund des negativen Koeffizienten und der Hoch-drei-Potenz schnell abfällt, wenn x zunimmt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Funktion: $f(x) = -2x^3$ 📊]
  #v(20pt)
  #only("2-")[- Ausgewertet bei $x = 3$ 🎯]
  #v(20pt)
  #only("3-")[- Ergebnis: $f(3) = -54$ 🎉]
  #only("1")[
    #voiceover("Zusammenfassend haben wir mit der Funktion f von x gleich minus zwei x hoch drei begonnen.")
  ]
  #only("2")[
    #voiceover("Wir haben diese Funktion bei x gleich 3 ausgewertet.")
  ]
  #only("3")[
    #voiceover("Und wir haben herausgefunden, dass f von 3 gleich minus 54 ist. Großartige Arbeit bei der Lösung dieses Potenzfunktionsproblems!")
  ]
]