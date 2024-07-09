#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Gleichung: $x^2 + 2x - 8 = 0$]
  #v(20pt)
  #only("2-")[- Mit der p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = 2$ und $q = -8$]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt durch. Lass uns mit der Gleichung x Quadrat plus 2x minus 8 gleich null beginnen.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In unserer Gleichung ist p gleich 2 und q gleich minus 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Formel]
  #v(40pt)
  #only("1-")[- $x = -2/2 ± sqrt((2/2)^2 - (-8))$]
  #v(20pt)
  #only("2-")[- $x = -1 ± sqrt(1 + 8)$]
  #v(20pt)
  #only("3-")[- $x = -1 ± sqrt(9)$]
  #v(20pt)
  #only("4-")[- $x = -1 ± 3$]
  #only("1")[
    #voiceover("Nun setzen wir diese Werte in unsere Formel ein. Wir erhalten x gleich minus 2 durch 2, plus oder minus die Quadratwurzel von 2 durch 2 zum Quadrat minus minus 8.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich minus 1, plus oder minus die Quadratwurzel von 1 plus 8.")
  ]
  #only("3")[
    #voiceover("Das vereinfacht sich zu x gleich minus 1, plus oder minus die Quadratwurzel von 9.")
  ]
  #only("4")[
    #voiceover("Die Quadratwurzel von 9 ist 3, also erhalten wir x gleich minus 1, plus oder minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = -1 + 3$ oder $x = -1 - 3$]
  #v(20pt)
  #only("2-")[- $x = 2$ oder $x = -4$]
  #v(40pt)
  #only("3-")[🎉 Lösung: $x = -4$ oder $x = 2$]
  #only("1")[
    #voiceover("Nun können wir unsere beiden Lösungen berechnen. Wir haben x gleich minus 1 plus 3 oder x gleich minus 1 minus 3.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das x gleich 2 oder x gleich minus 4.")
  ]
  #only("3")[
    #voiceover("Daher ist unsere endgültige Lösung x gleich minus 4 oder x gleich 2. Gut gemacht beim Lösen dieser quadratischen Gleichung mit der p-q-Formel!")
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

x = np.linspace(-5, 3, 100)
y = x**2 + 2*x - 8

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='$f(x) = x^2 + 2x - 8$')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.axvline(x=-4, color='g', linestyle=':', label='x = -4')
plt.axvline(x=2, color='g', linestyle=':', label='x = 2')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Quadratische Funktion $f(x) = x^2 + 2x - 8$')
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
    #voiceover("Hier ist eine grafische Darstellung unserer quadratischen Funktion. Die Parabel schneidet die x-Achse an zwei Punkten: minus 4 und 2. Dies sind unsere Lösungen, bei denen die Funktion null ist.")
  ]
]