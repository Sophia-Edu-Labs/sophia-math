#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
  #v(40pt)

  #only("1-")[- Funktion: $f(x) = 4x^5$]
  #v(20pt)
  #only("2-")[- Potenzregel: $dif/dif x (x^n) = n x^(n-1)$]
  #v(20pt)
  #only("3-")[- Ableitung: $f'(x) = 4 dot 5x^4$]
  #v(20pt)
  #only("4-")[- Bei $x = 1$: $f'(1) = 4 dot 5 dot 1^4 = 20$]

  #only("1")[
    #voiceover("Großartig! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich 4 x hoch fünf.")
  ]

  #only("2")[
    #voiceover("Um die Ableitung zu finden, verwenden wir die Potenzregel. Diese Regel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("Wenden wir diese Regel auf unsere Funktion an, erhalten wir f Strich von x gleich 4 mal 5 x hoch vier. Die 4 kommt als Konstante nach vorne, und 5 ist der neue Koeffizient aus der Potenzregel.")
  ]

  #only("4")[
    #voiceover("Nun müssen wir dies bei x gleich 1 auswerten. Setzen wir 1 für x ein, erhalten wir 4 mal 5 mal 1 hoch vier. Da jede Zahl hoch 4 einfach sie selbst ist, vereinfacht sich dies zu 4 mal 5, was 20 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung der Ableitung]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 1.5, 1000)
y = 4 * x**5
dy = 20 * x**4

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y, label='f(x) = 4x^5', color='blue')
ax.plot(x, dy, label="f'(x) = 20x^4", color='red')
ax.plot([1], [20], 'ro', markersize=10, label="f'(1) = 20")

ax.axhline(y=0, color='k', linestyle='--', linewidth=0.5)
ax.axvline(x=0, color='k', linestyle='--', linewidth=0.5)

ax.set_xlim(-1, 1.5)
ax.set_ylim(-5, 25)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True, linestyle=':', alpha=0.7)

plt.title('Function and its Derivative')
plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

  #only("1")[
    #voiceover("Lass uns visualisieren, was wir berechnet haben. Die blaue Kurve repräsentiert unsere ursprüngliche Funktion, f von x gleich 4 x hoch fünf. Die rote Kurve zeigt ihre Ableitung, f Strich von x gleich 20 x hoch vier.")
  ]

  #only("2")[
    #voiceover("Beachte den roten Punkt auf der Ableitungskurve bei x gleich 1. Dieser Punkt hat einen y-Wert von 20, was genau dem entspricht, was wir für f Strich von 1 berechnet haben.")
  ]

  #only("3")[
    #voiceover("Dieses Diagramm hilft uns zu verstehen, dass die Ableitung an einem Punkt die Steigung der Tangente an die ursprüngliche Funktion an diesem Punkt darstellt. Bei x gleich 1 beträgt diese Steigung 20.")
  ]
]