#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Gerade und Ungerade Potenzfunktionen 📊]
  #v(40pt)
  #only("1-")[- Potenzfunktionen: $f(x) = x^n$, wobei $n$ eine ganze Zahl ist 🔢]
  #only("2-")[- Gerade Potenzen: $n$ ist gerade (z.B. 2, 4, 6, ...) 🔄]
  #only("3-")[- Ungerade Potenzen: $n$ ist ungerade (z.B. 1, 3, 5, ...) ↔️]
  #only("1")[
    #voiceover("Lass uns Potenzfunktionen und ihre Symmetrieeigenschaften überprüfen. Eine Potenzfunktion hat die Form f von x gleich x hoch n, wobei n eine ganze Zahl ist.")
  ]
  #only("2")[
    #voiceover("Wenn n gerade ist, also eine Zahl wie 2, 4, 6 und so weiter, nennen wir es eine gerade Potenzfunktion.")
  ]
  #only("3")[
    #voiceover("Wenn n ungerade ist, wie 1, 3, 5 und so weiter, nennen wir es eine ungerade Potenzfunktion.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Symmetrie von geraden Potenzfunktionen 🔄]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^2$')
ax.axvline(x=0, color='k', linestyle='--')
ax.axhline(y=0, color='k', linestyle='--')
ax.legend()
ax.set_title('Even Power Function: $f(x) = x^2$')
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("2-")[- Symmetrisch zur y-Achse 🪞]
  #only("3-")[- $f(-x) = f(x)$ für alle $x$]
  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel einer geraden Potenzfunktion an, f von x gleich x Quadrat.")
  ]
  #only("2")[
    #voiceover("Beachte, wie der Graph symmetrisch zur y-Achse ist. Das bedeutet, wenn wir den Graphen entlang der y-Achse falten würden, würden die beiden Hälften perfekt übereinander liegen.")
  ]
  #only("3")[
    #voiceover("Mathematisch drücken wir diese Symmetrie als f von minus x gleich f von x für alle x aus. Das bedeutet, dass für jeden x-Wert die Funktion denselben Wert liefert, egal ob wir x oder minus x eingeben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Symmetrie von ungeraden Potenzfunktionen ↔️]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

fig, ax = plt.subplots()
ax.plot(x, y, label='$f(x) = x^3$')
ax.axvline(x=0, color='k', linestyle='--')
ax.axhline(y=0, color='k', linestyle='--')
ax.legend()
ax.set_title('Odd Power Function: $f(x) = x^3$')
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("2-")[- Symmetrisch zum Ursprung (0,0) 🎯]
  #only("3-")[- $f(-x) = -f(x)$ für alle $x$]
  #only("1")[
    #voiceover("Nun, lass uns eine ungerade Potenzfunktion überprüfen, f von x gleich x hoch drei.")
  ]
  #only("2")[
    #voiceover("Beobachte, dass dieser Graph symmetrisch zum Ursprung, dem Punkt (0,0), ist. Wenn wir den Graphen um 180 Grad um den Ursprung drehen würden, sähe er genau gleich aus.")
  ]
  #only("3")[
    #voiceover("Mathematisch drücken wir diese Symmetrie als f von minus x gleich minus f von x für alle x aus. Das bedeutet, dass für jeden x-Wert der Funktionswert für minus x das Negative des Funktionswerts für x ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Gerade Potenzfunktionen: symmetrisch zur y-Achse 🔄]
  #only("2-")[- Ungerade Potenzfunktionen: symmetrisch zum Ursprung ↔️]
  #only("3-")[- Gerade: $f(-x) = f(x)$, Ungerade: $f(-x) = -f(x)$ 🧮]
  #only("4-")[- Symmetrie hilft beim Zeichnen und Verstehen des Funktionsverhaltens 📊]
  #only("1")[
    #voiceover("Zusammenfassend sind gerade Potenzfunktionen symmetrisch zur y-Achse,")
  ]
  #only("2")[
    #voiceover("während ungerade Potenzfunktionen symmetrisch zum Ursprung sind.")
  ]
  #only("3")[
    #voiceover("Für gerade Funktionen gilt f von minus x gleich f von x, und für ungerade Funktionen gilt f von minus x gleich minus f von x.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieser Symmetrieeigenschaften hilft uns, diese Funktionen leichter zu zeichnen und ihr Verhalten über die gesamte reelle Zahlenlinie hinweg zu verstehen.")
  ]
]