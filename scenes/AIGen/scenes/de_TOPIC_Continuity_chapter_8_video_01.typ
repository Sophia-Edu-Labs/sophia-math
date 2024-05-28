#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
#v(40pt)
#only("1-")[- Überprüfe das Verhalten, wenn sich $x$ einem Wert von einer Seite nähert 🔍]
#v(20pt)
#only("2-")[- Linker Grenzwert: $x$ nähert sich von links ⬅]
#v(20pt)
#only("3-")[- Rechter Grenzwert: $x$ nähert sich von rechts ➡]
#only("1")[
#voiceover("Einseitige Grenzwerte beinhalten die Überprüfung des Verhaltens einer Funktion, wenn sich der Eingabewert x einem bestimmten Wert von einer Seite nähert.")
]
#only("2")[
#voiceover("Der linke Grenzwert betrachtet das Verhalten der Funktion, wenn sich x dem Wert von links nähert.")
]
#only("3")[
#voiceover("Der rechte Grenzwert hingegen untersucht das Verhalten der Funktion, wenn sich x dem Wert von rechts nähert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispielfunktion]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.piecewise(x, [x < 0, x >= 0], [lambda x: x + 1, lambda x: x - 1])

x = np.linspace(-5, 5, 1000)
y = f(x)

plt.figure(figsize=(10, 6))
plt.plot(x, y, color='blue', linewidth=2)
plt.scatter(0, -1, color='red', s=100, label='Linker Grenzwert')
plt.scatter(0, 1, color='green', s=100, label='Rechter Grenzwert')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.legend()
plt.title("Stückweise definierte Funktion")
plt.xlabel("x")
plt.ylabel("f(x)")
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten wir diese stückweise definierte Funktion. Sie ist unterschiedlich definiert für x kleiner als 0 und x größer oder gleich 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linker Grenzwert]
#v(40pt)
#only("1-")[- Wenn sich $x$ von links 0 nähert ⬅]
#v(20pt)
#only("2-")[- $f(x) = x + 1$ für $x < 0$]
#v(20pt)
#only("3-")[- $lim_(x->0^-) f(x) = 0 + 1 = 1$ 🔴]
#only("1")[
#voiceover("Um den linken Grenzwert zu finden, betrachten wir das Verhalten der Funktion, wenn sich x von links 0 nähert.")
]
#only("2")[
#voiceover("Für x kleiner als 0 ist die Funktion definiert als f von x gleich x plus 1.")
]
#only("3")[
#voiceover("Der linke Grenzwert, wenn sich x 0 nähert, ist also gleich 0 plus 1, was 1 ergibt. Dies wird durch den roten Punkt im Diagramm dargestellt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rechter Grenzwert]
#v(40pt)
#only("1-")[- Wenn sich $x$ von rechts 0 nähert ➡]
#v(20pt)
#only("2-")[- $f(x) = x - 1$ für $x >= 0$]
#v(20pt)
#only("3-")[- $lim_(x->0^+) f(x) = 0 - 1 = -1$ 🟢]
#only("1")[
#voiceover("Nun, für den rechten Grenzwert untersuchen wir das Verhalten der Funktion, wenn sich x von rechts 0 nähert.")
]
#only("2")[
#voiceover("Wenn x größer oder gleich 0 ist, ist die Funktion definiert als f von x gleich x minus 1.")
]
#only("3")[
#voiceover("Der rechte Grenzwert, wenn sich x 0 nähert, ist daher gleich 0 minus 1, was minus 1 ergibt. Dies wird durch den grünen Punkt im Diagramm dargestellt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Einseitige Grenzwerte überprüfen das Verhalten von einer Seite 🔍]
#v(20pt)
#only("2-")[- Linker Grenzwert: $x$ nähert sich von links ⬅]
#v(20pt)
#only("3-")[- Rechter Grenzwert: $x$ nähert sich von rechts ➡]
#v(20pt)
#only("4-")[- Grenzwerte können unterschiedlich sein, was auf eine Unstetigkeit hinweist 📈]
#only("1")[
#voiceover("Zusammenfassend ermöglichen es uns einseitige Grenzwerte, das Verhalten einer Funktion zu überprüfen, wenn sich der Eingabewert von einer Seite einem bestimmten Wert nähert.")
]
#only("2")[
#voiceover("Der linke Grenzwert betrachtet das Verhalten der Funktion, wenn sich x von links nähert.")
]
#only("3")[
#voiceover("Der rechte Grenzwert hingegen betrachtet das Verhalten der Funktion, wenn sich x von rechts nähert.")
]
#only("4")[
#voiceover("Wenn der linke und der rechte Grenzwert unterschiedlich sind, weist dies auf eine Unstetigkeit der Funktion an diesem Punkt hin.")
]
]