#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Super, das ist richtig.")
]
#text(size: 30pt, weight: "bold")[Erwartungswert]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
mu = 7
sigma = 2
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
#only("2")[
#voiceover("Hier siehst du nochmal den Graphen der Normalverteilung. Wir hatten nach dem Erwartungswert mü gefragt.")
]
#v(40pt)
#only("3")[
#voiceover("Der Erwartungswert mü einer Normalverteilung entspricht immer dem Wert, an dem die Dichtefunktion ihr Maximum erreicht, also dem höchsten Punkt der Kurve.")
]
#only("3-")[
- Erwartungswert $mu =$ Wert am Maximum der Dichtefunktion
]
#only("4")[
#voiceover("Hier sehen wir, dass das Maximum der Kurve bei X = 7 liegt. ")
]
#only("4-")[
- Maximum bei $X = 7$
]
#only("5-")[
- $->$Erwartungswert $mu = 7$
]
#only("5")[
#voiceover("Somit ist der gesuchte Erwartungswert dieser Normalverteilung mü = 7.")
]
]