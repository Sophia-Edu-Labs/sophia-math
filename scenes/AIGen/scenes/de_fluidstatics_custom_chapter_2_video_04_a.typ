#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Dammdrucks 🌊]
#v(40pt)
#only("1-")[Gegeben:
- Wassertiefe $h = 10$ m
- Dichte des Wassers $rho = 1000$ kg/m³
- Erdbeschleunigung $g = 9.81$ m/s²]
// Die gegebenen Informationen werden auf allen Folien angezeigt
#v(20pt)
#only("2-")[Formel:
$p = rho dot g dot h$]
// Die Formel wird ab Folie 2 angezeigt
#only("1")[
#voiceover("Großartige Arbeit! Du hast den Druck am Boden des Damms korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Um den Druck zu finden, verwenden wir die Formel p gleich rho mal g mal h, wobei rho die Dichte des Wassers, g die Erdbeschleunigung und h die Wassertiefe ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 📝]
#v(40pt)
#only("1-")[Einsetzen der gegebenen Werte:
$p = 1000 dot 9.81 dot 10$]
// Das Einsetzen wird auf allen Folien angezeigt
#v(20pt)
#only("2-")[Vereinfachen:
$p = 98100$]
// Das vereinfachte Ergebnis wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[Einheiten:
$p = 98100$ Pa (Pascal)]
// Die Einheiten werden ab Folie 3 hinzugefügt
#only("1")[
#voiceover("Zuerst setzen wir die gegebenen Werte in die Formel ein. Rho ist 1000 Kilogramm pro Kubikmeter, g ist 9,81 Meter pro Quadratsekunde und h ist 10 Meter.")
]
#only("2")[
#voiceover("Wenn wir diese Werte multiplizieren, erhalten wir 98.100.")
]
#only("3")[
#voiceover("Die Einheit für Druck ist Pascal, daher lautet unsere endgültige Antwort 98.100 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

h = 10  # Wassertiefe in Metern
rho = 1000  # Dichte des Wassers in kg/m³
g = 9.81  # Erdbeschleunigung in m/s²

# Druck berechnen
p = rho * g * h

# Tiefenarray für die Darstellung erstellen
depth = np.linspace(0, h, 100)

# Druck in jeder Tiefe berechnen
pressure = rho * g * depth

# Druck vs. Tiefe darstellen
plt.figure(figsize=(6, 4))
plt.plot(pressure / 1000, -depth, linewidth=2, color='blue')
plt.xlabel('Druck (kPa)', fontsize=14)
plt.ylabel('Tiefe (m)', fontsize=14)
plt.title('Druck vs. Tiefe in einem Damm', fontsize=16)
plt.grid(True)

# Druckwert am Boden hinzufügen
plt.text(80, -9, f'Druck am Boden = {p/1000:.2f} kPa', fontsize=12, color='red')

plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: "Der Druck steigt linear mit der Tiefe im Damm an und erreicht am Boden 98,1 kPa.",
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das zeigt, wie der Druck mit der Tiefe im Damm zunimmt. Die blaue Linie stellt den Druck in verschiedenen Tiefen dar, und der rote Text zeigt den berechneten Druck am Boden des Damms, der 98,1 Kilopascal beträgt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
- Der Druck in einer Flüssigkeit hängt von der Tiefe, der Dichte und der Schwerkraft ab
- Der Druck steigt linear mit der Tiefe
- In einer Tiefe von 10 m im Wasser beträgt der Druck 98.100 Pa (98,1 kPa)
#only("1")[
#voiceover("Zusammenfassend sind die wichtigsten Punkte, die Du dir merken solltest, dass der Druck in einer Flüssigkeit von der Tiefe, der Dichte der Flüssigkeit und der Erdbeschleunigung abhängt. Der Druck steigt linear mit der Tiefe, und in einer Tiefe von 10 Metern im Wasser beträgt der Druck 98.100 Pascal oder 98,1 Kilopascal.")
]
]