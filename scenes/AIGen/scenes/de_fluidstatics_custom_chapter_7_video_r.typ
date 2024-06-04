#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung des Designs eines schwimmenden Hauses 🏠]
#v(40pt)
#only("1-")[
- Auftriebskraftberechnung 🌊
]
#v(20pt)
#only("2-")[
- Materialauswahl 🪵
]
#v(20pt)
#only("3-")[
- Stabilität und Schwimmfähigkeit ⚓
]

#only("1")[
#voiceover("Das Design eines schwimmenden Hauses erfordert eine sorgfältige Berechnung der Auftriebskraft, die benötigt wird, um das Haus über Wasser zu halten. Dies geschieht durch die Bestimmung des verdrängten Wasservolumens, das dem Gewicht des Hauses geteilt durch die Dichte des Wassers entspricht.")
]

#only("2")[
#voiceover("Die Auswahl geeigneter Materialien ist entscheidend für den Bau der schwimmenden Plattform. Schaumstoff ist oft die beste Wahl aufgrund seiner geringen Dichte und hohen Auftriebskraft.")
]

#only("3")[
#voiceover("Um Stabilität und erfolgreiche Schwimmfähigkeit zu gewährleisten, muss die Oberfläche der Plattform basierend auf dem gewünschten Tiefgang berechnet werden. Dies geschieht durch die Division des verdrängten Wasservolumens durch den Tiefgang.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Formeln 📜]
#v(40pt)

#only("1-")[
$ V = m / rho $
#v(10pt)
Volumen des verdrängten Wassers
]

#v(20pt)

#only("2-")[
$ A = V / "draft" $
#v(10pt) 
Oberfläche der Plattform
]

#only("1")[
#voiceover("Die Schlüsselgleichung zur Berechnung des Volumens des verdrängten Wassers lautet V gleich m geteilt durch rho, wobei m die Masse des schwimmenden Hauses und rho die Dichte des Wassers ist.")
]

#only("2")[
#voiceover("Um die notwendige Oberfläche der schwimmenden Plattform zu bestimmen, wird die Formel A gleich V geteilt durch den Tiefgang verwendet, wobei V das verdrängte Wasservolumen und der Tiefgang die gewünschte Tiefe der Plattform unter der Wasseroberfläche ist.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Draw water
water_level = 0
ax.axhline(water_level, color='blue', linewidth=2, label='Water Level')
ax.fill_between([-2, 2], water_level, -2, color='lightblue', alpha=0.3)

# Draw floating house
house_width = 1.5
house_height = 1
house_draft = 0.5
ax.add_patch(plt.Rectangle((-house_width/2, water_level - house_draft), house_width, house_height, edgecolor='black', facecolor='brown', linewidth=2, label='Floating House'))

# Add labels and legend
ax.set_xlabel('Width')
ax.set_ylabel('Height')
ax.set_title('Floating House Visualization')
ax.legend()

# Set axis limits
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine einfache Visualisierung eines schwimmenden Hauses. Die blaue Linie stellt den Wasserspiegel dar, und das braune Rechteck repräsentiert das schwimmende Haus. Der Teil des Hauses unterhalb des Wasserspiegels ist der Tiefgang, der die notwendige Oberfläche der schwimmenden Plattform bestimmt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]
#v(40pt)
#only("1-")[
- Auftriebskraft berechnen 📏
]
#v(20pt)
#only("2-")[
- Geeignete Materialien auswählen 🔍
]
#v(20pt)
#only("3-")[
- Stabilität und Schwimmfähigkeit sicherstellen 🚣
]

#only("1")[
#voiceover("Zusammenfassend ist es beim Design eines schwimmenden Hauses wichtig, die Auftriebskraft durch Bestimmung des verdrängten Wasservolumens zu berechnen.")
]

#only("2")[
#voiceover("Die Auswahl von Materialien mit geringer Dichte und hoher Auftriebskraft, wie Schaumstoff, ist entscheidend für den Bau der schwimmenden Plattform.")
]

#only("3")[
#voiceover("Schließlich muss zur Gewährleistung von Stabilität und erfolgreicher Schwimmfähigkeit die Oberfläche der Plattform basierend auf dem gewünschten Tiefgang berechnet werden. Durch sorgfältige Berücksichtigung dieser Faktoren kann ein stabiles und schwimmfähiges Haus entworfen werden.")
]
]