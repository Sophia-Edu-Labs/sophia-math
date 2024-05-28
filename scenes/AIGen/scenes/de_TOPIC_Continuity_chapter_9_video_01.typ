#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität in der realen Welt 🌍]
#v(40pt)
#only("1-")[- Sanfte Übergänge 🌉]
#v(20pt)
#only("2-")[- Keine abrupten Änderungen oder Lücken 📈]
#only("1")[
#voiceover("Kontinuität ist ein grundlegendes Konzept in der Mathematik, das viele Anwendungen in der realen Welt hat. Es beschreibt Funktionen oder Prozesse, die sanfte Übergänge ohne abrupte Änderungen oder Lücken haben.")
]
#only("2")[
#voiceover("Mit anderen Worten, eine kontinuierliche Funktion ist eine, bei der kleine Änderungen im Input zu kleinen Änderungen im Output führen, ohne plötzliche Sprünge oder Unterbrechungen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Physik 🚀]
#v(40pt)
#only("1-")[- Bewegung von Objekten 🏎️]
#v(20pt)
#only("2-")[- Temperaturänderungen 🌡️]
#v(20pt)
#only("3-")[- Elektrische und magnetische Felder ⚡🧲]
#only("1")[
#voiceover("In der Physik werden viele natürliche Phänomene mit kontinuierlichen Funktionen modelliert. Zum Beispiel ist die Bewegung von Objekten, wie ein Auto, das sich auf einer Straße bewegt, typischerweise kontinuierlich.")
]
#only("2")[
#voiceover("Ähnlich sind Temperaturänderungen in einem Raum oder System normalerweise allmählich und kontinuierlich, anstatt plötzlich.")
]
#only("3")[
#voiceover("Elektrische und magnetische Felder variieren ebenfalls kontinuierlich im Raum, was entscheidend für das Verständnis und die Gestaltung verschiedener Geräte und Systeme ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ingenieurwesen 🏗️]
#v(40pt)
#only("1-")[- Reibungsloser Betrieb von Maschinen 🎢]
#v(20pt)
#only("2-")[- Signalverarbeitung 📡]
#v(20pt)
#only("3-")[- Regelungssysteme 🕹️]
#only("1")[
#voiceover("Im Ingenieurwesen spielt Kontinuität eine wichtige Rolle, um den reibungslosen Betrieb verschiedener Maschinen und Systeme zu gewährleisten. Zum Beispiel muss die Bewegung von Zahnrädern und anderen mechanischen Komponenten kontinuierlich sein, um Schäden zu vermeiden und eine effiziente Kraftübertragung sicherzustellen.")
]
#only("2")[
#voiceover("In der Signalverarbeitung werden kontinuierliche Signale oft analysiert und manipuliert, um Informationen zu extrahieren oder Rauschen herauszufiltern.")
]
#only("3")[
#voiceover("Regelungssysteme, wie sie in der Robotik oder Automatisierung verwendet werden, basieren auf kontinuierlichem Feedback und sanften Übergängen, um einen stabilen Betrieb und präzise Steuerung zu gewährleisten.")
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

# Create a continuous function
x = np.linspace(-5, 5, 100)
y = np.sin(x)

# Create a discontinuous function
x_disc = np.linspace(-5, 5, 100)
y_disc = np.where(x_disc < 0, -1, 1)

# Plot the functions
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

ax1.plot(x, y, 'b-', label='Continuous')
ax1.set_title('Continuous Function')
ax1.set_xlabel('x')
ax1.set_ylabel('y')
ax1.legend()
ax1.grid()

ax2.plot(x_disc, y_disc, 'r-', label='Discontinuous')
ax2.set_title('Discontinuous Function')
ax2.set_xlabel('x')
ax2.set_ylabel('y')
ax2.legend()
ax2.grid()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier sehen wir den Unterschied zwischen einer kontinuierlichen Funktion, links dargestellt, und einer diskontinuierlichen Funktion, rechts dargestellt. Die kontinuierliche Funktion hat eine glatte, ununterbrochene Kurve, während die diskontinuierliche Funktion einen plötzlichen Sprung oder Bruch aufweist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Kontinuität ist in vielen realen Anwendungen unerlässlich 🌍]
#v(20pt)
#only("2-")[- Sanfte Übergänge sind in Physik und Ingenieurwesen entscheidend 🚀🏗️]
#v(20pt)
#only("3-")[- Kontinuierliche Funktionen haben keine abrupten Änderungen oder Lücken 📈]
#only("1")[
#voiceover("Zusammenfassend ist Kontinuität ein wesentliches Konzept in vielen realen Anwendungen, insbesondere in der Physik und im Ingenieurwesen.")
]
#only("2")[
#voiceover("Sanfte Übergänge und das Fehlen abrupter Änderungen sind entscheidend für die Modellierung natürlicher Phänomene, die Gestaltung effizienter Systeme und die Gewährleistung eines stabilen Betriebs.")
]
#only("3")[
#voiceover("Durch das Verständnis und die Nutzung der Eigenschaften kontinuierlicher Funktionen können wir verschiedene Prozesse in unserer Umgebung besser analysieren, vorhersagen und steuern.")
]
]