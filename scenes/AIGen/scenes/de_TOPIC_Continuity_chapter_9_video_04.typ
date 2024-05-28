#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reale Anwendungen der Stetigkeit]
#v(40pt)
#only("1-")[- Sanfte Übergänge im Ingenieurwesen 🏗️]
#v(20pt)
#only("2-")[- Vorhersage physikalischer Phänomene 🔮]
#v(20pt)
#only("3-")[- Gewährleistung der Stabilität in Systemen 🌡️]
#only("1")[
#voiceover("Stetigkeit hat viele reale Anwendungen. Im Ingenieurwesen ist sie unerlässlich für sanfte Übergänge zwischen verschiedenen Komponenten oder Zuständen.")
]
#only("2")[
#voiceover("Stetigkeit ermöglicht es uns auch, physikalische Phänomene genauer vorherzusagen, da viele natürliche Prozesse stetig sind.")
]
#only("3")[
#voiceover("Darüber hinaus ist Stetigkeit entscheidend für die Gewährleistung der Stabilität in verschiedenen Systemen, wie z.B. Regelungssystemen oder Finanzmärkten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Temperaturregelung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Zeitpunkte
t = np.linspace(0, 10, 100)

# Temperaturfunktion
def T(t):
    return 20 + 5 * np.sin(t)

# Diagramm zeichnen
plt.figure(figsize=(8, 6))
plt.plot(t, T(t), 'b-', linewidth=2, label='Temperatur')
plt.xlabel('Zeit', fontsize=14)
plt.ylabel('Temperatur (°C)', fontsize=14)
plt.title('Kontinuierliche Temperaturregelung', fontsize=16)
plt.grid(True)
plt.legend(fontsize=12)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten wir ein Beispiel aus der Temperaturregelung. In diesem Diagramm sehen wir eine stetige Funktion, die die Temperatur über die Zeit darstellt.")
]
#only("2")[
#voiceover("Die Stetigkeit dieser Funktion stellt sicher, dass sich die Temperatur sanft ändert, ohne plötzliche Sprünge oder Diskontinuitäten.")
]
#only("3")[
#voiceover("Dieser sanfte Übergang ist entscheidend, um in verschiedenen Umgebungen, wie z.B. in Häusern, Büros oder industriellen Prozessen, eine stabile und komfortable Umgebung zu gewährleisten.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedeutung der Stetigkeit]
#v(40pt)
#only("1-")[- Vermeidet plötzliche Änderungen oder Diskontinuitäten 📈]
#v(20pt)
#only("2-")[- Ermöglicht präzises Modellieren und Analysieren 📊]
#v(20pt)
#only("3-")[- Erleichtert Optimierung und Steuerung 🎮]
#only("1")[
#voiceover("Die Bedeutung der Stetigkeit liegt in ihrer Fähigkeit, plötzliche Änderungen oder Diskontinuitäten in verschiedenen Prozessen oder Systemen zu vermeiden.")
]
#only("2")[
#voiceover("Stetigkeit ermöglicht präzises Modellieren und Analysieren realer Phänomene, was uns erlaubt, genaue Vorhersagen und Entscheidungen zu treffen.")
]
#only("3")[
#voiceover("Darüber hinaus erleichtert Stetigkeit die Optimierung und Steuerung, da sie eine glatte Landschaft für Algorithmen und Steuerungsstrategien bietet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Stetigkeit hat vielfältige reale Anwendungen 🌍]
#v(20pt)
#only("2-")[- Gewährleistet sanfte Übergänge und Stabilität 🌉]
#v(20pt)
#only("3-")[- Ermöglicht präzises Modellieren und Optimieren 📈]
#only("1")[
#voiceover("Zusammenfassend hat Stetigkeit vielfältige reale Anwendungen in verschiedenen Bereichen, wie Physik, Ingenieurwesen und Wirtschaft.")
]
#only("2")[
#voiceover("Sie gewährleistet sanfte Übergänge und Stabilität in Systemen, indem sie plötzliche Änderungen oder Diskontinuitäten vermeidet.")
]
#only("3")[
#voiceover("Stetigkeit ermöglicht auch präzises Modellieren und Optimieren, was eine genaue Analyse und Entscheidungsfindung in realen Szenarien erleichtert.")
]
]