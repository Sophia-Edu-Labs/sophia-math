#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Prima, das ist richtig.")
]
#text(size: 30pt, weight: "bold")[Normalverteilung]
#v(40pt)
#only("2-")[
- X normalverteilt
- $mu = 500$
- $sigma = 50$
- Bestimme $P(X > 550)$.
]
#only("2")[
#voiceover("Gegeben war eine normalverteilte Zufallsvariable X mit Erwartungswert mü gleich 500 und Standardabweichung sigma gleich 50. Gesucht ist die Wahrscheinlichkeit P von X größer als 550.")
]
#only("3")[
#voiceover("Schritt 1: Wir bestimmen den z-Wert, indem wir in die Formel z = x - mü durch sigma einsetzen.")
]
#only("3-")[
#v(20pt)
#text(weight:"bold")[Schritt 1:] Bestimme z-Wert
- z = (x - μ) / σ
- z = (550 - 500) / 50 = 1
]
#only("4")[
#voiceover("Schritt 2: Mit diesem z-Wert von 1 schauen wir nun in der Tabelle der Standardnormalverteilung nach. Dort finden wir den Wert phi von 1. Da wir aber P von X größer als 550 suchen, müssen wir 1 minus phi von 1 rechnen. Das sind dann ungefähr 0,16 oder 16%.")
]
#only("4-")[
#v(20pt)
#text(weight:"bold")[Schritt 2:] Schlage z-Wert in Tabelle nach
- Gesucht: $P(X > 550)$
- $φ(1) ≈ 0,84 = 84%$
- $1 - φ(1) ≈ 0,16 = 16%$
]
#only("5-")[
#v(20pt)
#text(weight:"bold")[Schritt 3:] Ergebnis
- $P(X > 550) ≈ 16%$
]
#only("5")[
#voiceover("Somit ist unser Endergebnis: Die Wahrscheinlichkeit P von X größer als 550 beträgt ca. 16%.")
]]
#slide()[
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
mu = 500
sigma = 50
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)
ax.fill_between(x, y, 0, where=(x > 550), alpha=0.5, color='red')
ax.text(560, 0.002, 'P(X > 550) ≈ 16%', fontsize=12, color='red')
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
#only("1")[
#voiceover("Zur Veranschaulichung sehen wir hier nochmal den Graphen der Normalverteilung mit mü gleich 500 und sigma gleich 50. Die rot schraffierte Fläche entspricht der gesuchten Wahrscheinlichkeit P von X größer als 550 von circa 16 prozent.")
]
]