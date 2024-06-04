#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck in Gebäuden 🏙️]
#v(40pt)
#only("1-")[- Variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#v(20pt)
#only("2-")[- Das Gewicht der Flüssigkeitssäule nimmt mit der Höhe zu 📏]
#v(20pt)
#only("3-")[- Druck = $ρgh$ (Dichte × Schwerkraft × Höhe) 🧮]
#only("1")[
#voiceover("In Hochhäusern variiert der Wasserdruck mit der Höhe aufgrund der Gravitationskraft, die auf die Flüssigkeitssäule wirkt.")
]
#only("2")[
#voiceover("Mit zunehmender Höhe der Flüssigkeitssäule nimmt auch ihr Gewicht zu, was zu einem höheren Druck am Boden führt.")
]
#only("3")[
#voiceover("Dieser Druck kann mit der Formel 'p gleich rho g h' berechnet werden, wobei rho die Dichte der Flüssigkeit, g die Beschleunigung aufgrund der Schwerkraft und h die Höhe der Flüssigkeitssäule ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Druckvariation mit der Höhe 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

h = np.linspace(0, 100, 100)  # Höhenbereich von 0 bis 100 Meter
rho = 1000  # Dichte des Wassers (kg/m^3)
g = 9.81  # Beschleunigung aufgrund der Schwerkraft (m/s^2)

p = rho * g * h / 1000  # Druck in kPa

plt.figure(figsize=(6, 6))
plt.plot(p, h, linewidth=2, color='blue')
plt.xlabel('Druck (kPa)')
plt.ylabel('Höhe (m)')
plt.title('Wasserdruck vs. Höhe in einem Gebäude')
plt.grid(True)
plt.xlim(0, 1000)  # Druckbereich von 0 bis 1000 kPa
plt.ylim(0, 100)   # Höhenbereich von 0 bis 100 Meter
plt.annotate('Erdgeschoss', xy=(0, 0), xytext=(200, 10), arrowprops=dict(facecolor='black', shrink=0.05))
plt.annotate('Oberstes Stockwerk', xy=(rho*g*100/1000, 100), xytext=(600, 90), arrowprops=dict(facecolor='black', shrink=0.05))
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt, wie der Wasserdruck mit der Höhe in einem Gebäude variiert. Der Druck steigt linear mit der Höhe an, wobei der höchste Druck im Erdgeschoss und der niedrigste Druck im obersten Stockwerk liegt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auswirkungen und Lösungen 💡]
#v(40pt)
#only("1-")[- Hoher Druck in den unteren Stockwerken 🌊]
#v(20pt)
#only("2-")[- Potenzial für Lecks und Schäden 🚰]
#v(20pt)
#only("3-")[- Druckminderungsventile 🔽]
#v(20pt)
#only("4-")[- Getrennte Wassersysteme für verschiedene Zonen 🏘️]
#only("1")[
#voiceover("Der hohe Wasserdruck in den unteren Stockwerken kann Probleme wie Lecks und Schäden an den sanitären Einrichtungen verursachen.")
]
#only("2")[
#voiceover("Um diese Probleme zu mindern, setzen Ingenieure verschiedene Lösungen ein.")
]
#only("3")[
#voiceover("Eine gängige Lösung ist die Verwendung von Druckminderungsventilen, die helfen, einen sicheren und gleichmäßigen Wasserdruck im gesamten Gebäude aufrechtzuerhalten.")
]
#only("4")[
#voiceover("Ein weiterer Ansatz besteht darin, getrennte Wassersysteme für verschiedene Zonen des Gebäudes zu entwerfen, die jeweils ihre eigene Druckregulierung haben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Der Wasserdruck variiert mit der Höhe aufgrund der Schwerkraft 🌍]
#v(20pt)
#only("2-")[- Der Druck steigt linear mit der Höhe 📈]
#v(20pt)
#only("3-")[- Hoher Druck in den unteren Stockwerken kann Probleme verursachen 🚰]
#v(20pt)
#only("4-")[- Lösungen: Druckminderungsventile und getrennte Wassersysteme 💡]
#only("1")[
#voiceover("Zusammenfassend variiert der Wasserdruck in Hochhäusern mit der Höhe aufgrund der Gravitationskraft, die auf die Flüssigkeitssäule wirkt.")
]
#only("2")[
#voiceover("Der Druck steigt linear mit der Höhe an, wobei der höchste Druck im Erdgeschoss liegt.")
]
#only("3")[
#voiceover("Dieser hohe Druck in den unteren Stockwerken kann zu potenziellen Lecks und Schäden führen.")
]
#only("4")[
#voiceover("Um diese Probleme zu lösen, verwenden Ingenieure Druckminderungsventile und entwerfen getrennte Wassersysteme für verschiedene Zonen des Gebäudes.")
]
]