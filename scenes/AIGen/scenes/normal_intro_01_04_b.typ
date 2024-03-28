#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Nicht ganz.")
]
#text(size: 30pt, weight: "bold")[Standardabweichung]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
mu = 0
sigma1 = 7
sigma2 = 8
x = np.linspace(mu - 3*max(sigma1, sigma2), mu + 3*max(sigma1, sigma2), 100)
y1 = 1/(sigma1 np.sqrt(2 np.pi)) np.exp( - (x - mu)*2 / (2 sigma1*2))
y2 = 1/(sigma2 np.sqrt(2 np.pi)) np.exp( - (x - mu)*2 / (2 sigma2*2))
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y1, color='green', label='Verteilung 1 (σ=7)')
ax.plot(x, y2, color='orange', label='Verteilung 2 (σ=8)')
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
#only("2")[
#voiceover("Hier siehst du nochmal die beiden Normalverteilungen. Wir hatten gefragt, welche Standardabweichung sigma zu welcher Verteilung gehört.")
]
#v(40pt)
#only("3")[
#voiceover("Die Standardabweichung sigma gibt an, wie stark die Werte um den Erwartungswert mü streuen.")
]
#only("4")[
#voiceover("Je größer sigma, desto breiter ist die Verteilung.")
]
#only("3-")[
- σ = Maß für die Streuung um μ
]
#only("4-")[
- Größeres σ → breitere Verteilung
]
#only("5")[
#voiceover("Wenn wir uns den Graphen anschauen, sehen wir, dass die orange Verteilung etwas breiter ist als die grüne.")
]
#only("6")[
#voiceover("Die orange Kurve entspricht also der Verteilung mit der größeren Standardabweichung sigma gleich 8.")
]
#only("5-")[
- Orange Verteilung breiter als grüne
]
#only("6-")[
- Orange: σ = 8
]
#only("7-")[
- Grün: σ = 7
]
#only("7")[
#voiceover("Folglich gehört zur schmaleren grünen Verteilung die kleinere Standardabweichung sigma gleich 7. Merke: Je größer die Standardabweichung sigma, desto breiter ist der Graph der Normalverteilung. Und je kleiner sigma, desto schmaler und spitzer ist die Verteilung.")
]
]