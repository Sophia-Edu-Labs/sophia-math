#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativem Koeffizienten]
  #v(40pt)
  #only("1-")[📊 Erforschung von Graphtransformationen]
  #v(20pt)
  #only("2-")[🔍 Fokus: $f(x) = a x^n$, wobei $a < 0$]
  #v(20pt)
  #only("3-")[❓ Wie beeinflusst ein negativer 'a' den Graphen?]

  #only("1")[
    #voiceover("Willkommen zu unserer Erforschung von Potenzfunktionen! Heute werden wir eine faszinierende Eigenschaft dieser Funktionen untersuchen.")
  ]
  #only("2")[
    #voiceover("Insbesondere betrachten wir Potenzfunktionen in der Form f von x gleich a mal x hoch n, wobei a negativ ist.")
  ]
  #only("3")[
    #voiceover("Unsere Hauptfrage ist: Wie beeinflusst ein negativer Koeffizient a den Graphen einer Potenzfunktion? Lass es uns herausfinden!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Auswirkung des negativen Koeffizienten]
  #v(40pt)
  #only("1-")[📈 Betrachte: $f(x) = x^2$ vs $g(x) = -x^2$]
  #v(20pt)
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = -x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='g(x) = -x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Comparison of f(x) = x² and g(x) = -x²')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  #v(20pt)
  #only("3-")[🔄 Beobachtung: Der Graph wird an der x-Achse gespiegelt]

  #only("1")[
    #voiceover("Lass uns zunächst zwei einfache Potenzfunktionen vergleichen: f von x gleich x Quadrat und g von x gleich negativ x Quadrat.")
  ]
  #only("2")[
    #voiceover("Hier ist ein Graph, der beide Funktionen zeigt. Die blaue Kurve repräsentiert f von x gleich x Quadrat, während die orange Kurve g von x gleich negativ x Quadrat darstellt.")
  ]
  #only("3")[
    #voiceover("Was fällt Dir auf? Der Graph von g von x sieht aus wie der Graph von f von x, gespiegelt an der x-Achse. Diese Spiegelung ist der Schlüsselfaktor des negativen Koeffizienten!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[📉 Negativer Koeffizient 'a' in $f(x) = a x^n$]
  #v(20pt)
  #only("2-")[🪞 Spiegelt den Graphen an der x-Achse]
  #v(20pt)
  #only("3-")[🔑 Wichtige Transformation für Potenzfunktionen]

  #only("1")[
    #voiceover("Zusammenfassend, wenn wir einen negativen Koeffizienten a in einer Potenzfunktion f von x gleich a mal x hoch n haben,")
  ]
  #only("2")[
    #voiceover("führt dies dazu, dass der Graph an der x-Achse gespiegelt wird.")
  ]
  #only("3")[
    #voiceover("Diese Spiegelung ist eine wichtige Transformation für Potenzfunktionen und ermöglicht es uns, schnell zu visualisieren, wie sich der Graph ändert, wenn wir einen negativen Koeffizienten einführen.")
  ]
]