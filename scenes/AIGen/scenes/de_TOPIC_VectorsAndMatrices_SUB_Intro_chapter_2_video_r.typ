#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Das Skalarprodukt 🔢]
  #v(40pt)
  #only("1-")[- Grundlegende Operation in der Vektoralgebra 📐]
  #only("2-")[- Misst die Ähnlichkeit zwischen Vektoren 🤝]
  #only("3-")[- Lass uns die Definition und Verwendung rekapitulieren 🔍]

  #only("1")[
    #voiceover("Lass uns das Skalarprodukt, eine grundlegende Operation in der Vektoralgebra, rekapitulieren.")
  ]
  #only("2")[
    #voiceover("Das Skalarprodukt ist ein mächtiges Werkzeug, das die Ähnlichkeit zwischen zwei Vektoren misst.")
  ]
  #only("3")[
    #voiceover("Wir werden seine Definition rekapitulieren und sehen, wie es in verschiedenen Anwendungen verwendet wird.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Definition des Skalarprodukts]
  #v(40pt)
  #only("1-")[Für Vektoren $vec(a) = (a_1, a_2, ..., a_n)$ und $vec(b) = (b_1, b_2, ..., b_n)$:]
  #v(20pt)
  #only("2-")[
    $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + ... + a_n b_n = sum_(i=1)^n a_i b_i$
  ]
  #v(20pt)
  #only("3-")[Beispiel: $vec(a) = (2, 3)$, $vec(b) = (4, -1)$]
  #only("4-")[$vec(a) dot vec(b) = 2 dot 4 + 3 dot (-1) = 8 - 3 = 5$]

  #only("1")[
    #voiceover("Das Skalarprodukt ist für zwei Vektoren derselben Dimension definiert. Angenommen, wir haben die Vektoren a und b, jeder mit n Komponenten.")
  ]
  #only("2")[
    #voiceover("Das Skalarprodukt von a und b ist die Summe der Produkte ihrer entsprechenden Komponenten. Wir können dies als a_1 mal b_1, plus a_2 mal b_2 und so weiter bis a_n mal b_n schreiben.")
  ]
  #only("3")[
    #voiceover("Schauen wir uns ein einfaches Beispiel an. Betrachte den Vektor a gleich 2, 3 und den Vektor b gleich 4, minus 1.")
  ]
  #only("4")[
    #voiceover("Um ihr Skalarprodukt zu berechnen, multiplizieren wir die entsprechenden Komponenten und summieren: 2 mal 4, plus 3 mal minus 1. Das ergibt 8 minus 3, was gleich 5 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometrische Interpretation 📐]
  #v(40pt)
  #only("1-")[
    $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$
  ]
  #v(20pt)
  #only("2-")[Wo:]
  #only("3-")[- $|vec(a)|, |vec(b)|$ sind Vektorlängen]
  #only("4-")[- $theta$ ist der Winkel zwischen den Vektoren]
  #v(20pt)
  #only("5-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([3, 4])
b = np.array([4, 2])

# Calculate angle
theta = np.arccos(np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b)))

# Plot
plt.figure(figsize=(8, 6))
plt.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a')
plt.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b')
plt.xlim(-1, 6)
plt.ylim(-1, 6)
plt.gca().set_aspect('equal')
plt.grid(True)
plt.legend()

# Add angle arc and label
r = 1.5
t = np.linspace(0, theta, 100)
x = r * np.cos(t)
y = r * np.sin(t)
plt.plot(x, y, 'g-')
plt.text(r/2, r/2, r'$\\theta$', fontsize=16)

plt.title("Geometric Interpretation of Dot Product")
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Das Skalarprodukt hat eine geometrische Interpretation. Es ist gleich dem Produkt der Längen der Vektoren und dem Kosinus des Winkels zwischen ihnen.")
  ]
  #only("2")[
    #voiceover("Lass uns das aufschlüsseln:")
  ]
  #only("3")[
    #voiceover("Die vertikalen Balken um a und b repräsentieren die Längen der Vektoren.")
  ]
  #only("4")[
    #voiceover("Theta ist der Winkel zwischen den beiden Vektoren.")
  ]
  #only("5")[
    #voiceover("Dieses Diagramm veranschaulicht die geometrische Beziehung. Der rote Pfeil repräsentiert den Vektor a, der blaue Pfeil den Vektor b, und der grüne Bogen zeigt den Winkel theta zwischen ihnen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Skalarprodukt: $vec(a) dot vec(b) = sum_(i=1)^n a_i b_i$ 🧮]
  #only("2-")[- Geometrische Interpretation: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$ 📐]
  #only("3-")[- Misst die Ähnlichkeit zwischen Vektoren 🤝]
  #only("4-")[- Verwendet in Physik, Computergrafik, maschinellem Lernen 🔬🖥️🤖]

  #only("1")[
    #voiceover("Zusammenfassend ist das Skalarprodukt zweier Vektoren die Summe der Produkte ihrer entsprechenden Komponenten.")
  ]
  #only("2")[
    #voiceover("Geometrisch ist es gleich dem Produkt der Vektorlängen und dem Kosinus des Winkels zwischen ihnen.")
  ]
  #only("3")[
    #voiceover("Diese Operation liefert ein Maß für die Ähnlichkeit zwischen Vektoren.")
  ]
  #only("4")[
    #voiceover("Das Skalarprodukt wird in verschiedenen Bereichen weit verbreitet verwendet, einschließlich der Physik für Arbeitsberechnungen, der Computergrafik für Lichteffekte und dem maschinellen Lernen für Ähnlichkeitsmaße.")
  ]
]