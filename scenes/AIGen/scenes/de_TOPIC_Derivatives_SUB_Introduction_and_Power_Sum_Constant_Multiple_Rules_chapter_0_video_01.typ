#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in Ableitungen]
  #v(40pt)
  #only("1-")[🚗 Stell dir die Reise eines Autos vor...]
  #v(20pt)
  #only("2-")[📊 Wie schnell fährt es?]
  #v(20pt)
  #only("3-")[🔄 Änderungsrate]
  #v(20pt)
  #only("4-")[📈 Einführung: Die Ableitung]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in Ableitungen! Beginnen wir mit einem realen Szenario.")
  ]
  #only("2")[
    #voiceover("Stell dir ein Auto auf einer Reise vor. Wir möchten vielleicht wissen: Wie schnell fährt es zu einem bestimmten Zeitpunkt?")
  ]
  #only("3")[
    #voiceover("Diese Frage dreht sich um die Änderungsrate - wie schnell sich die Position des Autos im Laufe der Zeit ändert.")
  ]
  #only("4")[
    #voiceover("Hier kommt das Konzept der Ableitung ins Spiel. Es ist ein mächtiges Werkzeug, das uns hilft, Änderungsraten in verschiedenen Situationen zu verstehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was ist eine Ableitung?]
  #v(40pt)
  #only("1-")[📉 Steigung einer Tangente]
  #v(20pt)
  #only("2-")[🔍 Momentane Änderungsrate]
  #v(20pt)
  #only("3-")[💡 Repräsentiert, wie sich eine Funktion ändert]
  #v(40pt)
  #only("4-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**2

# Tangent line at x = 1
x_tangent = np.linspace(-2, 2, 100)
y_tangent = 2 * (x_tangent - 1) + 1

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = x^2')
plt.plot(x_tangent, y_tangent, 'r--', label='Tangent at x=1')
plt.plot(1, 1, 'ro', label='Point of Tangency (1, 1)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Function and its Tangent Line')
plt.legend()
plt.grid(True)
plt.show()
            ```,
            width: 360pt),
          )
        ]
      ]
    ]
  ]

  #only("1")[
    #voiceover("Eine Ableitung repräsentiert die Steigung der Tangente an eine Funktion an einem beliebigen Punkt.")
  ]
  #only("2")[
    #voiceover("Mit anderen Worten, sie gibt uns die momentane Änderungsrate der Funktion.")
  ]
  #only("3")[
    #voiceover("Die Ableitung zeigt uns im Wesentlichen, wie sich die Funktion an jedem Punkt ändert.")
  ]
  #only("4")[
    #voiceover("Lass uns das mit einem Diagramm veranschaulichen. Hier haben wir die Funktion f von x gleich x zum Quadrat. Die rot gestrichelte Linie repräsentiert die Tangente an dem Punkt, an dem x gleich 1 ist. Die Steigung dieser Tangente ist die Ableitung der Funktion an diesem Punkt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[📊 Ableitung: Änderungsrate einer Funktion]
  #v(20pt)
  #only("2-")[🚗 Anwendung im echten Leben: Geschwindigkeit eines Autos]
  #v(20pt)
  #only("3-")[📉 Grafisch: Steigung der Tangente]
  #v(20pt)
  #only("4-")[🔑 Schlüssel zum Verständnis des Verhaltens von Funktionen]

  #only("1")[
    #voiceover("Zusammenfassend repräsentiert eine Ableitung die Änderungsrate einer Funktion in Bezug auf eine Variable.")
  ]
  #only("2")[
    #voiceover("In unserem Autobeispiel würde die Ableitung uns die Geschwindigkeit des Autos zu jedem Zeitpunkt geben - wie schnell sich seine Position in Bezug auf die Zeit ändert.")
  ]
  #only("3")[
    #voiceover("Grafisch können wir die Ableitung als die Steigung der Tangente an die Funktion an jedem Punkt betrachten.")
  ]
  #only("4")[
    #voiceover("Das Verständnis von Ableitungen ist der Schlüssel zur Analyse, wie sich Funktionen verhalten und ändern, und macht es zu einem grundlegenden Konzept in der Analysis und ihren Anwendungen.")
  ]
]