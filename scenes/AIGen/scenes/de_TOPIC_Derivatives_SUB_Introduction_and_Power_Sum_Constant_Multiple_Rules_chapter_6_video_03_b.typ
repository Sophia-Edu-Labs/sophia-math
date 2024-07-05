#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung mit der Summenregel]
  #v(40pt)

  #only("1-")[
    $f(x) = 2x^3 + x^2$
  ]
  #v(20pt)

  #only("2-")[
    - Summenregel anwenden: $f'(x) = (2x^3)' + (x^2)'$
  ]
  #v(20pt)

  #only("3-")[
    - Jeden Term ableiten:
      $f'(x) = 6x^2 + 2x$
  ]
  #v(20pt)

  #only("4-")[
    - An $x = 1$ auswerten:
      $f'(1) = 6(1)^2 + 2(1) = 6 + 2 = 8$
  ]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich 2x hoch 3 plus x hoch 2.")
  ]

  #only("2")[
    #voiceover("Zuerst wenden wir die Summenregel der Ableitungen an. Diese Regel besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist. Daher können wir jeden Term separat ableiten.")
  ]

  #only("3")[
    #voiceover("Nun leiten wir jeden Term ab. Die Ableitung von 2x hoch 3 ist 6x hoch 2, und die Ableitung von x hoch 2 ist 2x. Also ist f Strich von x gleich 6x hoch 2 plus 2x.")
  ]

  #only("4")[
    #voiceover("Schließlich werten wir diese Ableitung an x gleich 1 aus. Wir setzen 1 für x in unseren Ausdruck ein. 6 mal 1 hoch 2 ist 6, und 2 mal 1 ist 2. Addiert ergibt das 8. Daher ist der Wert der Ableitung an x gleich 1 gleich 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Grafische Interpretation]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = 2*x**3 + x**2
dy = 6*x**2 + 2*x

fig, ax = plt.subplots(figsize=(10, 6))
ax.plot(x, y, label='f(x) = 2x³ + x²')
ax.plot(x, dy, label="f'(x) = 6x² + 2x")
ax.plot(1, 8, 'ro', markersize=10, label='f\'(1) = 8')
ax.axvline(x=1, color='g', linestyle='--', label='x = 1')
ax.axhline(y=8, color='g', linestyle='--')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_title('Function and its Derivative')

plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

  #only("1")[
    #voiceover("Lass uns visualisieren, was wir berechnet haben. Die blaue Kurve stellt unsere ursprüngliche Funktion dar, f von x gleich 2x hoch 3 plus x hoch 2. Die orange Kurve ist ihre Ableitung, f Strich von x gleich 6x hoch 2 plus 2x.")
  ]

  #only("2")[
    #voiceover("Der rote Punkt auf der orangefarbenen Kurve zeigt den Punkt, den wir berechnet haben: wenn x gleich 1 ist, ist die Ableitung gleich 8. Dieser Punkt repräsentiert die Steigung der Tangente an die ursprüngliche Funktion bei x gleich 1.")
  ]

  #only("3")[
    #voiceover("Die grünen gestrichelten Linien helfen uns, diesen Punkt klar zu sehen. Sie schneiden sich bei x gleich 1 und y gleich 8 und bestätigen unsere Berechnung.")
  ]
]