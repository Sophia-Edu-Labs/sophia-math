#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Skalare Multiplikation von Vektoren 🔢➡️]
  #v(40pt)
  #only("1-")[- Vektoren sind grundlegend in Mathematik und Physik 📐🧮]
  #only("2-")[- Skalare Multiplikation: eine Methode, Vektoren zu skalieren 📏]
  #only("3-")[- Lass uns diese Operation mit Beispielen überprüfen 🔍]
  
  #only("1")[
    #voiceover("Lass uns die skalare Multiplikation von Vektoren überprüfen. Vektoren sind grundlegend in Mathematik und Physik und repräsentieren Größen mit sowohl Betrag als auch Richtung.")
  ]
  #only("2")[
    #voiceover("Die skalare Multiplikation ist eine Operation, die es uns ermöglicht, Vektoren zu skalieren, indem wir ihren Betrag ändern, während die Richtung erhalten bleibt.")
  ]
  #only("3")[
    #voiceover("Wir werden dieses Konzept Schritt für Schritt mit einigen Beispielen durchgehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalare Multiplikation: Definition 📚]
  #v(40pt)
  #only("1-")[- Skalar: eine einzelne Zahl 🔢]
  #only("2-")[- Vektor: eine geordnete Liste von Zahlen ➡️]
  #only("3-")[- Skalare Multiplikation: multipliziere jede Komponente mit dem Skalar 🔄]
  
  #only("1")[
    #voiceover("Zuerst, lass uns erinnern, was wir unter einem Skalar und einem Vektor verstehen. Ein Skalar ist einfach eine einzelne Zahl, wie 2 oder minus 3.")
  ]
  #only("2")[
    #voiceover("Ein Vektor hingegen ist eine geordnete Liste von Zahlen. Zum Beispiel könnten wir in zwei Dimensionen einen Vektor (3, 4) haben.")
  ]
  #only("3")[
    #voiceover("Die skalare Multiplikation beinhaltet, jede Komponente des Vektors mit dem Skalar zu multiplizieren. Dies skaliert den Vektor nach oben oder unten, abhängig vom Wert des Skalars.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: 2D Vektor 🎯]
  #v(20pt)
  #only("1-")[
    Sei $vec(v) = mat(2; 3)$ und Skalar $c = 4$
  ]
  #v(20pt)
  #only("2-")[
    $c vec(v) = 4 mat(2; 3) = mat(4 dot 2; 4 dot 3) = mat(8; 12)$
  ]
  #v(20pt)
  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([2, 3])
# Scaled vector
sv = 4 * v

plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
plt.axvline(x=0, color='k', linestyle='-', linewidth=0.5)

# Plot original vector
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='v')
# Plot scaled vector
plt.quiver(0, 0, sv[0], sv[1], angles='xy', scale_units='xy', scale=1, color='red', label='4v')

plt.xlim(-1, 13)
plt.ylim(-1, 13)
plt.grid(True)
plt.legend()
plt.title('Scalar Multiplication of a 2D Vector')
plt.xlabel('x')
plt.ylabel('y')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Lass uns ein Beispiel in zwei Dimensionen betrachten. Betrachte den Vektor v gleich (2, 3) und lass uns ihn mit dem Skalar 4 multiplizieren.")
  ]
  #only("2")[
    #voiceover("Um diese Multiplikation durchzuführen, multiplizieren wir jede Komponente von v mit 4. Also, 4 mal (2, 3) ergibt (4 mal 2, 4 mal 3), was uns (8, 12) gibt.")
  ]
  #only("3")[
    #voiceover("Hier ist eine visuelle Darstellung. Der blaue Pfeil repräsentiert unseren ursprünglichen Vektor v, und der rote Pfeil zeigt das Ergebnis der Multiplikation von v mit 4. Wie du sehen kannst, bleibt die Richtung gleich, aber der Betrag hat sich um den Faktor 4 erhöht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Skalare Multiplikation: $c vec(v) = (c v_1, c v_2, ..., c v_n)$ 🔢]
  #only("2-")[- Multipliziert jede Komponente mit dem Skalar 🔄]
  #only("3-")[- Ändert den Betrag, behält die Richtung bei ➡️]
  #only("4-")[- Wichtig in Physik, Computergrafik und mehr! 🌟]
  
  #only("1")[
    #voiceover("Zusammenfassend, die skalare Multiplikation eines Vektors v mit einem Skalar c wird definiert als c mal v gleich c v-1, c v-2 und so weiter bis c v-n, wobei v-i die i-te Komponente des Vektors darstellt.")
  ]
  #only("2")[
    #voiceover("Diese Operation multipliziert jede Komponente des Vektors mit dem Skalar.")
  ]
  #only("3")[
    #voiceover("Als Ergebnis ändert die skalare Multiplikation den Betrag des Vektors, behält jedoch seine Richtung bei, es sei denn, der Skalar ist negativ, was die Richtung umkehrt.")
  ]
  #only("4")[
    #voiceover("Das Verständnis der skalaren Multiplikation ist in verschiedenen Bereichen entscheidend, einschließlich der Physik zum Skalieren von Kräften, der Computergrafik für Transformationen und vielen anderen Anwendungen in Mathematik und Wissenschaft.")
  ]
]