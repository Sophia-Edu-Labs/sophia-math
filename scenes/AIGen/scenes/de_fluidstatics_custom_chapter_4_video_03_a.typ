#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Maximale Höhe 🎈]
#v(40pt)
#only("1-")[
- Gegeben: $V = 1550$ m³, $a = 1.247$ kg/m³, $b = 0.000104$
]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Schauen wir uns an, wie wir das Schritt für Schritt lösen können. Uns wird gegeben, dass der Ballon am Boden auf ein Volumen von 1550 Kubikmetern aufgeblasen wird. Wir haben auch die Werte für die Konstanten a und b in der Luftdichteformel.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Dichtegleichung]
#v(40pt)
#only("1-")[
$ rho_"Luft"(h) = a dot e^(-b dot h) $
]
#only("1")[
#voiceover("Der Schlüssel zur Lösung dieses Problems ist die Gleichung für die Luftdichte als Funktion der Höhe. Rho der Luft in Höhe h ist gleich a mal e hoch minus b mal h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Auftriebsprinzip 🪁]
#v(40pt)
#only("1-")[
- Auf maximaler Höhe: $rho_"Luft" dot V = m$
]
#only("2-")[
- $m = rho_"Gas" dot V = 0.60 dot 1550 = 930$ kg
]
#only("1")[
#voiceover("Nach dem Auftriebsprinzip hört der Ballon auf zu steigen, wenn die Dichte der Luft mal das Volumen des Ballons gleich der Gesamtmasse des Ballons und seines Inhalts ist.")
]
#only("2")[
#voiceover("Wir können diese Masse berechnen, indem wir die Dichte des Gases im Ballon, die mit 0,60 Kilogramm pro Kubikmeter angegeben ist, mit dem Volumen multiplizieren. Das ergibt eine Masse von 930 Kilogramm.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Höhe berechnen 📏]
#v(40pt)
#only("1-")[
- $rho_"Luft"(h) dot V = m$
]
#only("2-")[
- $a dot e^(-b dot h) dot V = m$
]
#only("3-")[
- $e^(-b dot h) = m / (a dot V)$
]
#only("4-")[
- $-b dot h = ln(m / (a dot V))$
]
#only("5-")[
- $h = -(ln(m / (a dot V))) / b$
]
#only("1")[
#voiceover("Wir können nun die Gleichung aufstellen. Die Dichte der Luft auf maximaler Höhe mal das Volumen ist gleich der Masse.")
]
#only("2")[
#voiceover("Indem wir die Dichtegleichung einsetzen, erhalten wir a mal e hoch minus b mal h, mal Volumen, gleich Masse.")
]
#only("3")[
#voiceover("Indem wir beide Seiten durch a mal V teilen, isolieren wir das Exponentialterm.")
]
#only("4")[
#voiceover("Durch das Nehmen des natürlichen Logarithmus beider Seiten erhalten wir minus b mal h gleich den natürlichen Logarithmus von Masse über a mal V.")
]
#only("5")[
#voiceover("Schließlich, durch das Teilen durch minus b, lösen wir nach h auf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnen 🧮]
#v(40pt)
#only("1-")[
- $h = -(ln(930 / (1.247 dot 1550))) / 0.000104$
]
#only("2-")[
- $h = -(ln(0.4816)) / 0.000104$
]
#only("3-")[
- $h = -(-0.7306) / 0.000104$
]
#only("4-")[
- $h = 7025$ m
]
#only("1")[
#voiceover("Nun lass uns die Werte einsetzen. Die Höhe ist gleich dem negativen natürlichen Logarithmus von 930 über 1.247 mal 1550, alles geteilt durch 0.000104.")
]
#only("2")[
#voiceover("Durch das Vereinfachen des Bruchs im Logarithmus erhalten wir den natürlichen Logarithmus von 0.4816.")
]
#only("3")[
#voiceover("Der natürliche Logarithmus von 0.4816 ist minus 0.7306. Also haben wir minus von minus 0.7306 über 0.000104.")
]
#only("4")[
#voiceover("Durch das Teilen erhalten wir eine maximale Höhe von ungefähr 7025 Metern. So hoch kann der Ballon steigen, bevor er aufhört zu steigen.")
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

# Define the constants
a = 1.247
b = 0.000104
V = 1550
m = 0.60 * V

# Define the height range
h = np.linspace(0, 8000, 1000)

# Calculate the air density
rho_"Luft" = a * np.exp(-b * h)

# Create the plot
plt.figure(figsize=(10, 6))
plt.plot(h, rho_"Luft", color='blue', label='Luftdichte')
plt.axhline(m/V, color='red', linestyle='--', label='Ballondichte')
plt.xlabel('Höhe (m)')
plt.ylabel('Dichte (kg/m³)')
plt.title('Luftdichte vs Höhe')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das zeigt, wie die Luftdichte mit der Höhe abnimmt. Die blaue Kurve ist die Luftdichte, und die rote gestrichelte Linie ist die Dichte des Ballons. Wo sich diese beiden Linien schneiden, ist die maximale Höhe, die der Ballon erreichen kann.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎓]
#v(40pt)
#only("1-")[
- Verwendete Luftdichtegleichung: $rho_"Luft"(h) = a dot e^(-b dot h)$
]
#only("2-")[
- Angewandtes Auftriebsprinzip: $rho_"Luft" dot V = m$ auf maximaler Höhe
]
#only("3-")[
- Höhe berechnet: $h = -(ln(m / (a dot V))) / b$
]
#only("4-")[
- Maximale Höhe berechnet: $h = 7025$ m
]
#only("1")[
#voiceover("Zusammenfassend haben wir die Gleichung für die Luftdichte als Funktion der Höhe verwendet.")
]
#only("2")[
#voiceover("Wir haben das Auftriebsprinzip angewendet, das besagt, dass der Ballon aufhört zu steigen, wenn die Luftdichte mal das Volumen gleich der Masse ist.")
]
#only("3")[
#voiceover("Wir haben diese Gleichung nach der Höhe gelöst.")
]
#only("4")[
#voiceover("Und schließlich haben wir die Werte eingesetzt, um die maximale Höhe zu berechnen, die der Ballon erreichen kann, nämlich 7025 Meter. Großartige Arbeit bei der Lösung dieses Problems!")
]
]