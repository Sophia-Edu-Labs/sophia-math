#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Auswertung der Potenzfunktion]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 100)
y = 10 / x

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', label='f(x) = 10/x')
plt.axvline(x=2, color='r', linestyle='--', label='x = 2')
plt.axhline(y=5, color='g', linestyle='--', label='y = 5')
plt.plot(2, 5, 'ro', markersize=10)
plt.text(2.1, 5.1, '(2, 5)', fontsize=12)

plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = 10/x')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit der Potenzfunktion f von x gleich 10 geteilt durch x zu tun. Unsere Aufgabe ist es, f von 2 zu finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Funktion]
  #v(40pt)
  #only("1-")[- Gegeben: $f(x) = 10 / x$]
  #v(20pt)
  #only("2-")[- Dies ist eine Potenzfunktion mit negativem Exponenten]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere Funktion. Uns ist gegeben, dass f von x gleich 10 geteilt durch x ist.")
  ]
  #only("2")[
    #voiceover("Dies ist tatsächlich eine Potenzfunktion mit einem negativen Exponenten. Wir könnten sie als 10 mal x hoch minus 1 umschreiben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Auswertung bei x = 2]
  #v(40pt)
  #only("1-")[- Wir müssen $f(2)$ finden]
  #v(20pt)
  #only("2-")[- Ersetze $x$ durch $2$ in der Funktion]
  #v(20pt)
  #only("3-")[- $f(2) = 10 / 2$]
  #only("1")[
    #voiceover("Jetzt müssen wir f von 2 finden. Das bedeutet, wir suchen den Wert der Funktion, wenn x gleich 2 ist.")
  ]
  #only("2")[
    #voiceover("Dazu ersetzen wir x durch 2 in unserer Funktion.")
  ]
  #only("3")[
    #voiceover("Also, f von 2 ist gleich 10 geteilt durch 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechne das Ergebnis]
  #v(40pt)
  #only("1-")[- $f(2) = 10 / 2 = 5$]
  #v(20pt)
  #only("2-")[💡 Das Ergebnis ist 5]
  #only("1")[
    #voiceover("Lass uns das berechnen. 10 geteilt durch 2 ist gleich 5.")
  ]
  #only("2")[
    #voiceover("Daher ist der Wert von f von 2 gleich 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Interpretation]
  #v(40pt)
  #only("1-")[- Wenn $x = 2$, dann $f(x) = 5$]
  #v(20pt)
  #only("2-")[- Auf dem Graphen ist dies der Punkt $(2, 5)$]
  #v(20pt)
  #only("3-")[🔍 Dieser Punkt ist dort, wo die vertikale Linie $x = 2$ die Funktion schneidet]
  #only("1")[
    #voiceover("Lass uns dieses Ergebnis interpretieren. Wenn x gleich 2 ist, dann ist f von x gleich 5.")
  ]
  #only("2")[
    #voiceover("Auf dem Graphen der Funktion entspricht dies dem Punkt 2 Komma 5.")
  ]
  #only("3")[
    #voiceover("Du kannst diesen Punkt sehen, wo die vertikale Linie x gleich 2 unsere Funktion schneidet.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[- Für die Funktion $f(x) = 10 / x$]
  #v(20pt)
  #only("2-")[- Wir haben gefunden, dass $f(2) = 5$]
  #v(20pt)
  #only("3-")[🎉 Gut gemacht beim Lösen dieses Potenzfunktionsproblems!]
  #only("1")[
    #voiceover("Zusammenfassend, für die Funktion f von x gleich 10 geteilt durch x,")
  ]
  #only("2")[
    #voiceover("haben wir gefunden, dass f von 2 gleich 5 ist.")
  ]
  #only("3")[
    #voiceover("Gut gemacht beim Lösen dieses Potenzfunktionsproblems! Denke daran, Übung macht den Meister beim Umgang mit diesen Arten von Funktionen.")
  ]
]