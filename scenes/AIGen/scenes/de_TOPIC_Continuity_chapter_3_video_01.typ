#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
#v(40pt)
#only("1-")[- Eine Funktion $f$ ist stetig an einem Punkt $a$, wenn:]
#v(20pt)
#only("2-")[  $lim_(x->a) f(x) = f(a)$]
#only("1")[
#voiceover("Eine Funktion f ist stetig an einem Punkt a, wenn der Grenzwert von f von x, wenn x sich a nähert, gleich f von a ist.")
]
#only("2")[
#voiceover("In mathematischer Notation wird dies geschrieben als der Grenzwert von f von x, wenn x sich a nähert, gleich f von a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Wenn $x$ sich $a$ nähert, nähert sich $f(x)$ $f(a)$ 🎯]
#v(20pt)
#only("2-")[- Keine Sprünge oder Lücken im Graphen 📈]
#only("1")[
#voiceover("Intuitiv bedeutet dies, dass wenn x sich a nähert, f von x sich f von a nähert. Die Funktion nähert sich ihrem Wert bei a gleichmäßig.")
]
#only("2")[
#voiceover("Es gibt keine Sprünge oder Lücken im Graphen einer stetigen Funktion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte $f(x) = x^2$]
#v(20pt)
#only("2-")[Ist $f$ stetig bei $a = 1$? 🤔]
#v(20pt)
#only("3-")[
$lim_(x->1) f(x) = lim_(x->1) x^2 = 1^2 = 1$
$f(1) = 1^2 = 1$
]
#v(20pt)
#only("4-")[$lim_(x->1) f(x) = f(1)$, also ist $f$ stetig bei $a = 1$ ✅]
#only("1")[
#voiceover("Betrachten wir die Funktion f von x gleich x Quadrat.")
]
#only("2")[
#voiceover("Ist f stetig bei a gleich 1?")
]
#only("3")[
#voiceover("Der Grenzwert von f von x, wenn x sich 1 nähert, ist der Grenzwert von x Quadrat, wenn x sich 1 nähert, was 1 Quadrat oder 1 ist. f von 1 ist ebenfalls 1 Quadrat, was 1 ist.")
]
#only("4")[
#voiceover("Da der Grenzwert von f von x, wenn x sich 1 nähert, gleich f von 1 ist, ist f stetig bei a gleich 1.")
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

x = np.linspace(-2, 2, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', label='f(x) = x^2')
plt.scatter(1, 1, color='red', label='(1, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Stetigkeit von f(x) = x^2 bei a = 1')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Funktion f von x gleich x Quadrat. Der rote Punkt stellt den Punkt (1, 1) dar. Wie Du sehen kannst, ist die Funktion an diesem Punkt glatt und stetig, ohne Lücken oder Sprünge.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Stetigkeit: $lim_(x->a) f(x) = f(a)$ 📏]
#v(20pt)
#only("2-")[- Intuitiv: keine Sprünge oder Lücken im Graphen 📈]
#v(20pt)
#only("3-")[- Überprüfen durch Vergleich des Grenzwerts und des Funktionswerts 🔍]
#only("1")[
#voiceover("Zusammenfassend ist eine Funktion stetig an einem Punkt a, wenn der Grenzwert der Funktion, wenn x sich a nähert, gleich dem Funktionswert bei a ist.")
]
#only("2")[
#voiceover("Intuitiv bedeutet dies, dass die Funktion keine Sprünge oder Lücken in ihrem Graphen hat.")
]
#only("3")[
#voiceover("Um die Stetigkeit zu überprüfen, vergleiche den Grenzwert der Funktion, wenn x sich a nähert, mit dem Funktionswert bei a. Wenn sie gleich sind, ist die Funktion an diesem Punkt stetig.")
]
]