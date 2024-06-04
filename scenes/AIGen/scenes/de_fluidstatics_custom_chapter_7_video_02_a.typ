#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Design eines schwimmenden Hauses 🏠]
#v(40pt)
#only("1-")[- Berechnung des verdrängten Wasservolumens 💧]
#v(20pt)
#only("2-")[- Gegeben: Masse des Hauses = 50 Tonnen (50.000 kg) 🏗️]
#v(20pt)
#only("3-")[- Formel: $ V = m / rho $ 🧮]
#v(20pt)
#only("4-")[- Dichte des Wassers: $ rho = 1000 "kg/m"^3 $ 🌊]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Jetzt schauen wir uns an, wie wir das Schritt für Schritt lösen können.")
]
#only("2")[
#voiceover("Es ist gegeben, dass das schwimmende Haus 50 Tonnen wiegt, was 50.000 Kilogramm entspricht.")
]
#only("3")[
#voiceover("Um das Volumen des verdrängten Wassers zu finden, können wir die Formel V gleich m geteilt durch rho verwenden, wobei V das Volumen, m die Masse und rho die Dichte ist.")
]
#only("4")[
#voiceover("Wir wissen, dass die Dichte des Wassers 1000 Kilogramm pro Kubikmeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🎯]
#v(40pt)
#only("1-")[$ V = m / rho $]
#v(20pt)
#only("2-")[$ V = 50000 / 1000 $]
#v(20pt)
#only("3-")[$ V = 50 "m"^3 $]
#only("1")[
#voiceover("Also, lass uns die Werte in die Formel einsetzen. Volumen gleich Masse geteilt durch Dichte.")
]
#only("2")[
#voiceover("Das sind 50.000 Kilogramm geteilt durch 1000 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Wenn wir das vereinfachen, erhalten wir, dass das verdrängte Wasservolumen 50 Kubikmeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and a 3D Axes
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Create a cube
X, Y, Z = np.meshgrid(np.arange(2), np.arange(5), np.arange(5))
cube = (X < 1) & (Y < 5) & (Z < 5)
colors = np.empty(cube.shape, dtype=object)
colors[cube] = 'blue'

# Plot the cube
ax.voxels(cube, facecolors=colors, edgecolor='k', alpha=0.5)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('50 m³ Würfel')

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung, wie 50 Kubikmeter aussehen. Es ist ein Würfel mit den Abmessungen 5 Meter mal 5 Meter mal 2 Meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔄]
#v(40pt)
#only("1-")[- Masse des schwimmenden Hauses: 50.000 kg 🏗️]
#v(20pt)
#only("2-")[- Dichte des Wassers: 1000 kg/m³ 🌊]
#v(20pt)
#only("3-")[- Formel: Volumen = Masse / Dichte 🧮]
#v(20pt)
#only("4-")[- Volumen des verdrängten Wassers: 50 m³ 💧]
#only("1")[
#voiceover("Zusammenfassend wurde uns die Masse des schwimmenden Hauses als 50.000 Kilogramm gegeben.")
]
#only("2")[
#voiceover("Wir wussten auch, dass die Dichte des Wassers 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("3")[
#voiceover("Mit der Formel, dass das Volumen gleich Masse geteilt durch Dichte ist,")
]
#only("4")[
#voiceover("haben wir berechnet, dass das Volumen des vom schwimmenden Haus verdrängten Wassers 50 Kubikmeter beträgt.")
]
]