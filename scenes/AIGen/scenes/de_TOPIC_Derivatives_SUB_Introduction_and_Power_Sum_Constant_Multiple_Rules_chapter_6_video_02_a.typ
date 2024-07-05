#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summenregel für Ableitungen]
  #v(40pt)

  #only("1-")[
    $f(x) = x^2 + 3x$
  ]

  #v(20pt)

  #only("2-")[
    $f'(x) = (x^2)' + (3x)'$
  ]

  #v(20pt)

  #only("3-")[
    $f'(x) = 2x + 3$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die Summenregel für Ableitungen korrekt angewendet. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat plus 3x. Um ihre Ableitung zu finden, wenden wir die Summenregel an, die besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist. Also können wir jedes Glied einzeln differenzieren.")
  ]

  #only("3")[
    #voiceover("Nun differenzieren wir jedes Glied. Die Ableitung von x Quadrat ist 2x, und die Ableitung von 3x ist einfach 3. Wenn wir diese zusammenfügen, erhalten wir f Strich von x gleich 2x plus 3, was unsere endgültige Antwort ist.")
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

x = np.linspace(-2, 2, 100)
y1 = x**2 + 3*x
y2 = 2*x + 3

fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y1, label='f(x) = x² + 3x', color='blue')
ax.plot(x, y2, label="f'(x) = 2x + 3", color='red')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Function and its Derivative')
ax.legend()
ax.grid(True)

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

#only("1")[
  #voiceover("Lass uns unsere Funktion und ihre Ableitung visualisieren. Die blaue Kurve repräsentiert unsere ursprüngliche Funktion, f von x gleich x Quadrat plus 3x. Die rote Linie repräsentiert ihre Ableitung, f Strich von x gleich 2x plus 3.")
]

#only("2")[
  #voiceover("Beachte, dass die Ableitung eine gerade Linie ist, während die ursprüngliche Funktion eine Parabel ist. Das liegt daran, dass die Ableitung einer quadratischen Funktion immer eine lineare Funktion ist.")
]

#only("3")[
  #voiceover("Beachte auch, dass dort, wo die blaue Kurve ein Minimum hat, die rote Linie die x-Achse schneidet. Dies veranschaulicht eine wichtige Eigenschaft: An der Minimalstelle einer Funktion ist ihre Ableitung gleich null.")
]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte]
  #v(40pt)

  #only("1-")[- Summenregel: $(f(x) + g(x))' = f'(x) + g'(x)$ 📏]
  #v(20pt)
  #only("2-")[- Potenzregel: $(x^n)' = n x^(n-1)$ 🔢]
  #v(20pt)
  #only("3-")[- Konstante Vielfache Regel: $(c x)' = c$ 🔀]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zusammenfassen. Zuerst haben wir die Summenregel verwendet, die besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist.")
  ]

  #only("2")[
    #voiceover("Wir haben auch die Potenzregel angewendet, um x Quadrat zu differenzieren. Die Potenzregel besagt, dass die Ableitung von x hoch n n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("Schließlich haben wir die Regel für konstante Vielfache verwendet, die besagt, dass die Ableitung eines konstanten Vielfachen von x einfach die Konstante ist.")
  ]
]