#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Normalverteilungen]
  
  #v(40pt)
  
  #only("1")[
    #voiceover("Betrachte die hier dargestellten Graphen zweier Normalverteilungen.")
  ]
  
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

mu = 0
sigma1 = 2
sigma2 = 4

x = np.linspace(mu - 3*max(sigma1, sigma2), mu + 3*max(sigma1, sigma2), 100)
y1 = 1/(sigma1 * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma1**2)) 
y2 = 1/(sigma2 * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma2**2))

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y1, color='red', label='Verteilung 1')
ax.plot(x, y2, color='blue', label='Verteilung 2')

ax.set_xlabel('X')
ax.set_ylabel('Dichte')
ax.set_title(f'Zwei Normalverteilungen mit μ={mu}')
ax.legend()
ax.grid(True)

plt.tight_layout()
plt.show()
```, width: 360pt),
caption: []
)
]  
]
]
  ]
  #v(40pt)
  #only("2-")[
- $mu =0$
  ]
#only("3-")[
- $sigma =2$ oder $sigma =4$
  ]
  
  #only("2")[
    #voiceover("Beide Normalverteilungen haben den Erwartungswert mü gleich 0.")
  ]
    #only("3")[
    #voiceover("Die Standardabweichungen betragen sigma gleich 2 für die eine und sigma gleich 4 für die andere Verteilung. Welche der beiden Verteilungen (rot oder blau) gehört zu sigma gleich 2 und welche zu sigma gleich 4?")
  ]
  
  #questionDef(
    questionText: "Ordne die Standardabweichungen $\sigma$ den Verteilungen zu:",
    answerOptions: (
      "Rot: $\sigma = 2$, Blau: $\sigma = 4$",
      "Rot: $\sigma = 4$, Blau: $\sigma = 2$"
    ),
    correctAnswerIndex: 0,

  )

