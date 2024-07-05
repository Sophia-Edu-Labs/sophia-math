#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Ableitungen 📊]
  #v(40pt)
  #only("1-")[- Änderungsrate in verschiedenen Bereichen 🌡️]
  #only("2-")[- Entscheidend für das Verständnis des Verhaltens von Funktionen 📈]
  #only("3-")[- Lass uns das anhand eines Beispiels überprüfen 🚗]
  
  #only("1")[
    #voiceover("Lass uns Ableitungen, ein grundlegendes Konzept der Analysis, überprüfen. Ableitungen sind unerlässlich, um Änderungsraten in verschiedenen Bereichen zu verstehen.")
  ]
  #only("2")[
    #voiceover("Sie sind entscheidend, um das Verhalten von Funktionen zu analysieren und helfen uns, Dinge wie Geschwindigkeit, Beschleunigung und Wirtschaftswachstumsraten zu verstehen.")
  ]
  #only("3")[
    #voiceover("Um unser Verständnis aufzufrischen, schauen wir uns ein praktisches Beispiel mit einem fahrenden Auto an.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung in Aktion 🚗]
  #v(20pt)
  #only("1-")[Positionsfunktion: $s(t) = t^2 + 2t$ (Meter)]
  #v(10pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

            import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 5, 100)
s = t**2 + 2*t

fig, ax = plt.subplots()
ax.plot(t, s, label='s(t) = t² + 2t')
ax.set_xlabel('Zeit (s)')
ax.set_ylabel('Position (m)')
ax.set_title('Position des Autos über die Zeit')
ax.legend()
ax.grid(True)

plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(10pt)
  #only("3-")[Ableitung: $s'(t) = 2t + 2$ (Meter/Sekunde)]
  #v(10pt)
  #only("4-")[Interpretation: Momentangeschwindigkeit 🏎️]

  #only("1")[
    #voiceover("Betrachte ein Auto, das sich entlang einer geraden Linie bewegt. Seine Position zur Zeit t wird durch die Funktion s von t gleich t Quadrat plus 2t gegeben, wobei s in Metern und t in Sekunden gemessen wird.")
  ]
  #only("2")[
    #voiceover("Dieses Diagramm zeigt, wie sich die Position des Autos im Laufe der Zeit ändert. Beachte, dass die Kurve keine gerade Linie ist, was darauf hinweist, dass die Geschwindigkeit des Autos nicht konstant ist.")
  ]
  #only("3")[
    #voiceover("Die Ableitung dieser Funktion, s Strich von t, ist 2t plus 2. Dies sagt uns, wie sich die Position zu jedem gegebenen Zeitpunkt ändert.")
  ]
  #only("4")[
    #voiceover("Physikalisch gesehen repräsentiert diese Ableitung die Momentangeschwindigkeit des Autos. Sie gibt uns die Geschwindigkeit und Richtung des Autos zu einem bestimmten Zeitpunkt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]
  #v(40pt)
  #only("1-")[- Ableitung: Änderungsrate einer Funktion 📈]
  #only("2-")[- Notation: $f'(x)$ oder $dif(y)/dif(x)$]
  #only("3-")[- Repräsentiert die Steigung der Tangente an einem Punkt 📐]
  #only("4-")[- Entscheidend für Optimierung und Modellierung 🔬]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zu Ableitungen zusammenfassen. Eine Ableitung repräsentiert die Änderungsrate einer Funktion in Bezug auf ihre Variable.")
  ]
  #only("2")[
    #voiceover("Wir bezeichnen sie als f Strich von x oder d y über d x. Beide Notationen sind gebräuchlich und bedeuten dasselbe.")
  ]
  #only("3")[
    #voiceover("Geometrisch gesehen repräsentiert die Ableitung an einem Punkt die Steigung der Tangente an das Diagramm der Funktion an diesem Punkt.")
  ]
  #only("4")[
    #voiceover("Das Verständnis von Ableitungen ist entscheidend für Optimierungsprobleme und die Modellierung realer Phänomene in Bereichen wie Physik, Wirtschaft und Ingenieurwesen.")
  ]
]