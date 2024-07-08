#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen Auswerten]
  #v(40pt)
  #only("1-")[
    $f(x) = x^4$
  ]
  #v(20pt)
  #only("2-")[
    Werte $f(-2)$ aus:
  ]
  #v(20pt)
  #only("3-")[
    $f(-2) = (-2)^4$
  ]
  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der Potenzfunktion f von x gleich x hoch vier zu tun.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, f von minus zwei auszuwerten.")
  ]
  #only("3")[
    #voiceover("Dazu setzen wir einfach minus zwei für x in unsere Funktion ein.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis Berechnen]
  #v(40pt)
  #only("1-")[
    $f(-2) = (-2)^4$
  ]
  #v(20pt)
  #only("2-")[
    $= (-2) dot (-2) dot (-2) dot (-2)$
  ]
  #v(20pt)
  #only("3-")[
    $= 16$
  ]
  #only("1")[
    #voiceover("Nun, lass uns minus zwei hoch vier berechnen.")
  ]
  #only("2")[
    #voiceover("Das entspricht dem viermaligen Multiplizieren von minus zwei mit sich selbst.")
  ]
  #only("3")[
    #voiceover("Das Ergebnis ist positiv sechzehn.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis Verstehen]
  #v(40pt)
  #only("1-")[
    - Gerade Potenzen negativer Zahlen sind immer positiv 📊
  ]
  #v(20pt)
  #only("2-")[
    - $(-2)^4 = 16$
  ]
  #v(20pt)
  #only("3-")[
    - $(-2)^2 = 4$, $(-2)^4 = 16$, $(-2)^6 = 64$, ...
  ]
  #only("1")[
    #voiceover("Es ist wichtig zu verstehen, warum wir ein positives Ergebnis erhalten haben. Gerade Potenzen negativer Zahlen sind immer positiv.")
  ]
  #only("2")[
    #voiceover("In unserem Fall ergibt minus zwei hoch vier positiv sechzehn.")
  ]
  #only("3")[
    #voiceover("Dieses Muster setzt sich bei allen geraden Potenzen fort: minus zwei zum Quadrat ist vier, minus zwei hoch vier ist sechzehn, minus zwei hoch sechs ist vierundsechzig, und so weiter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen Visualisieren]
  #v(20pt)
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**4

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^4')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.plot(-2, 16, 'ro', markersize=10, label='f(-2) = 16')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph von f(x) = x^4')
plt.legend()
plt.grid(True)
plt.show()
        ```,
        width: 360pt),
      )
    ]
  ]
  #only("1")[
    #voiceover("Hier ist ein Graph unserer Funktion f von x gleich x hoch vier. Beachte, wie die Funktion symmetrisch zur y-Achse ist und immer nicht-negativ bleibt. Der rote Punkt zeigt unseren berechneten Punkt: wenn x minus zwei ist, ist f von x sechzehn.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[
    - Für $f(x) = x^4$ haben wir gefunden, dass $f(-2) = 16$ 🎯
  ]
  #v(20pt)
  #only("2-")[
    - Gerade Potenzfunktionen liefern immer nicht-negative Ergebnisse 📈
  ]
  #v(20pt)
  #only("3-")[
    - Übe mit verschiedenen Werten, um dein Verständnis zu festigen! 💪
  ]
  #only("1")[
    #voiceover("Zusammenfassend haben wir für unsere Funktion f von x gleich x hoch vier herausgefunden, dass f von minus zwei gleich sechzehn ist.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass gerade Potenzfunktionen immer nicht-negative Ergebnisse liefern, unabhängig davon, ob der Input positiv oder negativ ist.")
  ]
  #only("3")[
    #voiceover("Um dein Verständnis zu festigen, versuche, diese Funktion für verschiedene Werte auszuwerten. Mach weiter so!")
  ]
]