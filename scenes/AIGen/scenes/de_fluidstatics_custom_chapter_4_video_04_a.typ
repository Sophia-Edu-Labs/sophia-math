#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Lass uns Schritt für Schritt sehen, wie wir dorthin gelangen.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir dorthin gelangen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- $rho_air(h) = a dot e^(-b dot h)$]
#v(20pt)
#only("2-")[- $a = 1.247$ kg/m³]
#v(20pt)
#only("3-")[- $b = 0.000104$]
#v(20pt)
#only("4-")[- Maximale Höhe $h = 2000$ m]
#only("1")[
#voiceover("Wir haben die Formel für die Luftdichte in Abhängigkeit von der Höhe gegeben: rho Luft von h ist gleich a mal e hoch minus b mal h.")
]
#only("2")[
#voiceover("Wir wissen auch, dass die Konstante a gleich 1.247 Kilogramm pro Kubikmeter ist,")
]
#only("3")[
#voiceover("und die Konstante b gleich 0.000104 ist.")
]
#only("4")[
#voiceover("Die maximale Höhe, die der Ballon erreichen kann, beträgt 2000 Meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Setze die gegebenen Werte in die Formel ein:]
#v(20pt)
#only("2-")[$rho_air(2000) = 1.247 dot e^(-0.000104 dot 2000)$]
#v(20pt)
#only("3-")[2. Vereinfache den Exponenten:]
#v(20pt)  
#only("4-")[$rho_air(2000) = 1.247 dot e^(-0.208)$]
#v(20pt)
#only("5-")[3. Berechne das Ergebnis:]
#v(20pt)
#only("6-")[$rho_air(2000) = 1.013$ kg/m³]
#only("1")[
#voiceover("Zuerst setzen wir die gegebenen Werte in die Formel ein. Wir ersetzen h durch 2000, a durch 1.247 und b durch 0.000104.")
]
#only("2")[
#voiceover("Das ergibt rho Luft von 2000 gleich 1.247 mal e hoch minus 0.000104 mal 2000.")
]
#only("3")[
#voiceover("Als nächstes vereinfachen wir den Exponenten. Minus 0.000104 mal 2000 ergibt minus 0.208.")
]
#only("4")[
#voiceover("Jetzt haben wir rho Luft von 2000 gleich 1.247 mal e hoch minus 0.208.")
]
#only("5")[
#voiceover("Schließlich berechnen wir das Ergebnis. 1.247 mal e hoch minus 0.208 ergibt 1.013.")
]
#only("6")[
#voiceover("Daher beträgt die Luftdichte in der maximalen Höhe von 2000 Metern 1.013 Kilogramm pro Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the constants
a = 1.247
b = 0.000104

# Define the function for air density
def rho_air(h):
    return a * np.exp(-b * h)

# Generate height values
h = np.linspace(0, 3000, 100)

# Calculate air density values
rho = rho_air(h)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(h, rho, color='blue', linewidth=2, label='Air Density')

# Highlight the point at maximum height
plt.scatter(2000, rho_air(2000), color='red', s=50, label='Density at Max Height')

# Improve aesthetics
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend(fontsize=12)
plt.title('Air Density vs Height', fontsize=16)
plt.xlabel('Height (m)', fontsize=14)
plt.ylabel('Air Density (kg/m³)', fontsize=14)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung, wie sich die Luftdichte mit der Höhe ändert. Die blaue Linie zeigt die Abnahme der Dichte mit zunehmender Höhe. Der rote Punkt hebt die Dichte in der maximalen Höhe von 2000 Metern hervor.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Die Luftdichte nimmt exponentiell mit der Höhe ab]
#v(20pt)
#only("2-")[- Die Formel $rho_air(h) = a dot e^(-b dot h)$ modelliert diese Beziehung]
#v(20pt)  
#only("3-")[- Setze die gegebenen Werte ein und vereinfache, um die Dichte in einer bestimmten Höhe zu finden]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse sind:")
]
#only("2")[
#voiceover("Die Luftdichte nimmt exponentiell mit der Höhe ab, und diese Beziehung wird durch die Formel rho Luft von h gleich a mal e hoch minus b mal h modelliert.")
]
#only("3")[
#voiceover("Um die Dichte in einer bestimmten Höhe zu finden, setze die gegebenen Werte in die Formel ein und vereinfache die Berechnung.")
]
]