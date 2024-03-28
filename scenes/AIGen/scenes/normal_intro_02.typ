#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("In diesem Video zeige ich dir, wie man Schritt für Schritt eine Aufgabe zur Normalverteilung löst. Wir betrachten dazu folgendes Beispiel.")
  ]
  
  #text(size: 30pt, weight: "bold")[Normalverteilung]
  
  #v(40pt)
  
  #only("2-")[
    - X normalverteilt
    - $mu = 100$
    - $sigma = 10$
    - Bestimme $P(X < 90)$.
  ]
  
  #only("2")[
    #voiceover("Gegeben ist eine normalverteilte Zufallsvariable X mit Erwartungswert mü gleich 100 und Standardabweichung sigma gleich 10. Gesucht ist die Wahrscheinlichkeit P von x kleiner 90, also dass X kleiner als 90 ist.")
  ]
  
  #only("3")[  
    #voiceover("Schritt 1: Wir bestimmen den sogenannten z-Wert oder auch die standardisierte Zufallsvariable. Dafür setzen wir in die Formel z = x - mü durch sigma ein.")
  ]
  #only("3-")[
    #v(20pt)
    #text(weight:"bold")[Schritt 1:] Bestimme z-Wert
    - z = (x - μ) / σ
    - z = (90 - 100) / 10 = -1
  ]
  
  #only("4")[
    #voiceover("Schritt 2: Mit diesem z-Wert von -1 schauen wir nun in der Tabelle der Standardnormalverteilung nach. Dort finden wir den Wert phi von minus eins, also ungefähr 0,16 oder 16%.")
  ]  
  #only("4-")[
    #v(20pt)
    #text(weight:"bold")[Schritt 2:] Schlage z-Wert in Tabelle nach
    - $φ(-1) ≈ 0,16 = 16%$
  ]

  #only("5-")[
    #v(20pt)
    #text(weight:"bold")[Schritt 3:] Ergebnis
    - $P(X < 90) ≈ 16%$
  ] 
  #only("5")[
    #voiceover("Somit ist unser Endergebnis: Die Wahrscheinlichkeit P von x kleiner 90 beträgt ca. 16%.")
  ]
  
  #v(40pt)
   
#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

mu = 100
sigma = 10
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp( - (x - mu)**2 / (2 * sigma**2))

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y)

ax.fill_between(x, y, 0, where=(x < 90), alpha=0.5, color='red')
ax.text(80, 0.015, 'P(X < 90) ≈ 16%', fontsize=12, color='red')

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
  
  #only("6")[
    #voiceover("Zur Veranschaulichung sehen wir hier nochmal den Graphen der Normalverteilung mit mü gleich 100 und sigma gleich 10. Die rot schraffierte Fläche entspricht der gesuchten Wahrscheinlichkeit P von x kleiner 90 von ca 16 prozent.")
  ]
]
