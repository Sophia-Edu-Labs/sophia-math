#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion Auswertung]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 4, 100)
y = 7 * x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 7x²')
plt.axvline(x=3, color='r', linestyle='--', label='x = 3')
plt.axhline(y=63, color='g', linestyle='--', label='y = 63')
plt.plot(3, 63, 'ro', markersize=10)
plt.text(3.1, 65, '(3, 63)', fontsize=12)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = 7x²')
plt.legend()
plt.grid(True)
plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der Potenzfunktion f von x gleich 7 mal x Quadrat zu tun. Wir müssen f von 3 finden, das bedeutet, wir müssen die Funktion bei x gleich 3 auswerten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Funktion]
  #v(40pt)
  #only("1-")[- Gegebene Funktion: $f(x) = 7x^2$ 📊]
  #v(20pt)
  #only("2-")[- Dies ist eine quadratische Funktion (Potenz von 2) 🔢]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere Funktion. Gegeben ist f von x gleich 7 mal x Quadrat.")
  ]
  #only("2")[
    #voiceover("Dies ist eine quadratische Funktion, da die höchste Potenz von x 2 ist. Der Koeffizient 7 wird die Parabel vertikal strecken.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Setze den Wert ein]
  #v(40pt)
  #only("1-")[- Wir müssen $f(3)$ finden 🔍]
  #v(20pt)
  #only("2-")[- Setze $x$ gleich $3$ in die Funktion ein]
  #v(20pt)
  #only("3-")[- $f(3) = 7(3)^2$ ✅]
  #only("1")[
    #voiceover("Nun müssen wir f von 3 finden. Das bedeutet, wir müssen den Wert der Funktion berechnen, wenn x gleich 3 ist.")
  ]
  #only("2")[
    #voiceover("Dazu setzen wir x gleich 3 in unsere Funktion ein.")
  ]
  #only("3")[
    #voiceover("Also, f von 3 ist gleich 7 mal 3 Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechne]
  #v(40pt)
  #only("1-")[- $f(3) = 7(3)^2$]
  #v(20pt)
  #only("2-")[- $= 7(9)$]
  #v(20pt)
  #only("3-")[- $= 63$ 🎉]
  #only("1")[
    #voiceover("Lass uns das Schritt für Schritt berechnen. Wir beginnen mit f von 3 gleich 7 mal 3 Quadrat.")
  ]
  #only("2")[
    #voiceover("Zuerst berechnen wir 3 Quadrat, was 9 ist. Also haben wir jetzt 7 mal 9.")
  ]
  #only("3")[
    #voiceover("7 mal 9 ist 63. Also ist unsere endgültige Antwort 63.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[- Für die Funktion $f(x) = 7x^2$]
  #v(20pt)
  #only("2-")[- Wir haben gefunden, dass $f(3) = 63$ 🏁]
  #v(20pt)
  #only("3-")[- Das bedeutet, wenn $x = 3$ ist, dann ist $y = 63$ im Graphen 📈]
  #only("1")[
    #voiceover("Abschließend, für die Funktion f von x gleich 7 x Quadrat,")
  ]
  #only("2")[
    #voiceover("haben wir herausgefunden, dass f von 3 gleich 63 ist.")
  ]
  #only("3")[
    #voiceover("Das bedeutet, dass wenn x gleich 3 ist, y gleich 63 im Graphen dieser Funktion ist. Großartige Arbeit beim Lösen dieses Problems!")
  ]
]