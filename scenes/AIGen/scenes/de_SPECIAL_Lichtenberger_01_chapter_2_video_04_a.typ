#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Eiswürfel im Wasser 🧊💧]
#v(40pt)
#only("1-")[- Ein Eiswürfel schwimmt in einem Glas Wasser]
#v(20pt)
#only("2-")[- Der Eiswürfel schmilzt]
#v(20pt)
#only("3-")[Was passiert mit dem Wasserspiegel? 🤔]
#only("1")[
#voiceover("Großartig! Du hast richtig erkannt, dass der Wasserspiegel in einem Glas Wasser gleich bleibt, wenn ein schwimmender Eiswürfel schmilzt. Lass uns die Erklärung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Wir haben einen Eiswürfel, der in einem Glas Wasser schwimmt. Wenn der Eiswürfel schmilzt, verwandelt er sich in Wasser.")
]
#only("3")[
#voiceover("Die Frage ist, was passiert mit dem Wasserspiegel im Glas, nachdem der Eiswürfel vollständig geschmolzen ist?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip 🏛️]
#v(40pt)
#only("1-")[- Auftriebskraft entspricht dem Gewicht der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[- Der Eiswürfel verdrängt sein eigenes Gewicht an Wasser]
#only("1")[
#voiceover("Um das zu verstehen, müssen wir das Archimedische Prinzip betrachten. Es besagt, dass die Auftriebskraft auf einen Körper gleich dem Gewicht der vom Körper verdrängten Flüssigkeit ist.")
]
#only("2")[
#voiceover("In unserem Fall verdrängt der schwimmende Eiswürfel sein eigenes Gewicht an Wasser. Deshalb schwimmt er - die Auftriebskraft gleicht das Gewicht des Eises aus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schmelzprozess 🔥]
#v(40pt)
#only("1-")[- Eis wird zu Wasser]
#v(20pt)
#only("2-")[- Volumen des geschmolzenen Eises = Volumen des verdrängten Wassers]
#only("1")[
#voiceover("Wenn der Eiswürfel schmilzt, verwandelt er sich in Wasser. Der entscheidende Punkt ist, dass das Volumen des durch das schmelzende Eis erzeugten Wassers genau dem Volumen des Wassers entspricht, das durch den Eiswürfel verdrängt wurde, als er schwamm.")
]
#only("2")[
#voiceover("Mit anderen Worten: Das geschmolzene Eis füllt einfach den Raum aus, der zuvor vom untergetauchten Teil des Eiswürfels eingenommen wurde.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserspiegel 📏]
#v(40pt)
#only("1-")[- Keine Änderung des gesamten Wasservolumens]
#v(20pt)
#only("2-")[- Der Wasserspiegel bleibt gleich 🌊]
#only("1")[
#voiceover("Da das geschmolzene Eis einfach das verdrängte Wasser ersetzt, gibt es keine Änderung des gesamten Wasservolumens im Glas.")
]
#only("2")[
#voiceover("Daher bleibt der Wasserspiegel nach dem vollständigen Schmelzen des Eiswürfels gleich. Der Eiswürfel, ob fest oder geschmolzen, trägt die gleiche Menge zum Volumen und damit zum Wasserspiegel im Glas bei.")
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

# Create figure and axes
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

# Plot for before melting
ax1.bar(1, 10, width=1, color='skyblue', edgecolor='black', linewidth=2)
ax1.bar(1, 2, width=0.6, color='white', edgecolor='black', linewidth=2)
ax1.set_ylim(0, 12)
ax1.set_xlim(0, 2)
ax1.set_xticks([])
ax1.set_ylabel('Water Level')
ax1.set_title('Before Melting')

# Plot for after melting
ax2.bar(1, 10, width=1, color='skyblue', edgecolor='black', linewidth=2)
ax2.set_ylim(0, 12)
ax2.set_xlim(0, 2)
ax2.set_xticks([])
ax2.set_title('After Melting')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung. Das linke Bild zeigt das Glas Wasser mit dem schwimmenden Eiswürfel. Das rechte Bild zeigt das Glas, nachdem das Eis geschmolzen ist. Wie du sehen kannst, ist der Wasserspiegel in beiden Fällen gleich.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Archimedes' Prinzip: Auftriebskraft = Gewicht der verdrängten Flüssigkeit 🏛️]
#v(20pt)
#only("2-")[- Geschmolzenes Eis ersetzt verdrängtes Wasser 🔁]
#v(20pt)
#only("3-")[- Keine Änderung des gesamten Wasservolumens oder -spiegels 🌊]
#only("1")[
#voiceover("Zusammenfassend: Nach dem Archimedischen Prinzip verdrängt ein schwimmender Körper sein eigenes Gewicht an Flüssigkeit.")
]
#only("2")[
#voiceover("Wenn der Eiswürfel schmilzt, ersetzt das entstehende Wasser einfach das Wasser, das durch das schwimmende Eis verdrängt wurde.")
]
#only("3")[
#voiceover("Daher gibt es keine Änderung des gesamten Wasservolumens oder des Wasserspiegels im Glas. Der Wasserspiegel bleibt während des gesamten Schmelzprozesses konstant.")
]
]