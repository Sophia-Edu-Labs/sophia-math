#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Was ist die Normalverteilung?")
  ]

  #text(size: 30pt, weight: "bold")[Normalverteilung]
  
  #v(40pt)
  
  #only("2")[
    #voiceover("Die Normalverteilung ist eine wichtige Wahrscheinlichkeitsverteilung in der Statistik. Hier kannst du eine beispielhafte Visualisierung der Normalverteilung sehen")
  ]

  #only("3-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
  pyimage(```
import matplotlib.pyplot as plt
import numpy as np

mu = 170 
sigma = 8
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)

ax.set_xlabel('X')
ax.set_ylabel('Dichte')
ax.set_title(f'Normalverteilung mit μ={mu} und σ={sigma}')
ax.grid(True)

plt.tight_layout()
plt.show()
```, width: 360pt),
          caption: []
        )
      ]
    ]
  ]
  #v(40pt)
  #only("3-")[
#text(weight:"bold")[Merkmale]
  #v(20pt)
  ]
  #only("4-")[
    - Erwartungswert $mu$
  ]
  #only("5-")[
    - Standardabweichung $sigma$
  ]
  #only("6-")[
    - Symmetrisch
  ]
  #only("3")[
    #voiceover("Die Normalverteilung wird durch zwei Kennzahlen beschrieben. Die erste Kennzahl")
  ]
    #only("4")[
    #voiceover("ist der Erwartungswert mü. Der Erwartungswert gibt den Mittelwert der Verteilung an, also den Punkt, wo die  Wahrscheinlichkeitsverteilung ihren Höchstwert erreicht. In diesem Beispiel ist der Erwartungswert 170")
  ]
  #only("5")[
    #voiceover("Die zweite Kennzahl ist die Standardabweichung sigma. Die Standardabweichung gibt an, wie weit die Werte um den Erwartungswert streuen. In diesem Beispiel beträgt die Standardabweichung 8. Wenn die Standardabweichung größer ist, streuen die Werte weiter um den Erwartungswert, also wird die Kurve hier breiter")
  ]
  #only("6")[
    #voiceover("Die Normalverteilung ist symmetrisch um den Erwartungswert. Das bedeutet, dass die Wahrscheinlichkeitsverteilung auf beiden Seiten des Erwartungswerts gleich aussieht. Und es heißt auch: je weiter die Werte vom Erwartungswert entfernt sind, desto unwahrscheinlicher sind sie. Somit sind Werte die viel kleiner oder viel größer als der Erwartungswert sind, sehr unwahrscheinlich")
  ]

]