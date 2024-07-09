#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gegebene Gleichung: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Wir verwenden die p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Dabei ist $p = 6$ und $q = 9$]
  
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt mit der p-q-Formel durchgehen. Wir beginnen mit der quadratischen Gleichung x Quadrat plus 6x plus 9 gleich 0.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich 6 und q gleich 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der p-q-Formel]
  #v(40pt)
  #only("1-")[- $x = -6/2 ± sqrt((6/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- $x = -3 ± sqrt(3^2 - 9)$]
  #v(20pt)
  #only("3-")[- $x = -3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("4-")[- $x = -3 ± sqrt(0)$]
  
  #only("1")[
    #voiceover("Nun, lass uns diese Werte in unsere Formel einsetzen. Wir erhalten x gleich minus 6 durch 2, plus oder minus die Quadratwurzel von 6 durch 2 zum Quadrat minus 9.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich minus 3, plus oder minus die Quadratwurzel von 3 zum Quadrat minus 9.")
  ]
  #only("3")[
    #voiceover("3 zum Quadrat ist 9, also haben wir x gleich minus 3, plus oder minus die Quadratwurzel von 9 minus 9.")
  ]
  #only("4")[
    #voiceover("9 minus 9 ist 0, also vereinfacht sich unsere Gleichung zu x gleich minus 3, plus oder minus die Quadratwurzel von 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endlösung]
  #v(40pt)
  #only("1-")[- $x = -3 ± 0$]
  #v(20pt)
  #only("2-")[- $x = -3$]
  #v(40pt)
  #only("3-")[💡 Die Gleichung hat nur eine Lösung!]
  
  #only("1")[
    #voiceover("Die Quadratwurzel von 0 ist 0, also wird unsere Gleichung zu x gleich minus 3, plus oder minus 0.")
  ]
  #only("2")[
    #voiceover("Plus oder minus 0 ändert nichts am Wert, also ist unsere endgültige Lösung x gleich minus 3.")
  ]
  #only("3")[
    #voiceover("Es ist interessant zu bemerken, dass diese quadratische Gleichung nur eine Lösung hat. Dies liegt daran, dass der Graph dieser Funktion die x-Achse genau an einem Punkt berührt, dem sogenannten Tangentenpunkt.")
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

x = np.linspace(-6, 0, 100)
y = x**2 + 6*x + 9

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^2 + 6x + 9$')
plt.axhline(y=0, color='r', linestyle='--')
plt.axvline(x=-3, color='g', linestyle='--')
plt.plot(-3, 0, 'ro', markersize=10)
plt.text(-3.5, -1, '(-3, 0)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von $f(x) = x^2 + 6x + 9$')
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
    #voiceover("Hier ist ein Graph unserer quadratischen Funktion. Wie du sehen kannst, berührt die Parabel die x-Achse genau an einem Punkt: minus 3, 0. Dieser Punkt ist, wo x gleich minus 3 ist, was unsere algebraische Lösung bestätigt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben $x^2 + 6x + 9 = 0$ mit der p-q-Formel gelöst 📊]
  #v(20pt)
  #only("2-")[- Die Lösung ist $x = -3$ ✅]
  #v(20pt)
  #only("3-")[- Diese quadratische Gleichung hat nur eine Lösung 🎯]
  
  #only("1")[
    #voiceover("Zusammenfassend haben wir die quadratische Gleichung x Quadrat plus 6x plus 9 gleich 0 mit der p-q-Formel gelöst.")
  ]
  #only("2")[
    #voiceover("Wir haben herausgefunden, dass die Lösung x gleich minus 3 ist.")
  ]
  #only("3")[
    #voiceover("Wichtig ist, dass wir entdeckt haben, dass diese quadratische Gleichung nur eine Lösung hat, die dem Punkt entspricht, an dem die Parabel die x-Achse berührt. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]