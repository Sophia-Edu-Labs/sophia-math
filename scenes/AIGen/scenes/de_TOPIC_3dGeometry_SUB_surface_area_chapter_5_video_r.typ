#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Oberfläche zusammengesetzter Figuren 📐]
#v(40pt)
#only("1-")[- Anwendung in der Praxis: Architektur 🏠]
#only("2-")[- Komplexe Strukturen = Kombination einfacher Formen]
#only("3-")[- Beispiel: Haus mit Hauptgebäude und Garage]
#only("1")[
#voiceover("Lass uns das Konzept der Berechnung von Oberflächen zusammengesetzter Figuren wiederholen. Dies ist eine wichtige Fähigkeit in Bereichen wie der Architektur.")
]
#only("2")[
#voiceover("Komplexe Strukturen in der realen Welt sind oft Kombinationen aus einfacheren geometrischen Formen.")
]
#only("3")[
#voiceover("Betrachte zum Beispiel ein Haus mit einem Hauptgebäude und einer angebauten Garage. Jedes Teil kann als separate Form behandelt werden, aber zusammen bilden sie eine zusammengesetzte Figur.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Ansatz für zusammengesetzte Figuren]
#v(40pt)
#only("1-")[1. Zerlege in Komponentenformen 🧩]
#only("2-")[2. Berechne die Oberflächen separat 🧮]
#only("3-")[3. Subtrahiere überlappende Bereiche 🔍]
#only("4-")[4. Summiere die Ergebnisse 📊]
#only("1")[
#voiceover("Unser Ansatz zur Berechnung der Oberfläche zusammengesetzter Figuren umfasst vier wichtige Schritte. Zuerst zerlegen wir die Figur in ihre Komponentenformen.")
]
#only("2")[
#voiceover("Als nächstes berechnen wir die Oberflächen dieser einzelnen Formen separat.")
]
#only("3")[
#voiceover("Dann identifizieren und subtrahieren wir alle überlappenden Bereiche, um eine doppelte Zählung zu vermeiden.")
]
#only("4")[
#voiceover("Schließlich summieren wir alle Ergebnisse, um die gesamte Oberfläche der zusammengesetzten Figur zu erhalten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: L-förmiges Gebäude]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Main building
x = [0, 5, 5, 0, 0]
y = [0, 0, 3, 3, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [4]*5, 'b')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 4], 'b')

# Extension
x = [0, 2, 2, 0, 0]
y = [3, 3, 5, 5, 3]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'r')
ax.plot(x, y, [3]*5, 'r')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'r')

ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Height (m)')
ax.set_title('L-shaped Building')

plt.show()

```,
width: 360pt),
caption: [L-förmiges Gebäude, bestehend aus zwei rechteckigen Prismen]
)
]
]
]
#only("2-")[
- Hauptgebäude: 5m × 3m × 4m
- Anbau: 2m × 2m × 3m
]
#only("1")[
#voiceover("Lass uns unseren Ansatz auf ein L-förmiges Gebäude anwenden. Diese zusammengesetzte Figur besteht aus zwei rechteckigen Prismen: einem Hauptgebäude und einem Anbau.")
]
#only("2")[
#voiceover("Das Hauptgebäude misst 5 Meter mal 3 Meter mal 4 Meter, während der Anbau 2 Meter mal 2 Meter mal 3 Meter groß ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnungsschritte]
#v(20pt)
#only("1-")[1. Oberfläche des Hauptgebäudes:]
#only("2-")[$"SA"_1 = 2(5 dot 3 + 5 dot 4 + 3 dot 4) = 94 "m"^2$]
#only("3-")[2. Oberfläche des Anbaus:]
#only("4-")[$"SA"_2 = 2(2 dot 2 + 2 dot 3 + 2 dot 3) = 32 "m"^2$]
#only("5-")[3. Überlappender Bereich:]
#only("6-")[$"OA" = 2 dot 3 = 6 "m"^2$]
#only("7-")[4. Gesamte Oberfläche:]
#only("8-")[$"SA"_"total" = "SA"_1 + "SA"_2 - "OA" = 94 + 32 - 6 = 120 "m"^2$]
#only("1")[
#voiceover("Lass uns Schritt für Schritt berechnen. Zuerst finden wir die Oberfläche des Hauptgebäudes.")
]
#only("2")[
#voiceover("Dies ist das Doppelte der Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe, was 94 Quadratmeter ergibt.")
]
#only("3")[
#voiceover("Als nächstes berechnen wir die Oberfläche des Anbaus.")
]
#only("4")[
#voiceover("Mit derselben Formel erhalten wir 32 Quadratmeter.")
]
#only("5")[
#voiceover("Nun müssen wir den überlappenden Bereich identifizieren.")
]
#only("6")[
#voiceover("Dies ist der Bereich, in dem der Anbau auf das Hauptgebäude trifft, was 2 Meter mal 3 Meter oder 6 Quadratmeter beträgt.")
]
#only("7")[
#voiceover("Schließlich summieren wir die Oberflächen und subtrahieren den überlappenden Bereich.")
]
#only("8")[
#voiceover("Dies ergibt eine gesamte Oberfläche von 120 Quadratmetern.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte zum Merken 🗝️]
#v(40pt)
#only("1-")[- Zerlege zusammengesetzte Figuren 🧩]
#only("2-")[- Berechne einzelne Oberflächen 🧮]
#only("3-")[- Identifiziere und subtrahiere Überlappungen 🔍]
#only("4-")[- Summiere für die gesamte Oberfläche 📊]
#only("1")[
#voiceover("Zusammengefasst: Wenn Du es mit zusammengesetzten Figuren zu tun hast, beginne immer damit, sie in einfachere Formen zu zerlegen.")
]
#only("2")[
#voiceover("Berechne dann die Oberflächen dieser einzelnen Komponenten.")
]
#only("3")[
#voiceover("Stelle sicher, dass Du alle überlappenden Bereiche identifizierst und subtrahierst, um eine doppelte Zählung zu vermeiden.")
]
#only("4")[
#voiceover("Schließlich summiere alle Teile, um die gesamte Oberfläche zu erhalten. Dieser methodische Ansatz wird Dir helfen, selbst die komplexesten zusammengesetzten Figuren zu bewältigen.")
]
]