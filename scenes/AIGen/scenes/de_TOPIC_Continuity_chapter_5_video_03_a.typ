#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Bestimme, ob $f(x) = (x^2 - 1)/(x - 1)$ stetig erweiterbar bei $x = 1$ ist.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist der richtige Ansatz. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachen]
#v(40pt)
#only("1-")[$ f(x) = (x^2 - 1)/(x - 1) $]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Faktorisieren]]]
#v(10pt)
#only("3-")[$ f(x) = ((x - 1)(x + 1))/(x - 1) $]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Kürzen]]]
#v(10pt)
#only("5-")[$ f(x) = x + 1, x \neq 1 $]
#only("1")[
#voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat minus 1 durch x minus 1.")
]
#only("2")[
#voiceover("Zuerst faktorisieren wir den Zähler.")
]
#only("3")[
#voiceover("Das ergibt x minus 1 mal x plus 1 durch x minus 1.")
]
#only("4")[
#voiceover("Nun können wir die x minus 1 Terme im Zähler und Nenner kürzen.")
]
#only("5")[
#voiceover("Das vereinfacht die Funktion zu x plus 1, für alle x ungleich 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit überprüfen]
#v(40pt)
#only("1-")[$ lim_(x -> 1) (x + 1) = 2 $]
#v(20pt)
#only("2-")[Definiere $f(1) = 2$]
#v(20pt)
#only("3-")[Nun, $ lim_(x -> 1) f(x) = f(1) = 2 $]
#v(20pt)
#only("4-")[Daher ist $f(x)$ stetig erweiterbar bei $x = 1$ ✅]
#only("1")[
#voiceover("Nun überprüfen wir den Limes, wenn x gegen 1 geht. Der Limes von x plus 1, wenn x gegen 1 geht, ist 2.")
]
#only("2")[
#voiceover("Also können wir f von 1 gleich 2 definieren.")
]
#only("3")[
#voiceover("Mit dieser Definition ist der Limes von f von x, wenn x gegen 1 geht, gleich f von 1, was 2 ist.")
]
#only("4")[
#voiceover("Daher ist die Funktion f von x stetig erweiterbar bei x gleich 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the function
def f(x):
    return np.where(x != 1, (x**2 - 1) / (x - 1), 2)

# Generate x values
x = np.linspace(-2, 4, 1000)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, f(x), color='blue', label='f(x)')
plt.scatter(1, 2, color='red', label='Stetige Erweiterung bei x=1')

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.axvline(0, color='grey', lw=1)
plt.legend()
plt.title('Plot der Funktion f(x)')
plt.xlabel('x')
plt.ylabel('f(x)')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Funktion. Die blaue Linie zeigt den Graphen von f von x, und der rote Punkt zeigt die stetige Erweiterung bei x gleich 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Funktion vereinfachen 🧮]
#v(20pt)
#only("2-")[- Limes an der Stelle überprüfen 🔍]
#v(20pt)
#only("3-")[- Funktionswert an der Stelle definieren 📝]
#v(20pt)
#only("4-")[- Stetigkeit überprüfen 📈]
#only("1")[
#voiceover("Zusammenfassend haben wir zuerst die Funktion durch Faktorisieren und Kürzen vereinfacht.")
]
#only("2")[
#voiceover("Dann haben wir den Limes der Funktion überprüft, wenn x gegen 1 geht.")
]
#only("3")[
#voiceover("Wir haben den Funktionswert bei x gleich 1 auf diesen Limes definiert.")
]
#only("4")[
#voiceover("Schließlich haben wir überprüft, dass mit dieser Definition der Limes gleich dem Funktionswert bei x gleich 1 ist, wodurch die Funktion stetig erweiterbar an diesem Punkt ist.")
]
]