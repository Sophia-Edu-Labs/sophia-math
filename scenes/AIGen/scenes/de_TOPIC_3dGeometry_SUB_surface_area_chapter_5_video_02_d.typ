#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
#v(40pt)
Wie berechnet man die Oberfläche einer zusammengesetzten Figur?
#v(40pt)
#only("-1")[a) Alle Dimensionen multiplizieren]#only("2-")[#text(fill:red)[a) Alle Dimensionen multiplizieren]]
#v(10pt)
#only("-2")[b) Die Volumen der einzelnen Teile addieren]#only("3-")[#text(fill:red)[b) Die Volumen der einzelnen Teile addieren]]
#v(10pt)
#only("-3")[c) Die Oberflächen der einzelnen Teile addieren und die überlappenden Bereiche subtrahieren]#only("4-")[#text(fill:green)[c) Die Oberflächen der einzelnen Teile addieren und die überlappenden Bereiche subtrahieren]]
#v(10pt)
#only("-4")[d) Die kleinere Figur von der größeren subtrahieren]#only("5-")[#text(fill:red)[d) Die kleinere Figur von der größeren subtrahieren]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Lass uns jede Option durchgehen, um zu verstehen, warum c die richtige Wahl ist.")]
#only("2")[#voiceover("Option a, alle Dimensionen multiplizieren, ist falsch. Das würde uns ein Volumen und keine Oberfläche geben.")]
#only("3")[#voiceover("Option b, die Volumen der einzelnen Teile addieren, ist ebenfalls falsch. Wir suchen die Oberfläche, nicht das Volumen.")]
#only("4")[#voiceover("Option c ist richtig! Um die Oberfläche einer zusammengesetzten Figur zu finden, addieren wir die Oberflächen der einzelnen Teile und subtrahieren die überlappenden Bereiche.")]
#only("5")[#voiceover("Option d, die kleinere Figur von der größeren subtrahieren, ist falsch. Diese Methode berücksichtigt nicht alle Oberflächen und würde uns nicht die gesamte Oberfläche geben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis zusammengesetzter Figuren]
#v(40pt)
#only("1-")[- Zusammengesetzte Figuren = bestehen aus mehreren Grundformen 🧩]
#v(20pt)
#only("2-")[- Beispiel: Zylinder auf einem Würfel 🎩]
#v(20pt)
#only("3-")[- Jede Teilform trägt zur Gesamtoberfläche bei 📊]

#only("1")[#voiceover("Lass uns zunächst verstehen, was zusammengesetzte Figuren sind. Zusammengesetzte Figuren sind Formen, die aus mehreren Grundformen zusammengesetzt sind.")]
#only("2")[#voiceover("Zum Beispiel, stell dir einen Zylinder vor, der auf einem Würfel sitzt. Das ist eine zusammengesetzte Figur.")]
#only("3")[#voiceover("Jede Teilform dieser zusammengesetzten Figur - der Zylinder und der Würfel - trägt zur Gesamtoberfläche bei.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Ansatz]
#v(40pt)
#only("1-")[1️⃣ Einzelne Formen identifizieren]
#v(20pt)
#only("2-")[2️⃣ Oberfläche jeder Form berechnen]
#v(20pt)
#only("3-")[3️⃣ Überlappende Bereiche identifizieren]
#v(20pt)
#only("4-")[4️⃣ Überlappende Bereiche subtrahieren]
#v(20pt)
#only("5-")[5️⃣ Verbleibende Oberflächen addieren]

#only("1")[#voiceover("Nun lass uns den Prozess zur Berechnung der Oberfläche einer zusammengesetzten Figur aufschlüsseln. Zuerst müssen wir die einzelnen Formen identifizieren, die unsere zusammengesetzte Figur bilden.")]
#only("2")[#voiceover("Als nächstes berechnen wir die Oberfläche jeder einzelnen Form.")]
#only("3")[#voiceover("Dann identifizieren wir die Bereiche, in denen sich diese Formen überlappen.")]
#only("4")[#voiceover("Wir subtrahieren diese überlappenden Bereiche, um eine doppelte Zählung zu vermeiden.")]
#only("5")[#voiceover("Schließlich addieren wir alle verbleibenden Oberflächen, um unsere Gesamtoberfläche zu erhalten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Zylinder auf einem Würfel]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8,8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 2]
for s, e in zip(np.array(list(zip(r, r, r))), np.array(list(zip(r[::-1], r[::-1], r[::-1])))):
    ax.plot3D(*zip(s, e), color="b")

# Cylinder
x = np.linspace(0, 2, 100)
z = np.linspace(2, 4, 100)
Xc, Zc = np.meshgrid(x, z)
Yc = np.sqrt(1 - (Xc-1)**2)

ax.plot_surface(Xc, Yc+1, Zc, alpha=0.5)
ax.plot_surface(Xc, -Yc+1, Zc, alpha=0.5)

ax.set_xlim(0, 2)
ax.set_ylim(0, 2)
ax.set_zlim(0, 4)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cylinder on a Cube')

plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Betrachten wir ein Beispiel: ein Zylinder, der auf einem Würfel sitzt. Hier ist eine visuelle Darstellung unserer zusammengesetzten Figur.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
#v(40pt)
#only("1-")[1. Oberfläche des Würfels: $"SA"_"cube" = 6s^2$]
#v(20pt)
#only("2-")[2. Oberfläche des Zylinders: $"SA"_"cylinder" = 2pi r^2 + 2pi r h$]
#v(20pt)
#only("3-")[3. Überlappender Bereich: $"SA"_"overlap" = pi r^2$]
#v(20pt)
#only("4-")[4. Gesamtoberfläche: $"SA"_"total" = "SA"_"cube" + "SA"_"cylinder" - "SA"_"overlap"$]

#only("1")[#voiceover("Lass uns die Oberfläche Schritt für Schritt berechnen. Zuerst berechnen wir die Oberfläche des Würfels. Sie wird durch sechs mal das Quadrat seiner Seitenlänge gegeben.")]
#only("2")[#voiceover("Als nächstes berechnen wir die Oberfläche des Zylinders. Sie ist die Summe der Flächen seiner beiden kreisförmigen Basen und seiner gekrümmten Oberfläche.")]
#only("3")[#voiceover("Nun identifizieren wir den überlappenden Bereich. Das ist der Boden des Zylinders, der ein Kreis ist.")]
#only("4")[#voiceover("Schließlich addieren wir die Oberflächen des Würfels und des Zylinders und subtrahieren den überlappenden Bereich, um unsere Gesamtoberfläche zu erhalten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Zerlege zusammengesetzte Figuren in Grundformen 🧩]
#v(20pt)
#only("2-")[- Berechne die Oberfläche jeder Form separat 🧮]
#v(20pt)
#only("3-")[- Denke daran, überlappende Bereiche zu subtrahieren ➖]
#v(20pt)
#only("4-")[- Übe mit verschiedenen Kombinationen von Formen 🏋️]

#only("1")[#voiceover("Zusammenfassend: Wenn Du mit zusammengesetzten Figuren arbeitest, beginne immer damit, sie in Grundformen zu zerlegen.")]
#only("2")[#voiceover("Berechne die Oberfläche jeder Form separat mit den entsprechenden Formeln.")]
#only("3")[#voiceover("Vergiss nicht, überlappende Bereiche zu identifizieren und zu subtrahieren, um eine doppelte Zählung zu vermeiden.")]
#only("4")[#voiceover("Je mehr Du mit verschiedenen Kombinationen von Formen übst, desto besser wirst Du darin, die Oberflächen zusammengesetzter Figuren zu berechnen. Mach weiter so!")]
]