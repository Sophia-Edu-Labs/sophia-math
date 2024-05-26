#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Funktionen]
#v(40pt)
#only("1-")[- Beschreibe das Verhalten, wenn der Eingangswert einen bestimmten Wert annähert]
#v(20pt)
#only("2-")[- Beispiel: $lim_(x->2) f(x) = 4$]
#v(20pt)
#only("3-")[- Notation: $lim_(x->a) f(x) = L$]
#only("1")[
#voiceover("Der Grenzwert einer Funktion beschreibt, wie sich die Funktion verhält, wenn der Eingabewert einem bestimmten Punkt immer näher kommt.")
]
#only("2")[
#voiceover("Zum Beispiel bedeutet der Grenzwert von f von x, wenn x sich 2 nähert und gleich 4 ist, dass der Funktionswert f von x immer näher an 4 herankommt, wenn x sich beliebig nahe an 2 annähert.")
]
#only("3")[
#voiceover("Im Allgemeinen schreiben wir 'der Grenzwert von f von x, wenn x sich a nähert, ist gleich L', um anzugeben, dass der Funktionswert f von x beliebig nahe an den Wert L herankommt, wenn x sich beliebig nahe an a annähert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von Grenzwerten]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return (x**2 - 4) / (x - 2)

x = np.linspace(-1, 5, 100)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x)')
plt.axhline(y=4, color='red', linestyle='--', label='y = 4')
plt.axvline(x=2, color='green', linestyle='--', label='x = 2')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Grenzwert von f(x), wenn x sich 2 nähert')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Lass uns dieses Konzept visualisieren. Hier haben wir eine Funktion f von x gleich x Quadrat minus 4 über x minus 2. Wenn sich x 2 nähert, markiert durch die grüne Linie, nähern sich die Funktionswerte, dargestellt durch die blaue Kurve, dem Wert 4, markiert durch die rote Linie. Das ist, was wir meinen, wenn wir sagen 'der Grenzwert von f von x, wenn x sich 2 nähert, ist 4'.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte]
#v(40pt)
#only("1-")[- Grenzwerte beschreiben lokales Verhalten 🔍]
#v(20pt)
#only("2-")[- Funktion muss an diesem Punkt nicht definiert sein 🚫]
#v(20pt)
#only("3-")[- Grenzwerte von links und rechts müssen übereinstimmen ⬅➡]
#only("1")[
#voiceover("Es ist wichtig zu beachten, dass Grenzwerte das lokale Verhalten einer Funktion in der Nähe eines Punktes beschreiben. Sie sagen uns nicht unbedingt etwas über den Funktionswert an diesem genauen Punkt.")
]
#only("2")[
#voiceover("Tatsächlich muss eine Funktion an einem Punkt nicht einmal definiert sein, damit der Grenzwert an diesem Punkt existiert.")
]
#only("3")[
#voiceover("Damit der Grenzwert jedoch existiert, muss die Funktion denselben Wert annehmen, egal ob wir uns dem Punkt von links oder von rechts nähern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwerte beschreiben das lokale Verhalten von Funktionen 📈]
#v(20pt)
#only("2-")[- Notation: $lim_(x->a) f(x) = L$]
#v(20pt)
#only("3-")[- Schlüssel zum Verständnis von Stetigkeit und Ableitungen 🔑]
#only("1")[
#voiceover("Zusammenfassend sind Grenzwerte ein grundlegendes Konzept in der Analysis, das das lokale Verhalten einer Funktion beschreibt, wenn der Eingabewert einen bestimmten Wert annähert.")
]
#only("2")[
#voiceover("Wir notieren dies mit der Schreibweise 'der Grenzwert von f von x, wenn x sich a nähert, ist gleich L'.")
]
#only("3")[
#voiceover("Das Verständnis von Grenzwerten ist der Schlüssel zum Verständnis anderer wichtiger Konzepte der Analysis wie Stetigkeit und Ableitungen.")
]
]