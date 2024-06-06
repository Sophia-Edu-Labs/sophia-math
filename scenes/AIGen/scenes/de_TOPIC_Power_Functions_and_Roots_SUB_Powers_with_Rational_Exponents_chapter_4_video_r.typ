#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten mit negativen Basen 🧮]
#v(40pt)
#only("1-")[- Rationale Exponenten: $a^(m/n) = root(n, a^m)$]
#v(20pt)
#only("2-")[- Negative Basen können zu komplexen Zahlen führen 🎭]
#v(20pt)
#only("3-")[- Beispiel: $(-8)^(1/3) = -2$]
#v(20pt)
#only("4-")[- Beispiel: $(-16)^(1/4) = 2i$]
#only("1")[
#voiceover("Lass uns rationale Exponenten mit negativen Basen rekapitulieren. Erinnere Dich daran, dass rationale Exponenten eine andere Art sind, Wurzeln darzustellen, wobei a hoch m durch n gleich der n-te Wurzel von a hoch m ist.")
]
#only("2")[
#voiceover("Wenn wir eine negative Basis haben und der Nenner des Exponenten gerade ist, kann das Ergebnis eine komplexe Zahl sein.")
]
#only("3")[
#voiceover("Zum Beispiel, negative 8 hoch ein Drittel ergibt negative 2, weil die dritte Wurzel von negative 8 negative 2 ist.")
]
#only("4")[
#voiceover("Jedoch, negative 16 hoch ein Viertel ergibt 2i, weil die vierte Wurzel von negative 16 keine reelle Zahl ist, sondern eine komplexe Zahl.")
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

# Define the complex plane
x = np.linspace(-3, 3, 100)
y = np.linspace(-3, 3, 100)
X, Y = np.meshgrid(x, y)
Z = X + Y * 1j

# Compute (-8)^(1/3)
Z1 = np.power(-8, 1/3)

# Compute (-16)^(1/4)
Z2 = np.power(-16, 1/4)

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))
ax.contour(X, Y, np.real(Z), levels=[0], colors='black', linestyles='-', linewidths=0.5)
ax.contour(X, Y, np.imag(Z), levels=[0], colors='black', linestyles='-', linewidths=0.5)
ax.plot(np.real(Z1), np.imag(Z1), 'ro', markersize=10, label='$(-8)^{1/3} = -2$')
ax.plot(np.real(Z2), np.imag(Z2), 'bo', markersize=10, label='$(-16)^{1/4} = 2i$')
ax.legend(fontsize=12)
ax.grid(True)
ax.set_xlabel('Real')
ax.set_ylabel('Imaginary')
ax.set_title('Complex Plane')
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung auf der komplexen Ebene. Der rote Punkt repräsentiert negative 8 hoch ein Drittel, was eine reelle Zahl, negative 2, ist. Der blaue Punkt repräsentiert negative 16 hoch ein Viertel, was eine komplexe Zahl, 2i, ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Rationale Exponenten stellen Wurzeln dar 🌱]
#v(20pt)
#only("2-")[- Negative Basen mit geraden Nennern können zu komplexen Ergebnissen führen 🧩]
#v(20pt)
#only("3-")[- Berücksichtige immer die Möglichkeit komplexer Zahlen bei der Arbeit mit rationalen Exponenten und negativen Basen 🔍]
#only("1")[
#voiceover("Zusammenfassend sind rationale Exponenten eine Möglichkeit, Wurzeln darzustellen.")
]
#only("2")[
#voiceover("Wenn wir negative Basen und einen geraden Nenner des Exponenten haben, kann das Ergebnis eine komplexe Zahl sein.")
]
#only("3")[
#voiceover("Denke also immer an die Möglichkeit, dass komplexe Zahlen entstehen können, wenn Du mit rationalen Exponenten und negativen Basen arbeitest.")
]
]