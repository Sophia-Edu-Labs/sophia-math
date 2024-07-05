#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  #v(40pt)

  #only("1-")[- Gegebene Funktion: $f(x) = 7x^6$]
  #v(20pt)
  #only("2-")[- Potenzregel: $dif/dif x (x^n) = n dot x^(n-1)$]
  #v(20pt)
  #only("3-")[- $f'(x) = 7 dot 6x^5 = 42x^5$]
  #v(20pt)
  #only("4-")[- Auswertung bei $x = 2$: $f'(2) = 42 dot 2^5$]
  #v(20pt)
  #only("5-")[- $f'(2) = 42 dot 32 = 1344$]

  #only("1")[
    #voiceover("Großartige Arbeit! Das ist korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der gegebenen Funktion f von x gleich 7 mal x hoch 6.")
  ]

  #only("2")[
    #voiceover("Um die Ableitung zu finden, verwenden wir die Potenzregel. Diese Regel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("Angewendet auf unsere Funktion ergibt das f Strich von x gleich 7 mal 6 mal x hoch 5, was sich zu 42 mal x hoch 5 vereinfacht.")
  ]

  #only("4")[
    #voiceover("Nun müssen wir dies bei x gleich 2 auswerten. Wir setzen also 2 für x ein, was uns 42 mal 2 hoch 5 ergibt.")
  ]

  #only("5")[
    #voiceover("2 hoch 5 ist 32, also ist unsere endgültige Berechnung 42 mal 32, was 1344 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung von $f(x)$ und $f'(x)$]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
f = 7 * x**6
f_prime = 42 * x**5

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, f, label='f(x) = 7x^6', color='blue')
ax.plot(x, f_prime, label="f'(x) = 42x^5", color='red')
ax.axvline(x=2, color='green', linestyle='--', label='x = 2')
ax.axhline(y=1344, color='purple', linestyle=':', label="f'(2) = 1344")

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('f(x) und seine Ableitung')
ax.legend()
ax.grid(True)

plt.show()
        ```,
        width: 360pt
      ),
    )
  ]]

  #only("1")[
    #voiceover("Hier ist eine Visualisierung unserer Funktion f von x in Blau und ihrer Ableitung f Strich von x in Rot. Die grüne gestrichelte Linie zeigt, wo x gleich 2 ist, und die lila gepunktete Linie zeigt den Wert der Ableitung an diesem Punkt, der 1344 ist.")
  ]

  #only("2")[
    #voiceover("Beachte, wie steil die Ableitung bei x gleich 2 ist. Dies spiegelt die schnelle Änderungsrate der ursprünglichen Funktion an diesem Punkt wider.")
  ]

  #only("3")[
    #voiceover("Diese Visualisierung hilft uns zu verstehen, warum der Ableitungswert bei x gleich 2 so groß ist. Die ursprüngliche Funktion wächst an diesem Punkt sehr schnell, was zu einer steilen Steigung und somit zu einem großen Ableitungswert führt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[- Die Potenzregel ist entscheidend für Polynomableitungen 📊]
  #v(20pt)
  #only("2-")[- Sorgfältige Anwendung der Regel führt zu korrekten Ergebnissen 🎯]
  #v(20pt)
  #only("3-")[- Visualisierung hilft, die Bedeutung von Ableitungen zu verstehen 📈]

  #only("1")[
    #voiceover("Fassen wir zusammen, was wir gelernt haben. Erstens ist die Potenzregel ein entscheidendes Werkzeug, um Ableitungen von Polynomfunktionen zu finden.")
  ]

  #only("2")[
    #voiceover("Zweitens führt die sorgfältige Anwendung dieser Regel Schritt für Schritt zum korrekten Ergebnis. Überprüfe immer deine Arbeit!")
  ]

  #only("3")[
    #voiceover("Schließlich kann die Visualisierung der Funktion und ihrer Ableitung uns helfen zu verstehen, was die Ableitung tatsächlich in Bezug auf die Änderungsrate der ursprünglichen Funktion bedeutet.")
  ]
]