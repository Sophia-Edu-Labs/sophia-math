#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body  
]

#slide()[
#text(size: 30pt, weight: "bold")[Normalverteilung]
  
  #v(40pt)
  #only("1")[
    #voiceover("Betrachte den hier dargestellten Graphen einer Normalverteilung.")
  ]
  
  #only("2-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

mu = 100
sigma = 15
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)

ax.set_xlabel('X')
ax.set_ylabel('Dichte')  
ax.set_title(f'Normalverteilung')
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
  
  #only("2")[
    #voiceover("Was ist der Erwartungswert mü dieser Normalverteilung?")
  ]
]

  #questionDef(
    questionText: "Bestimme den Erwartungswert μ der dargestellten Normalverteilung:",
    answerOptions: ("μ = 100", "μ = 0"),
    correctAnswerIndex: 0,
    freeTextDetail: (
      fallbackOptionIndex: 1,
      answerOptionsEquality: ( 
        a: (
          roundingDecimalPlaces: 0,
          tolerance: none
        )
      ),
      answerOptionMatcher:("μ = \\key{a}"),
      answerOptionsTypes: (
        "a": "number",
      )
    ),
  )
