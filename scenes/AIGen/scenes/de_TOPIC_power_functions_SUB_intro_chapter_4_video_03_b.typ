#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativen Exponenten]
  #v(40pt)
  #only("1-")[- Funktion: $f(x) = 3 / x^2$]
  #v(20pt)
  #only("2-")[- Ziel: Berechne $f(2)$]
  #v(20pt)
  #only("3-")[- Schritt-für-Schritt-Lösung 🔍]

  #only("1")[
    #voiceover("Keine Sorge, Fehler passieren! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einer Potenzfunktion mit einem negativen Exponenten zu tun.")
  ]
  #only("2")[
    #voiceover("Unsere Funktion ist f von x gleich 3 geteilt durch x Quadrat. Wir müssen den Wert von f von 2 finden, was bedeutet, dass wir die Funktion auswerten müssen, wenn x gleich 2 ist.")
  ]
  #only("3")[
    #voiceover("Lass uns dieses Problem Schritt für Schritt lösen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Ersetze x durch 2]
  #v(40pt)
  #only("1-")[- $f(2) = 3 / 2^2$]
  #v(20pt)
  #only("2-")[- Ersetze x durch 2 in der ursprünglichen Funktion]

  #only("1")[
    #voiceover("Unser erster Schritt ist es, x durch 2 in unserer Funktion zu ersetzen. Also, f von 2 ist gleich 3 geteilt durch 2 Quadrat.")
  ]
  #only("2")[
    #voiceover("Dies ist ein entscheidender Schritt bei der Auswertung von Funktionen. Wir ersetzen immer die Variable, in diesem Fall x, durch den gegebenen Wert, der 2 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Den Nenner berechnen]
  #v(40pt)
  #only("1-")[- $2^2 = 2 \cdot 2 = 4$]
  #v(20pt)
  #only("2-")[- $f(2) = 3 / 4$]

  #only("1")[
    #voiceover("Als nächstes berechnen wir den Nenner. 2 Quadrat ist gleich 2 mal 2, was uns 4 ergibt.")
  ]
  #only("2")[
    #voiceover("Also vereinfacht sich unser Ausdruck zu 3 geteilt durch 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Den Bruch vereinfachen]
  #v(40pt)
  #only("1-")[- $3 / 4 = 0.75$]
  #v(20pt)
  #only("2-")[- Endergebnis: $f(2) = 0.75$ oder $3/4$]

  #only("1")[
    #voiceover("Unser letzter Schritt ist es, den Bruch zu vereinfachen. 3 geteilt durch 4 ist gleich 0,75 in Dezimalform.")
  ]
  #only("2")[
    #voiceover("Daher ist unser Endergebnis, dass f von 2 gleich 0,75 ist, oder wenn wir es als Bruch beibehalten möchten, 3 durch 4.")
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

x = np.linspace(0.1, 4, 100)
y = 3 / x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 3/x²')
plt.plot(2, 0.75, 'ro', markersize=10, label='f(2) = 0.75')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph von f(x) = 3/x²')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.text(2.1, 0.8, '(2, 0.75)', fontsize=12)
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]]
  #v(20pt)
  #only("1")[
    #voiceover("Hier ist eine Visualisierung unserer Funktion f von x gleich 3 geteilt durch x Quadrat. Der rote Punkt zeigt den berechneten Punkt, f von 2, der bei den Koordinaten 2 Komma 0,75 liegt. Dieses Diagramm hilft uns zu sehen, wie sich die Funktion verhält und bestätigt unsere Berechnung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)
  #only("1-")[- Für $f(x) = 3 / x^2$, $f(2) = 3/4$ oder $0.75$ 📊]
  #v(20pt)
  #only("2-")[- Schritte: Ersetzen, Berechnen, Vereinfachen 🔢]
  #v(20pt)
  #only("3-")[- Visualisierung hilft, das Verhalten der Funktion zu verstehen 📈]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Für die Funktion f von x gleich 3 geteilt durch x Quadrat haben wir herausgefunden, dass f von 2 gleich 3 durch 4 oder 0,75 ist.")
  ]
  #only("2")[
    #voiceover("Wir haben drei Hauptschritte befolgt: den Wert ersetzen, den Ausdruck berechnen und das Ergebnis vereinfachen.")
  ]
  #only("3")[
    #voiceover("Schließlich hilft uns die Visualisierung der Funktion, ihr Verhalten zu verstehen und bestätigt unsere Berechnung. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]