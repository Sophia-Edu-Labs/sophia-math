#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Quadratic Functions 📊]
  #v(40pt)
  #only("1-")[- Modellierung von realen Szenarien 🌍]
  #only("2-")[- Parabolische Formen in der Natur und Technik 🏗️]
  #only("3-")[- Lass uns die Standardform wiederholen 📝]

  #only("1")[
    #voiceover("Lass uns quadratische Funktionen wiederholen, die essentiell für die Modellierung verschiedener realer Szenarien sind.")
  ]
  #only("2")[
    #voiceover("Diese Funktionen erzeugen parabolische Formen, die wir oft in der Natur und Technik sehen, wie die Flugbahn eines Projektils oder die Form von Satellitenschüsseln.")
  ]
  #only("3")[
    #voiceover("Lass uns die Standardform der quadratischen Funktionen wiederholen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Standardform]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $f(x) = a x^2 + b x + c$
    ]
  ]
  #v(20pt)
  #only("2-")[- $a$: Leitkoeffizient (≠ 0) 🔑]
  #only("3-")[- $b$: linearer Koeffizient]
  #only("4-")[- $c$: Konstante]

  #only("1")[
    #voiceover("Die Standardform einer quadratischen Funktion ist f von x gleich a x Quadrat plus b x plus c.")
  ]
  #only("2")[
    #voiceover("Hier ist a der Leitkoeffizient. Es ist wichtig zu beachten, dass a nicht null sein kann, da die Funktion sonst linear statt quadratisch wäre.")
  ]
  #only("3")[
    #voiceover("b ist der lineare Koeffizient, der die Position der Symmetrieachse der Parabel beeinflusst.")
  ]
  #only("4")[
    #voiceover("Und c ist die Konstante, die bestimmt, wo die Parabel die y-Achse schneidet.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung quadratischer Funktionen]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = x**2
y2 = 2*x**2
y3 = -0.5*x**2 + 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='$f(x) = x^2$')
plt.plot(x, y2, label='$g(x) = 2x^2$')
plt.plot(x, y3, label='$h(x) = -0.5x^2 + 2x + 1$')

plt.title('Different Quadratic Functions')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')

plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("Lass uns einige quadratische Funktionen visualisieren. Die blaue Parabel repräsentiert f von x gleich x Quadrat, was unsere grundlegende quadratische Funktion ist. Die orange Kurve zeigt g von x gleich 2 x Quadrat, wobei ein größerer a-Wert die Parabel schmaler macht. Die grüne Kurve repräsentiert h von x gleich minus 0.5 x Quadrat plus 2x plus 1 und zeigt, wie negative a-Werte die Parabel umdrehen und wie b und c ihre Position verschieben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Standardform: $f(x) = a x^2 + b x + c$ 📊]
  #only("2-")[- $a$ bestimmt die Öffnungsrichtung und Breite 🔍]
  #only("3-")[- $b$ und $c$ beeinflussen die Position 📍]
  #only("4-")[- Vielseitig für die Modellierung verschiedener Phänomene 🌟]

  #only("1")[
    #voiceover("Zusammenfassend haben wir wiederholt, dass quadratische Funktionen die Standardform f von x gleich a x Quadrat plus b x plus c haben.")
  ]
  #only("2")[
    #voiceover("Der Koeffizient a bestimmt, ob die Parabel nach oben oder unten geöffnet ist und wie breit sie ist.")
  ]
  #only("3")[
    #voiceover("Die Koeffizienten b und c beeinflussen die Position der Parabel im Koordinatensystem.")
  ]
  #only("4")[
    #voiceover("Das Verständnis dieser Komponenten ermöglicht es uns, quadratische Funktionen zur Modellierung einer Vielzahl von realen Phänomenen zu verwenden, von der Bewegung von Projektilen bis zu Optimierungsproblemen.")
  ]
]