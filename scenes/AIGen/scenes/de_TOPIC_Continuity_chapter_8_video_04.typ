#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte Zusammenfassung]
#v(40pt)
#only("1-")[- Überprüfe das Verhalten, wenn sich der Eingabewert von einer Seite nähert 🔍]
#v(20pt)
#only("2-")[- Linkseitiger Grenzwert: $lim_(x->a^-)f(x)$ ⬅]
#v(20pt)
#only("3-")[- Rechtseitiger Grenzwert: $lim_(x->a^+)f(x)$ ➡]
#only("1")[
#voiceover("In dieser Zusammenfassung werden wir die wichtigsten Punkte zur Praxis von einseitigen Grenzwerten überprüfen. Einseitige Grenzwerte beinhalten die Überprüfung des Verhaltens einer Funktion, wenn sich der Eingabewert von einer Seite einem bestimmten Wert nähert, entweder von links oder von rechts.")
]
#only("2")[
#voiceover("Der linkseitige Grenzwert, geschrieben als der Grenzwert von f von x, wenn sich x von links a nähert, untersucht das Verhalten der Funktion, wenn sich der Eingabewert von Werten kleiner als a dem Wert a nähert.")
]
#only("3")[
#voiceover("Der rechtseitige Grenzwert hingegen, geschrieben als der Grenzwert von f von x, wenn sich x von rechts a nähert, betrachtet das Verhalten der Funktion, wenn sich der Eingabewert von Werten größer als a dem Wert a nähert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    if x < 0:
        return -1
    else:
        return 1

x = np.linspace(-2, 2, 1000)
y = [f(i) for i in x]

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x)')
plt.scatter(0, -1, color='red', label='Linkseitiger Grenzwert')
plt.scatter(0, 1, color='green', label='Rechtseitiger Grenzwert')
plt.axvline(0, color='black', linestyle='--', linewidth=1)
plt.axhline(0, color='black', linestyle='-', linewidth=1)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Angenommen, wir haben eine Funktion f von x, die gleich -1 ist, wenn x kleiner als 0 ist, und gleich 1 ist, wenn x größer oder gleich 0 ist. Wir wollen die linkseitigen und rechtseitigen Grenzwerte dieser Funktion berechnen, wenn sich x 0 nähert.")
]
#v(20pt)
#only("2-")[- $lim_(x->0^-)f(x)=-1$ ⬅]
#v(20pt)
#only("3-")[- $lim_(x->0^+)f(x)=1$ ➡]
#only("2")[
#voiceover("Der linkseitige Grenzwert, wenn sich x von links 0 nähert, ist gleich -1. Dies liegt daran, dass für alle Werte von x kleiner als 0 der Funktionswert -1 ist.")
]
#only("3")[
#voiceover("Der rechtseitige Grenzwert, wenn sich x von rechts 0 nähert, ist gleich 1. Dies liegt daran, dass für alle Werte von x größer oder gleich 0 der Funktionswert 1 ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Einseitige Grenzwerte sind wichtig für die Analyse des Funktionsverhaltens 📈]
#v(20pt)
#only("2-")[- Sie helfen, Unstetigkeiten und Asymptoten zu identifizieren 🔍]
#v(20pt)
#only("3-")[- Übung ist der Schlüssel zum Beherrschen einseitiger Grenzwerte! 💪]
#only("1")[
#voiceover("Zusammenfassend sind einseitige Grenzwerte entscheidend für die Analyse des Verhaltens von Funktionen in der Nähe bestimmter Punkte. Sie ermöglichen es uns, zu untersuchen, wie sich eine Funktion verhält, wenn wir uns einem Punkt von der linken oder rechten Seite nähern.")
]
#only("2")[
#voiceover("Einseitige Grenzwerte sind besonders nützlich, um Unstetigkeiten und Asymptoten in Funktionen zu identifizieren. Wenn die linkseitigen und rechtseitigen Grenzwerte an einem Punkt unterschiedlich sind, deutet dies auf eine Unstetigkeit an diesem Punkt hin.")
]
#only("3")[
#voiceover("Wie bei jedem mathematischen Konzept ist Übung unerlässlich, um einseitige Grenzwerte zu beherrschen. Je mehr du mit verschiedenen Funktionen arbeitest und ihre einseitigen Grenzwerte berechnest, desto sicherer und kompetenter wirst du im Analysieren des Funktionsverhaltens.")
]
]