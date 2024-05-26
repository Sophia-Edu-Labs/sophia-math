#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert des Zinseszinses]
#v(40pt)
#only("-1")[- Gegeben: $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- Ziel: Finde $lim_(n -> infinity) a_n$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir das lösen können.")
]
#only("2")[
#voiceover("Gegeben ist die Folge a_n gleich Klammer auf 1 plus 1 durch n Klammer zu hoch n. Unser Ziel ist es, den Grenzwert dieser Folge zu finden, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Den Grenzwert erkennen]
#v(40pt)
#only("-1")[- $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- Das ist die Definition von $e$!]
// Die Erkenntnis, dass dies die Definition von e ist, wird ab Folie 2 angegeben
#only("1")[
#voiceover("Der erste Schritt ist zu erkennen, was dieser Grenzwert darstellt. Wenn Du genau hinsiehst, ist dies tatsächlich die Definition der mathematischen Konstante e!")
]
#only("2")[
#voiceover("e ist definiert als der Grenzwert von Klammer auf 1 plus 1 durch n Klammer zu hoch n, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Das Ergebnis angeben]
#v(40pt)
#only("-1")[- $a_n = (1 + 1/n)^n$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) (1 + 1/n)^n = e$]
// Das Endergebnis wird ab Folie 2 angegeben
#only("1")[
#voiceover("Also können wir direkt das Ergebnis angeben. Der Grenzwert unserer Folge a_n, wenn n gegen unendlich geht, ist gleich e.")
]
#only("2")[
#voiceover("In mathematischer Notation wird dies geschrieben als der Grenzwert von Klammer auf 1 plus 1 durch n Klammer zu hoch n, wenn n gegen unendlich geht, ist gleich e.")
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
def a(n):
    return (1 + 1/n)**n

# Generate n values
n = np.linspace(1, 100, 100)

# Calculate the corresponding a_n values
a_n = a(n)

# Create the plot
plt.figure(figsize=(10, 6))
plt.plot(n, a_n, color='blue', label='a_n')
plt.axhline(np.e, color='red', linestyle='--', label='e')

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.legend()
plt.title('Convergence of $(1 + 1/n)^n$ to $e$')
plt.xlabel('n')
plt.ylabel('a_n')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// Das Diagramm zeigt die Konvergenz der Folge zu e, wenn n zunimmt
#only("1")[
#voiceover("Hier ist eine Visualisierung dessen, was passiert. Wenn n größer und größer wird, nähert sich die Folge a_n, dargestellt in Blau, immer mehr dem Wert von e, dargestellt durch die rote gestrichelte Linie.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Gegebene Folge: $a_n = (1 + 1/n)^n$ 📈]
#v(20pt)
#only("2-")[- Das ist die Definition von $e$ 🔍]
#v(20pt) 
#only("3-")[- Daher $lim_(n -> infinity) a_n = e$ ✅]
// Die wichtigsten Punkte werden mit Emojis zusammengefasst
#only("1")[
#voiceover("Zusammenfassend, wir hatten die Folge a_n gleich Klammer auf 1 plus 1 durch n Klammer zu hoch n gegeben.")
]
#only("2")[
#voiceover("Wir haben erkannt, dass dies die Definition der mathematischen Konstante e ist.")
]
#only("3")[
#voiceover("Daher können wir schließen, dass der Grenzwert von a_n, wenn n gegen unendlich geht, gleich e ist. Gute Arbeit!")
]
]