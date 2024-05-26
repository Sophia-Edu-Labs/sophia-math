#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rückblick auf einseitige Grenzwerte]
#only("1-")[
#v(40pt)
- Betrachte das Verhalten, wenn sich $x$ einem Wert von einer Seite nähert 🔍
]
#only("2-")[
#v(20pt)
- Linker Grenzwert: $lim_(x -> a^-)$
]
#only("3-")[
#v(20pt)
- Rechter Grenzwert: $lim_(x -> a^+)$
]
#only("4-")[
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.where(x < 0, x**2, np.exp(-x))

x = np.linspace(-2, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, linewidth=2, label='f(x)')
plt.scatter(0, f(0), color='red', s=100, label='Unstetigkeit bei x=0')
plt.axvline(0, color='gray', linestyle='--', linewidth=1)
plt.xlim(-2, 2)
plt.ylim(0, 4)
plt.grid(True)
plt.legend(fontsize=12)
plt.title('Beispiel für einseitige Grenzwerte', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('f(x)', fontsize=14)
plt.show()
```, width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Einseitige Grenzwerte betrachten das Verhalten einer Funktion, wenn sich der Eingabewert von einer Seite einem bestimmten Wert nähert, entweder von links oder von rechts.")
]
#only("2")[
#voiceover("Der linke Grenzwert, bezeichnet als der Grenzwert, wenn sich x von links a nähert, betrachtet das Verhalten der Funktion, wenn x sich von Werten kleiner als a nähert.")
]
#only("3")[
#voiceover("Ähnlich betrachtet der rechte Grenzwert, bezeichnet als der Grenzwert, wenn sich x von rechts a nähert, das Verhalten der Funktion, wenn x sich von Werten größer als a nähert.")
]
#only("4")[
#voiceover("Hier ist ein Beispiel für eine Funktion mit unterschiedlichen linken und rechten Grenzwerten bei x gleich 0. Beachte, wie sich die Funktion unterschiedlich verhält, wenn wir uns 0 von der linken und rechten Seite nähern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte]
#v(40pt)
#only("1-")[
- Einseitige Grenzwerte sind entscheidend für die Analyse von Unstetigkeiten 📈
]
#only("2-")[
#v(20pt)
- Stetigkeit erfordert, dass beide einseitigen Grenzwerte existieren und gleich sind 🤝
]
#only("3-")[
#v(20pt)
- Einseitige Grenzwerte helfen, das Verhalten von Funktionen in der Nähe kritischer Punkte zu verstehen 🔍
]
#only("1")[
#voiceover("Einseitige Grenzwerte sind entscheidend für die Analyse von Unstetigkeiten in Funktionen. Sie ermöglichen es uns, zu sehen, wie sich eine Funktion in der Nähe eines Punktes verhält, an dem sie möglicherweise nicht stetig ist.")
]
#only("2")[
#voiceover("Damit eine Funktion an einem Punkt stetig ist, müssen sowohl der linke als auch der rechte Grenzwert existieren und gleich dem Funktionswert an diesem Punkt sein.")
]
#only("3")[
#voiceover("Durch die Untersuchung einseitiger Grenzwerte gewinnen wir ein tieferes Verständnis dafür, wie sich eine Funktion in der Nähe kritischer Punkte verhält, wie z.B. bei Unstetigkeiten oder Punkten der Nicht-Differenzierbarkeit.")
]
]