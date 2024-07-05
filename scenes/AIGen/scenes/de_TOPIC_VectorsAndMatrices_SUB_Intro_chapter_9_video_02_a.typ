#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektoraddition]
  #v(40pt)

  #only("1-")[
    Gegebene Vektoren: $vec(a) = (5, 7)$ und $vec(b) = (2, -3)$
  ]
  #v(20pt)

  #only("2-")[
    Summe: $vec(s) = vec(a) + vec(b)$
  ]
  #v(20pt)

  #only("3-")[
    $vec(s) = (5, 7) + (2, -3)$
  ]
  #v(20pt)

  #only("4-")[
    $vec(s) = (5+2, 7+(-3))$
  ]
  #v(20pt)

  #only("5-")[
    $vec(s) = (7, 4)$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die Summe der Vektoren korrekt gefunden. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Um zwei Vektoren zu addieren, addieren wir ihre entsprechenden Komponenten. Nennen wir unseren Summenvektor s.")
  ]

  #only("3")[
    #voiceover("Wir beginnen mit unseren beiden Vektoren: (5, 7) und (2, -3).")
  ]

  #only("4")[
    #voiceover("Nun addieren wir die x-Komponenten: 5 plus 2 ergibt 7. Dann addieren wir die y-Komponenten: 7 plus minus 3 ergibt 4.")
  ]

  #only("5")[
    #voiceover("Daher ist die Summe der Vektoren (5, 7) und (2, -3) (7, 4).")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometrische Interpretation]
  #v(40pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 8))

# Define vectors
a = np.array([5, 7])
b = np.array([2, -3])
s = a + b

# Plot vectors
ax.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a (5, 7)')
ax.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b (2, -3)')
ax.quiver(0, 0, s[0], s[1], angles='xy', scale_units='xy', scale=1, color='g', label='s (7, 4)')
ax.quiver(a[0], a[1], b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', linestyle='dotted')

# Set limits and labels
ax.set_xlim(-1, 8)
ax.set_ylim(-4, 8)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vector Addition')
ax.grid(True)
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
    )
  ]
]

  #only("1")[
    #voiceover("Nun lass uns diese Vektoraddition visualisieren. In diesem Diagramm können wir die beiden ursprünglichen Vektoren und ihre Summe sehen.")
  ]

  #only("2")[
    #voiceover("Der rote Vektor repräsentiert a, welches (5, 7) ist. Der blaue Vektor repräsentiert b, welches (2, -3) ist.")
  ]

  #only("3")[
    #voiceover("Der grüne Vektor repräsentiert ihre Summe s, die wir als (7, 4) berechnet haben.")
  ]

  #only("4")[
    #voiceover("Beachte, wie der Summenvektor s die Diagonale des Parallelogramms bildet, das von den Vektoren a und b gebildet wird. Dies ist eine wichtige Eigenschaft der Vektoraddition.")
  ]
]