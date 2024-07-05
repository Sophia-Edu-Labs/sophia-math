#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung von Polynomfunktionen]
  #v(40pt)

  #only("1-")[
    Gegebene Funktion: $f(x) = 4x^4 + 2x^3$
  ]

  #v(20pt)

  #only("2-")[
    Schritt 1: Anwenden der Potenzregel
    - $f'(x) = 16x^3 + 6x^2$
  ]

  #v(20pt)

  #only("3-")[
    Schritt 2: Auswerten bei $x = 1$
    - $f'(1) = 16(1)^3 + 6(1)^2$
  ]

  #v(20pt)

  #only("4-")[
    Schritt 3: Vereinfachen
    - $f'(1) = 16 + 6 = 22$
  ]

  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der gegebenen Funktion f von x gleich 4x hoch 4 plus 2x hoch 3.")
  ]

  #only("2")[
    #voiceover("Zuerst wenden wir die Potenzregel auf jeden Term an. Für 4x hoch 4 multiplizieren wir mit dem Exponenten 4 und reduzieren die Potenz um 1, was uns 16x hoch 3 gibt. Für 2x hoch 3 multiplizieren wir mit 3 und reduzieren die Potenz auf 2, was uns 6x hoch 2 gibt. Also ist die Ableitung f Strich von x gleich 16x hoch 3 plus 6x hoch 2.")
  ]

  #only("3")[
    #voiceover("Als nächstes müssen wir diese Ableitung bei x gleich 1 auswerten. Wir setzen 1 für x in unseren Ableitungsausdruck ein.")
  ]

  #only("4")[
    #voiceover("Schließlich vereinfachen wir. 16 mal 1 hoch 3 ist einfach 16, und 6 mal 1 hoch 2 ist 6. Wenn wir diese zusammenzählen, erhalten wir 22. Daher ist der Wert der Ableitung bei x gleich 1 gleich 22.")
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

def f(x):
    return 4*x**4 + 2*x**3

def f_prime(x):
    return 16*x**3 + 6*x**2

x = np.linspace(-1, 2, 1000)
y = f(x)
y_prime = f_prime(x)

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y, label='f(x) = 4x⁴ + 2x³')
ax.plot(x, y_prime, label="f'(x) = 16x³ + 6x²")
ax.plot(1, f_prime(1), 'ro', markersize=10, label="f'(1) = 22")

ax.set_xlim(-1, 2)
ax.set_ylim(-5, 30)
ax.axhline(y=0, color='k', linestyle='--')
ax.axvline(x=0, color='k', linestyle='--')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)

plt.title("Function and its Derivative")
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

#only("1")[
  #voiceover("Lass uns unsere Lösung visualisieren. Dieses Diagramm zeigt sowohl die ursprüngliche Funktion f von x in Blau als auch ihre Ableitung f Strich von x in Orange. Der rote Punkt zeigt den berechneten Wert: wenn x gleich 1 ist, ist die Ableitung gleich 22.")
]

#only("2")[
  #voiceover("Beachte, dass die Ableitungsfunktion in diesem Bereich immer positiv ist, was der ursprünglichen Funktion entspricht, die immer steigt. Je steiler die ursprüngliche Funktion, desto höher der Wert ihrer Ableitung.")
]

#only("3")[
  #voiceover("Diese grafische Darstellung hilft uns, die Beziehung zwischen einer Funktion und ihrer Ableitung zu verstehen. Die Ableitung an einem Punkt gibt uns die Steigung der Tangente an die ursprüngliche Funktion an diesem Punkt.")
]]