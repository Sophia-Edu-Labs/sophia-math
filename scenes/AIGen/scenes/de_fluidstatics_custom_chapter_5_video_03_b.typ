#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftriebskraft 🌊]
#v(40pt)
#only("1-")[Großartig! Deine Antwort von 750,255 N ist korrekt! 🎉]
#v(20pt)
#only("2-")[Lass uns die Lösung Schritt für Schritt durchgehen.]
#only("1")[
#voiceover("Leider ist deine Antwort nicht korrekt. Hier ist die richtige Lösung im Video erklärt.")
]
#only("2")[
#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Volumen des Tauchers: $V = 0.075 m^3$]
#v(20pt)
#only("2-")[- Dichte des Meerwassers: $rho = 1020 "kg"/m^3$]
#v(20pt)
#only("3-")[- Erdbeschleunigung: $g = 9.81 m/s^2$]
#only("1")[
#voiceover("Das Volumen des Tauchers beträgt 0,075 Kubikmeter.")
]
#only("2")[
#voiceover("Die Dichte des Meerwassers beträgt 1020 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Und die Erdbeschleunigung beträgt 9,81 Meter pro Sekunde zum Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formel]
#v(40pt)
#only("1-")[Die Formel für die Auftriebskraft lautet:]
#v(20pt)
#only("2-")[$ F_A = rho dot V dot g $]
#only("1")[
#voiceover("Die Formel für die Auftriebskraft lautet...")
]
#only("2")[
#voiceover("F_A gleich rho mal V mal g, wobei F_A die Auftriebskraft ist, rho die Dichte der Flüssigkeit, V das Volumen der verdrängten Flüssigkeit und g die Erdbeschleunigung ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Setze die gegebenen Werte in die Formel ein:]
#v(20pt)
#only("2-")[$ F_A = 1020 dot 0.075 dot 9.81 $]
#v(20pt)
#only("3-")[$ F_A = 750.255 N $]
#only("1")[
#voiceover("Wir setzen die gegebenen Werte in die Formel ein.")
]
#only("2")[
#voiceover("F_A gleich 1020 mal 0,075 mal 9,81.")
]
#only("3")[
#voiceover("Vereinfacht ergibt das F_A gleich 750,255 Newton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and a 3D Axes
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a cylinder
r = 0.2
h = 1.0
x = np.linspace(-r, r, 100)
z = np.linspace(0, h, 100)
X, Z = np.meshgrid(x, z)

Y = np.sqrt(r**2 - X**2)
ax.plot_surface(X, Y, Z, color='blue', alpha=0.5)
ax.plot_surface(X, -Y, Z, color='blue', alpha=0.5)

# Create arrows for buoyant force
ax.quiver(0, 0, 0, 0, 0, 1, length=0.5, color='red', arrow_length_ratio=0.2)
ax.text(0, 0, 0.6, 'Buoyant Force', color='red', ha='center')

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Diver and Buoyant Force')

# Adjust the view
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Tauchers und der auf ihn wirkenden Auftriebskraft. Der blaue Zylinder stellt den Taucher dar, und der rote Pfeil stellt die nach oben gerichtete Auftriebskraft dar.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Die auf den Taucher wirkende Auftriebskraft beträgt 750,255 N. 🏊]
#only("1")[
#voiceover("Abschließend beträgt die Auftriebskraft, die auf den Taucher mit einem Volumen von 0,075 Kubikmetern in dieser Tiefe wirkt, 750,255 Newton.")
]
]