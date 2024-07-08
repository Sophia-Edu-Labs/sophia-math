#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen]
  #v(40pt)
  #only("1-")[- Funktion: $f(x) = 4x^3$ 📊]
  #v(20pt)
  #only("2-")[- Aufgabe: Finde $f(2)$ 🔍]
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer Potenzfunktion f von x gleich 4 mal x hoch 3 zu tun.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, den Wert von f von 2 zu finden, was bedeutet, dass wir berechnen müssen, was passiert, wenn wir 2 in unsere Funktion einsetzen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Ersetze x durch 2]
  #v(40pt)
  #only("1-")[- $f(2) = 4(2)^3$ 🔢]
  #v(20pt)
  #only("2-")[- Denke daran: $(2)^3 = 2 × 2 × 2$ 🧮]
  #only("1")[
    #voiceover("Der erste Schritt ist, x durch 2 in unserer Funktion zu ersetzen. Das ergibt f von 2 gleich 4 mal 2 hoch 3.")
  ]
  #only("2")[
    #voiceover("Denke daran, 2 hoch 3 bedeutet, dass 2 mit sich selbst dreimal multipliziert wird, also 2 mal 2 mal 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne den Exponenten]
  #v(40pt)
  #only("1-")[- $(2)^3 = 2 × 2 × 2 = 8$ 📈]
  #v(20pt)
  #only("2-")[- $f(2) = 4 × 8$ ✖️]
  #only("1")[
    #voiceover("Lass uns zuerst 2 hoch 3 berechnen. 2 mal 2 mal 2 ergibt 8.")
  ]
  #only("2")[
    #voiceover("Jetzt sieht unsere Gleichung aus wie f von 2 gleich 4 mal 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Endberechnung]
  #v(40pt)
  #only("1-")[- $f(2) = 4 × 8 = 32$ 🎉]
  #v(20pt)
  #only("2-")[- Daher ist $f(2) = 32$ ✅]
  #only("1")[
    #voiceover("Der letzte Schritt ist, 4 mal 8 zu multiplizieren. 4 mal 8 ergibt 32.")
  ]
  #only("2")[
    #voiceover("Daher haben wir herausgefunden, dass f von 2 gleich 32 ist. Das ist unsere endgültige Antwort!")
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

x = np.linspace(-2, 2, 100)
y = 4 * x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 4x³')
plt.scatter(2, 32, color='red', s=100, label='f(2) = 32')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Potenzfunktion: f(x) = 4x³')
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
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
    #voiceover("Hier ist eine visuelle Darstellung unserer Potenzfunktion. Der rote Punkt zeigt den berechneten Punkt, bei dem x gleich 2 und f von x gleich 32 ist. Beachte, wie die Funktion aufgrund des kubischen Terms schnell nach oben kurvt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Potenzfunktion: $f(x) = 4x^3$ 📊]
  #v(20pt)
  #only("2-")[- Wir haben gefunden: $f(2) = 32$ 🎯]
  #v(20pt)
  #only("3-")[- Schritte: Ersetzen, Berechnen, Multiplizieren 🔢]
  #only("1")[
    #voiceover("Zusammenfassend haben wir mit der Potenzfunktion f von x gleich 4 x hoch 3 begonnen.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass wenn x gleich 2 ist, f von 2 gleich 32 ist.")
  ]
  #only("3")[
    #voiceover("Wir haben dies erreicht, indem wir 2 für x eingesetzt, 2 hoch 3 berechnet und dann mit 4 multipliziert haben. Großartige Arbeit beim Lösen dieses Potenzfunktionsproblems!")
  ]
]