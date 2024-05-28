#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität üben]
#v(40pt)
#only("1-")[- Überprüfe die Grenzwerte und Funktionswerte an verschiedenen Punkten 🔍]
#v(20pt)
#only("2-")[- Beispiel: $f(x) = (x^2 - 1)/(x - 1)$]
#only("1")[
#voiceover("Um die Überprüfung der Kontinuität zu üben, müssen wir die Grenzwerte und die Funktionswerte an verschiedenen Punkten betrachten.")
]
#only("2")[
#voiceover("Betrachten wir als Beispiel die Funktion f von x gleich x Quadrat minus 1 durch x minus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität überprüfen]
#v(40pt)
#only("1-")[- Vereinfache $f(x) = x + 1$ für $x \neq 1$]
#v(20pt)
#only("2-")[- Überprüfe den Grenzwert: $lim_(x -> 1) (x + 1) = 2$]
#v(20pt)
#only("3-")[- Definiere $f(1) = 2$]
#v(20pt)
#only("4-")[- Nun ist $lim_(x -> 1) f(x) = f(1)$, also ist $f(x)$ stetig bei $x = 1$ ✅]
#only("1")[
#voiceover("Zuerst vereinfachen wir die Funktion. Für x ungleich 1 vereinfacht sich f von x zu x plus 1.")
]
#only("2")[
#voiceover("Als nächstes überprüfen wir den Grenzwert, wenn sich x 1 nähert. Der Grenzwert von x plus 1, wenn sich x 1 nähert, ist gleich 2.")
]
#only("3")[
#voiceover("Nun definieren wir f von 1 gleich 2.")
]
#only("4")[
#voiceover("Mit dieser Definition ist der Grenzwert von f von x, wenn sich x 1 nähert, gleich f von 1. Daher ist f von x stetig bei x gleich 1.")
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

def f(x):
    return (x**2 - 1) / (x - 1) if x != 1 else 2

x = np.linspace(0, 2, 100)
y = [f(xi) for xi in x]

plt.figure(figsize=(6, 4))
plt.plot(x, y, color='blue', label='f(x)')
plt.scatter(1, 2, color='red', label='f(1) = 2')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Kontinuität von f(x) bei x = 1')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Funktion. Die blaue Linie stellt f von x dar, und der rote Punkt zeigt den Punkt, an dem wir f von 1 gleich 2 definiert haben. Wie Du sehen kannst, ist die Funktion bei x gleich 1 stetig.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Um die Kontinuität zu überprüfen, betrachte den Grenzwert und den Funktionswert 🔍]
#v(20pt)
#only("2-")[- Wenn $lim_(x -> a) f(x) = f(a)$, dann ist $f(x)$ stetig bei $x = a$ ✅]
#v(20pt)
#only("3-")[- Das Üben der Kontinuität beinhaltet das Überprüfen verschiedener Punkte 📝]
#only("1")[
#voiceover("Zusammenfassend, um die Kontinuität zu überprüfen, betrachten wir den Grenzwert und den Funktionswert an einem Punkt.")
]
#only("2")[
#voiceover("Wenn der Grenzwert von f von x, wenn sich x a nähert, gleich f von a ist, dann ist f von x stetig bei x gleich a.")
]
#only("3")[
#voiceover("Das Üben der Kontinuität beinhaltet das Überprüfen verschiedener Punkte, um Verständnis und Vertrautheit mit dem Konzept aufzubauen.")
]
]