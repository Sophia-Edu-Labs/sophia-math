#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Quadratische Gleichungen 📊]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen modellieren viele reale Szenarien 🌍]
  #only("2-")[- Sie haben eine spezifische Form und eine einzigartige Graphform 📈]
  #only("3-")[- Lass uns ihre Hauptmerkmale zusammenfassen 🔑]

  #only("1")[
    #voiceover("Lass uns quadratische Gleichungen überprüfen. Diese Gleichungen sind entscheidend für die Modellierung verschiedener realer Szenarien.")
  ]
  #only("2")[
    #voiceover("Sie haben eine spezifische Form und erzeugen eine einzigartige Graphform, wenn sie geplottet werden.")
  ]
  #only("3")[
    #voiceover("Wir werden ihre Hauptmerkmale zusammenfassen, um unser Verständnis zu festigen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Form von Quadratischen Gleichungen]
  #v(40pt)
  #only("1-")[Allgemeine Form: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[Wobei:]
  #only("3-")[- $a ≠ 0$ (Koeffizient von $x^2$)]
  #only("4-")[- $b$ (Koeffizient von $x$)]
  #only("5-")[- $c$ (Konstante)]

  #only("1")[
    #voiceover("Lass uns die allgemeine Form einer quadratischen Gleichung überprüfen. Sie wird geschrieben als a x Quadrat plus b x plus c gleich null.")
  ]
  #only("2")[
    #voiceover("In dieser Gleichung:")
  ]
  #only("3")[
    #voiceover("a ist der Koeffizient von x Quadrat und darf nicht null sein, da dies die Gleichung quadratisch macht.")
  ]
  #only("4")[
    #voiceover("b ist der Koeffizient von x,")
  ]
  #only("5")[
    #voiceover("und c ist die Konstante.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Graph von Quadratischen Gleichungen]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2 - 2*x - 3

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^2 - 2x - 3$')
ax.axhline(y=0, color='k', linestyle='--')
ax.axvline(x=0, color='k', linestyle='--')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_title('Parabel: Graph einer quadratischen Gleichung')

plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  #v(20pt)
  #only("2-")[- Form: Parabel 🛝]
  #only("3-")[- Öffnet nach oben, wenn $a > 0$, nach unten, wenn $a < 0$]
  #only("4-")[- Scheitelpunkt: Höchster oder tiefster Punkt]

  #only("1")[
    #voiceover("Wenn wir eine quadratische Gleichung graphisch darstellen, erhalten wir eine charakteristische Form, die Parabel genannt wird. Hier ist ein Beispiel, wie sie aussieht.")
  ]
  #only("2")[
    #voiceover("Der Graph jeder quadratischen Gleichung ist eine Parabel, die wie ein U oder ein umgekehrtes U aussieht.")
  ]
  #only("3")[
    #voiceover("Die Parabel öffnet sich nach oben, wenn a positiv ist, und nach unten, wenn a negativ ist.")
  ]
  #only("4")[
    #voiceover("Der Scheitelpunkt der Parabel stellt entweder den höchsten oder den tiefsten Punkt des Graphen dar, je nachdem, ob die Parabel nach unten oder nach oben geöffnet ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Quadratische Gleichung: $a x^2 + b x + c = 0$ ($a ≠ 0$)]
  #only("2-")[- Graph: Parabel 🛝]
  #only("3-")[- Reale Anwendungen: Wurfbewegung, Optimierung 🚀]
  #only("4-")[- Lösungsmethoden: Faktorisierung, Mitternachtsformel 🧮]

  #only("1")[
    #voiceover("Zusammenfassend hat eine quadratische Gleichung die Form a x Quadrat plus b x plus c gleich null, wobei a nicht null ist.")
  ]
  #only("2")[
    #voiceover("Ihr Graph ist immer eine Parabel.")
  ]
  #only("3")[
    #voiceover("Quadratische Gleichungen haben viele reale Anwendungen, wie zum Beispiel die Modellierung von Wurfbewegungen oder die Lösung von Optimierungsproblemen.")
  ]
  #only("4")[
    #voiceover("Wir können quadratische Gleichungen mit Methoden wie der Faktorisierung oder der Mitternachtsformel lösen, die wir in zukünftigen Lektionen genauer betrachten werden.")
  ]
]