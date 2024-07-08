#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Funktionen auswerten]
  #v(40pt)
  #only("1-")[
    $f(x) = 3x^2 + 2x + 1$
  ]
  #v(20pt)
  #only("2-")[
    Finde $f(2)$
  ]
  #only("1")[
    #voiceover("Keine Sorge, lass uns die Lösung gemeinsam durchgehen. Wir haben es mit der quadratischen Funktion f von x gleich 3x Quadrat plus 2x plus 1 zu tun.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, f von 2 zu finden, was bedeutet, dass wir die Funktion bei x gleich 2 auswerten müssen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Setze x gleich 2]
  #v(40pt)
  #only("1-")[
    $f(2) = 3(2)^2 + 2(2) + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(2) = 3 mal 4 + 2 mal 2 + 1$
  ]
  #only("1")[
    #voiceover("Der erste Schritt ist, x durch 2 in unserer Funktion zu ersetzen. Das ergibt f von 2 gleich 3 mal 2 Quadrat, plus 2 mal 2, plus 1.")
  ]
  #only("2")[
    #voiceover("Nun lass uns die Potenz vereinfachen. 2 Quadrat ist 4, also haben wir 3 mal 4, plus 2 mal 2, plus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Multiplizieren]
  #v(40pt)
  #only("1-")[
    $f(2) = 12 + 4 + 1$
  ]
  #v(20pt)
  #only("2-")[
    💡 Denke an die Reihenfolge der Operationen!
  ]
  #only("1")[
    #voiceover("Als nächstes führen wir die Multiplikationen durch. 3 mal 4 ist 12, und 2 mal 2 ist 4. Also wird unsere Gleichung zu 12 plus 4 plus 1.")
  ]
  #only("2")[
    #voiceover("Es ist wichtig, hier an die Reihenfolge der Operationen zu denken. Wir führen immer die Multiplikation vor der Addition durch.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Addieren]
  #v(40pt)
  #only("1-")[
    $f(2) = 17$
  ]
  #v(20pt)
  #only("2-")[
    🎉 Wir haben unsere Antwort gefunden!
  ]
  #only("1")[
    #voiceover("Der letzte Schritt ist, diese Zahlen zusammenzuzählen. 12 plus 4 plus 1 ergibt 17.")
  ]
  #only("2")[
    #voiceover("Und da haben wir es! Wir haben herausgefunden, dass f von 2 gleich 17 ist. Großartige Arbeit beim Lösen dieser quadratischen Funktion!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Lösung visualisieren]
  #v(40pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 4, 100)
y = 3*x**2 + 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 3x² + 2x + 1')
plt.plot(2, 17, 'ro', label='f(2) = 17')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Quadratische Funktion: f(x) = 3x² + 2x + 1')
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
    #voiceover("Hier ist eine visuelle Darstellung unserer quadratischen Funktion. Die blaue Kurve zeigt die Funktion f von x gleich 3x Quadrat plus 2x plus 1. Der rote Punkt hebt unsere Lösung hervor und zeigt, dass bei x gleich 2, f von x tatsächlich 17 ist.")
  ]
]