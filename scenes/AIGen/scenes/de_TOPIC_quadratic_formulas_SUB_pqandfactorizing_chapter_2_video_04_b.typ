#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gegebene Gleichung: $x^2 + 4x + 4 = 0$]
  #v(20pt)
  #only("2-")[- Wir verwenden die p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Dabei ist $p = 4$ und $q = 4$]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung der quadratischen Gleichung gemeinsam durch. Lass uns mit der Gleichung x Quadrat plus 4x plus 4 gleich null beginnen.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel aus p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich 4 und q gleich 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Formel]
  #v(40pt)
  #only("1-")[- Schritt 1: $x = -4/2 ± sqrt((4/2)^2 - 4)$]
  #v(20pt)
  #only("2-")[- Schritt 2: $x = -2 ± sqrt(4 - 4)$]
  #v(20pt)
  #only("3-")[- Schritt 3: $x = -2 ± sqrt(0)$]
  #v(20pt)
  #only("4-")[- Schritt 4: $x = -2 ± 0$]
  #only("1")[
    #voiceover("Lass uns die Formel anwenden. Wir setzen minus 4 durch 2 für minus p durch 2 ein, und unter der Quadratwurzel haben wir 4 durch 2 zum Quadrat minus 4.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das minus 2 plus oder minus die Quadratwurzel aus 4 minus 4.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu minus 2 plus oder minus die Quadratwurzel aus 0.")
  ]
  #only("4")[
    #voiceover("Die Quadratwurzel aus 0 ist 0, also bleibt uns minus 2 plus oder minus 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = -2 + 0$ oder $x = -2 - 0$]
  #v(20pt)
  #only("2-")[- Beide führen zu: $x = -2$]
  #v(40pt)
  #only("3-")[💡 Die Gleichung hat eine einzige Lösung: $x = -2$]
  #only("1")[
    #voiceover("Nun haben wir x gleich minus 2 plus 0 oder x gleich minus 2 minus 0.")
  ]
  #only("2")[
    #voiceover("Beide führen zum gleichen Ergebnis: x gleich minus 2.")
  ]
  #only("3")[
    #voiceover("Das bedeutet, unsere Gleichung hat eine einzige Lösung: x gleich minus 2. Dies nennt man eine doppelte Wurzel oder eine wiederholte Wurzel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifikation]
  #v(40pt)
  #only("1-")[- Lass uns $x = -2$ in die ursprüngliche Gleichung einsetzen:]
  #v(20pt)
  #only("2-")[- $(-2)^2 + 4(-2) + 4 = 0$]
  #v(20pt)
  #only("3-")[- $4 - 8 + 4 = 0$]
  #v(20pt)
  #only("4-")[- $0 = 0$ ✅]
  #only("1")[
    #voiceover("Um unsere Lösung zu überprüfen, setzen wir x gleich minus 2 wieder in die ursprüngliche Gleichung ein.")
  ]
  #only("2")[
    #voiceover("Wir erhalten minus 2 zum Quadrat, plus 4 mal minus 2, plus 4, gleich 0.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu 4 minus 8 plus 4 gleich 0.")
  ]
  #only("4")[
    #voiceover("Was tatsächlich stimmt: 0 gleich 0. Das bestätigt, dass unsere Lösung korrekt ist!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Grafische Darstellung]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 1, 100)
y = x**2 + 4*x + 4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='y = x² + 4x + 4')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=-2, color='g', linestyle='--', label='x = -2')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von x² + 4x + 4 = 0')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Hier ist eine grafische Darstellung unserer quadratischen Gleichung. Die Parabel berührt die x-Achse an genau einem Punkt, x gleich minus 2. Dies ist eine weitere Möglichkeit zu visualisieren, dass wir eine einzelne, wiederholte Wurzel haben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben $x^2 + 4x + 4 = 0$ mit der p-q-Formel gelöst 📊]
  #v(20pt)
  #only("2-")[- Die Lösung ist $x = -2$ 🎯]
  #v(20pt)
  #only("3-")[- Dies ist ein Spezialfall mit einer doppelten Wurzel 🔍]
  #v(20pt)
  #only("4-")[- Überprüfe immer deine Lösung! ✅]
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat plus 4x plus 4 gleich null mit der p-q-Formel gelöst.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass die Lösung x gleich minus 2 ist.")
  ]
  #only("3")[
    #voiceover("Dies ist ein Spezialfall, bei dem wir eine doppelte Wurzel haben, was bedeutet, dass die Parabel die x-Achse an genau einem Punkt berührt.")
  ]
  #only("4")[
    #voiceover("Denke daran, es ist immer eine gute Praxis, deine Lösung zu überprüfen, indem du sie wieder in die ursprüngliche Gleichung einsetzt. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]