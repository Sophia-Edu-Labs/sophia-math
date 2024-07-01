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
    #align(center)[
      $vec(a) = (3, 4)$
      #v(10pt)
      $vec(b) = (1, 2)$
    ]
  ]

  #only("2-")[
    #v(20pt)
    #align(center)[
      $vec(a) + vec(b) = (3, 4) + (1, 2)$
    ]
  ]

  #only("3-")[
    #v(20pt)
    #align(center)[
      $= (3+1, 4+2)$
    ]
  ]

  #only("4-")[
    #v(20pt)
    #align(center)[
      $= (4, 6)$
    ]
  ]

  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Vektoren: Vektor a, der (3, 4) ist, und Vektor b, der (1, 2) ist.")
  ]

  #only("2")[
    #voiceover("Um diese Vektoren zu addieren, addieren wir ihre entsprechenden Komponenten. Also addieren wir (3, 4) und (1, 2).")
  ]

  #only("3")[
    #voiceover("Das bedeutet, wir addieren die ersten Komponenten: 3 plus 1, und dann die zweiten Komponenten: 4 plus 2.")
  ]

  #only("4")[
    #voiceover("Unser Endergebnis ist also der Vektor (4, 6). Das ist die Summe der beiden ursprünglichen Vektoren.")
  ]

  #only("5-")[
    #v(40pt)
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([3, 4])
b = np.array([1, 2])
c = a + b

# Create the plot
plt.figure(figsize=(8, 8))
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

# Plot vectors
plt.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a (3,4)')
plt.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b (1,2)')
plt.quiver(0, 0, c[0], c[1], angles='xy', scale_units='xy', scale=1, color='g', label='a+b (4,6)')

# Set limits and labels
plt.xlim(-1, 6)
plt.ylim(-1, 7)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Vector Addition')
plt.legend()
plt.grid(True)

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]

  #only("5")[
    #voiceover("Hier ist eine visuelle Darstellung unserer Vektoraddition. Der rote Vektor repräsentiert a, der blaue Vektor repräsentiert b, und der grüne Vektor ist ihre Summe, a plus b. Wie Du sehen kannst, ist das Addieren von Vektoren wie das Folgen eines Vektors und dann des anderen, was uns zum gleichen Punkt wie der Summenvektor führt.")
  ]
]]