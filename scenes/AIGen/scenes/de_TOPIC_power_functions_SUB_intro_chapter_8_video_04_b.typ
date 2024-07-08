#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = 27 / x**3

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = 27 / x³')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.title('Power Function: f(x) = 27 / x³')
plt.xlabel('x')
plt.ylabel('f(x)')
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
    #voiceover("Keine Sorge, das war eine schwierige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der Potenzfunktion f von x gleich 27 geteilt durch x hoch drei zu tun. Hier ist ein Diagramm dieser Funktion, um sie zu veranschaulichen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Funktion]
  #v(40pt)
  #only("1-")[- Potenzfunktion: $f(x) = 27 / x^3$ 📊]
  #v(20pt)
  #only("2-")[- Wir müssen $f(1/3)$ finden 🎯]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere Funktion. Wir haben f von x gleich 27 geteilt durch x hoch drei. Dies ist eine Potenzfunktion mit einem negativen Exponenten.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, f von ein Drittel zu finden. Mit anderen Worten, wir müssen berechnen, was passiert, wenn wir ein Drittel in unsere Funktion einsetzen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Setze den Wert ein]
  #v(40pt)
  #only("1-")[- Ersetze $x$ durch $1/3$ in der Funktion]
  #v(20pt)
  #only("2-")[- $f(1/3) = 27 / (1/3)^3$ 🔢]
  #only("1")[
    #voiceover("Nun setzen wir ein Drittel für x in unsere Funktion ein.")
  ]
  #only("2")[
    #voiceover("Das ergibt f von ein Drittel gleich 27 geteilt durch ein Drittel hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Vereinfache den Ausdruck]
  #v(40pt)
  #only("1-")[- Vereinfache $(1/3)^3$]
  #v(20pt)
  #only("2-")[- $(1/3)^3 = 1/27$ 🧮]
  #v(20pt)
  #only("3-")[- $f(1/3) = 27 / (1/27)$ 🔢]
  #only("1")[
    #voiceover("Lass uns beginnen, ein Drittel hoch drei zu vereinfachen.")
  ]
  #only("2")[
    #voiceover("Ein Drittel hoch drei ist gleich ein geteilt durch 27.")
  ]
  #only("3")[
    #voiceover("Unser Ausdruck wird also zu 27 geteilt durch ein Siebenundzwanzigstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Berechne das Endergebnis]
  #v(40pt)
  #only("1-")[- $27 / (1/27) = 27 \cdot 27 = 729$ 🎉]
  #v(20pt)
  #only("2-")[- Daher ist $f(1/3) = 729$]
  #only("1")[
    #voiceover("Nun berechnen wir 27 geteilt durch ein Siebenundzwanzigstel. Das ist gleichbedeutend mit 27 mal 27, was 729 ergibt.")
  ]
  #only("2")[
    #voiceover("Daher ist f von ein Drittel gleich 729.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Wir haben mit $f(x) = 27 / x^3$ begonnen 📊]
  #v(20pt)
  #only("2-")[- Wir haben $f(1/3)$ berechnet 🧮]
  #v(20pt)
  #only("3-")[- Das Ergebnis ist $f(1/3) = 729$ 🎉]
  #only("1")[
    #voiceover("Zusammenfassend haben wir mit der Funktion f von x gleich 27 geteilt durch x hoch drei begonnen.")
  ]
  #only("2")[
    #voiceover("Wir haben f von ein Drittel berechnet, indem wir ein Drittel für x eingesetzt und den Ausdruck vereinfacht haben.")
  ]
  #only("3")[
    #voiceover("Das Endergebnis ist, dass f von ein Drittel gleich 729 ist. Großartige Arbeit beim Lösen dieses Potenzfunktion-Problems!")
  ]
]