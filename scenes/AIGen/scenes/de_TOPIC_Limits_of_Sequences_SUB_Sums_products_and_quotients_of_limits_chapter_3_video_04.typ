#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Quotienten]
#v(40pt)
#only("1-")[- Für Folgen $a_n$ und $b_n$, wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (mit $M != 0$), dann:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n / b_n) = L / M$]
#only("1")[
#voiceover("Wenn wir zwei Folgen a_n und b_n haben und der Grenzwert von a_n für n gegen unendlich L ist, und der Grenzwert von b_n für n gegen unendlich M ist, wobei M ungleich null ist, dann...")
]
#only("2")[
#voiceover("ist der Grenzwert des Quotienten von a_n und b_n für n gegen unendlich gleich dem Quotienten ihrer Grenzwerte, L durch M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte $a_n = 1/n$ und $b_n = 2$.]
#v(20pt)
#only("2-")[$lim_(n -> infinity) a_n = 0$ und $lim_(n -> infinity) b_n = 2$]
#v(20pt)
#only("3-")[$lim_(n -> infinity) (a_n / b_n) = lim_(n -> infinity) (1/n) / 2 = 0 / 2 = 0$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 2.")
]
#only("2")[
#voiceover("Wir wissen, dass der Grenzwert von a_n für n gegen unendlich 0 ist, und der Grenzwert von b_n für n gegen unendlich 2 ist.")
]
#only("3")[
#voiceover("Also ist der Grenzwert des Quotienten von a_n und b_n für n gegen unendlich gleich dem Grenzwert von 1 durch n geteilt durch 2, was 0 geteilt durch 2 ist, was 0 ergibt.")
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

n = np.arange(1, 100)
a_n = 1 / n
b_n = [2] * len(n)

plt.figure(figsize=(8, 6))
plt.plot(n, a_n / b_n, 'b-', label='$a_n / b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Grenzwert')
plt.xlabel('n')
plt.ylabel('Wert')
plt.title('Konvergenz von $a_n / b_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Konvergenz von a_n geteilt durch b_n. Wenn n größer wird, nähert sich der Quotient immer mehr dem Grenzwert, der 0 ist, wie durch die rote gestrichelte Linie gezeigt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwert des Quotienten = Quotient der Grenzwerte 🧮]
#v(20pt)
#only("2-")[- Der Grenzwert des Nenners darf nicht null sein ❌0️⃣]
#v(20pt)
#only("3-")[- Nützlich zum Finden von Grenzwerten komplexer Folgen 🔍]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert des Quotienten zweier Folgen gleich dem Quotienten ihrer Grenzwerte.")
]
#only("2")[
#voiceover("Es ist jedoch wichtig zu beachten, dass der Grenzwert der Nennerfolge nicht null sein darf.")
]
#only("3")[
#voiceover("Diese Eigenschaft ist sehr nützlich, wenn man die Grenzwerte komplexerer Folgen, die Divisionen beinhalten, finden möchte.")
]
]