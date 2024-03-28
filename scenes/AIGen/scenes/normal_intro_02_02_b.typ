#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Leider falsch.")
]
#text(size: 30pt, weight: "bold")[Normalverteilung]
#v(40pt)
#only("2-")[
Schraubenlänge X normalverteilt
Erwartungswert $μ = 500 "mm"$
Standardabweichung $σ = 10 "mm"$
Gesucht: $P(X < 485 "mm")$ ]
#only("2")[
#voiceover("Gegeben war, dass die Länge X der von einer Maschine produzierten Schrauben normalverteilt ist, mit einem Erwartungswert mü von 500 Millimetern und einer Standardabweichung sigma von 10 Millimetern. Gesucht ist die Wahrscheinlichkeit P dafür, dass eine zufällig ausgewählte Schraube kürzer als 485 Millimeter ist.")
]
#only("3")[
#voiceover("Schritt 1: Wir bestimmen den sogenannten z-Wert, indem wir die gegebenen Werte in die Formel z = x - mü durch sigma einsetzen.")
]
#only("3-")[
#v(20pt)
#text(weight:"bold")[Schritt 1:] Bestimme z-Wert
z = (x - μ) / σ
z = (485 - 500) / 10 = -1.5 ]
#only("4")[
#voiceover("Schritt 2: Mit diesem z-Wert von -1.5 schauen wir nun in der Tabelle der Standardnormalverteilung nach. Dort finden wir den zugehörigen Wert phi von z. Dieser gibt direkt die gesuchte Wahrscheinlichkeit P an.")
]
#only("4-")[

#v(20pt)
#text(weight:"bold")[Schritt 2:] Ermittle φ(z) aus Tabelle
$φ(-1.5) ≈ 0.067 = 6.7%$ ]
#only("5-")[
#v(20pt)

#text(weight:"bold")[Schritt 3:] Ergebnis
$P(X < 485 "mm") ≈ 6.7%$ ]
#only("5")[
#voiceover("Somit ist unser Endergebnis: Die Wahrscheinlichkeit P dafür, dass eine zufällig ausgewählte Schraube kürzer als 485 Millimeter ist, beträgt circa 6.7 Prozent.")
]
]
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
sigma = 10
x = np.linspace(mu - 3sigma, mu + 3sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)2 / (2 * sigma2))
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)

ax.fill_between(x, y, 0, where=(x < 485), alpha=0.5, color='red')
ax.text(475, 0.015, 'P(X < 485 mm) ≈ 6.7%', fontsize=12, color='red')
ax.set_xlabel('Schraubenlänge X [mm]')
ax.set_ylabel('Dichte')

ax.set_title(f'Normalverteilung mit μ={mu} mm und σ={sigma} mm')
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
#voiceover("Zur Veranschaulichung sehen wir hier nochmal den Graphen der Normalverteilung der Schraubenlängen mit Erwartungswert mü gleich 500 Millimeter und Standardabweichung sigma gleich 10 Millimeter. Die rot schraffierte Fläche entspricht der gesuchten Wahrscheinlichkeit P von X kleiner als 485 Millimeter von circa 6.7 Prozent.")
]
]