#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
#v(40pt)
#only("1-")[- Betrachte das Verhalten, wenn sich $x$ einem Wert von einer Seite nähert]
#v(20pt)
#only("2-")[- Linkseitiger Grenzwert: $lim_(x → a^-)$]
#v(20pt)
#only("3-")[- Rechtseitiger Grenzwert: $lim_(x → a^+)$]
#only("1")[
#voiceover("Einseitige Grenzwerte betrachten das Verhalten einer Funktion, wenn sich der Eingabewert x einem bestimmten Wert von einer Seite nähert, entweder von links oder von rechts.")
]
#only("2")[
#voiceover("Der linkseitige Grenzwert, geschrieben als der Grenzwert, wenn sich x von links a nähert, betrachtet das Verhalten der Funktion, wenn sich x von Werten kleiner als a nähert.")
]
#only("3")[
#voiceover("Andererseits betrachtet der rechtseitige Grenzwert, geschrieben als der Grenzwert, wenn sich x von rechts a nähert, das Verhalten der Funktion, wenn sich x von Werten größer als a nähert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte die Funktion $f(x) = $ #text(fill: aqua)[$(x - 1)/(x - 1)$]]
#v(20pt)
#only("2-")[Was passiert, wenn sich $x$ 1 nähert?]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.where(x != 1, (x - 1) / (x - 1), 1)

x = np.linspace(0, 2, 1000)
y = f(x)

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue')
plt.scatter(1, 1, color='red', label='Entfernbarer Sprung bei x = 1')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlim(0, 2)
plt.ylim(-0.5, 1.5)
plt.legend()
plt.title('Graph von f(x) = (x - 1) / (x - 1)')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Betrachten wir die Funktion f von x gleich x minus 1 geteilt durch x minus 1.")
]
#only("2")[
#voiceover("Was passiert, wenn sich x 1 nähert? Dies ist ein interessanter Fall, da wir bei direkter Substitution von x gleich 1 0 geteilt durch 0 erhalten, was undefiniert ist.")
]
#only("3")[
#voiceover("Wenn wir uns jedoch den Graphen ansehen, sehen wir, dass die Funktion überall außer bei x gleich 1 definiert und stetig ist. Dies wird als entfernbarer Sprung bezeichnet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linke und rechte Grenzwerte]
#v(40pt)
#only("1-")[- Wenn sich $x$ von links 1 nähert: $lim_(x → 1^-) f(x) = 1$]
#v(20pt)
#only("2-")[- Wenn sich $x$ von rechts 1 nähert: $lim_(x → 1^+) f(x) = 1$]
#v(20pt)
#only("3-")[- Beide einseitigen Grenzwerte existieren und sind gleich]
#v(20pt)
#only("4-")[- $lim_(x → 1) f(x) = 1$ 🎉]
#only("1")[
#voiceover("Wenn sich x von links 1 nähert, ist der Grenzwert von f von x 1.")
]
#only("2")[
#voiceover("Ähnlich ist der Grenzwert von f von x auch 1, wenn sich x von rechts 1 nähert.")
]
#only("3")[
#voiceover("In diesem Fall existieren beide einseitigen Grenzwerte und sind gleich.")
]
#only("4")[
#voiceover("Daher können wir sagen, dass der Grenzwert von f von x, wenn sich x 1 nähert, gleich 1 ist, auch wenn f von 1 nicht definiert ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Einseitige Grenzwerte betrachten das Verhalten von links oder rechts]
#v(20pt)
#only("2-")[- Wenn beide einseitigen Grenzwerte existieren und gleich sind, existiert der Grenzwert]
#v(20pt)
#only("3-")[- Nützlich zur Analyse von Funktionen mit Sprüngen oder abschnittsweise definierten Funktionen]
#only("1")[
#voiceover("Zusammenfassend betrachten einseitige Grenzwerte das Verhalten einer Funktion, wenn sich der Eingabewert einem Wert entweder von links oder von rechts nähert.")
]
#only("2")[
#voiceover("Wenn beide einseitigen Grenzwerte existieren und gleich sind, können wir sagen, dass der Gesamtgrenzwert existiert, auch wenn die Funktion an diesem Punkt nicht definiert ist.")
]
#only("3")[
#voiceover("Einseitige Grenzwerte sind besonders nützlich zur Analyse von Funktionen mit Sprüngen oder abschnittsweise definierten Funktionen, bei denen sich das Verhalten der Funktion je nach Annäherungsseite unterscheiden kann.")
]
]