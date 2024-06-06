#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graph von $f(x) = x^4$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 1000)
y = x**4

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, linewidth=2, color='blue', label='$f(x) = x^4$')
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.set_title('Graph von $f(x) = x^4$')
ax.grid(True)
ax.legend(fontsize=12)
ax.set_xlim(-3, 3)
ax.set_ylim(0, 81)

plt.show()
```,
width: 360pt),
)
]
]
// Der Graph von f(x) = x^4 wird mit matplotlib geplottet
#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns im Video sehen, warum der Graph von f von x gleich x hoch 4 steiler ist als der von f von x gleich x quadrat.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[- Betrachte Punkte auf dem Graphen 📈]
#v(20pt)
#only("2-")[- Wenn $|x|$ zunimmt, steigt $x^4$ schneller als $x^2$ 📶]
#v(20pt)
#only("3-")[- Beispiel: $2^4=16$ vs $2^2=4$ 🧮]
#v(20pt)
#only("4-")[- Resultiert in einer steileren Parabel 📐]
#only("1")[
#voiceover("Um die Form zu verstehen, lass uns einige Punkte auf dem Graphen betrachten.")
]
#only("2")[
#voiceover("Wenn der Absolutwert von x zunimmt, steigt x hoch vier schneller als x quadrat.")
]  
#only("3")[
#voiceover("Zum Beispiel, 2 hoch vier ergibt 16, während 2 quadrat nur 4 ergibt.")
]
#only("4")[
#voiceover("Dieser schnelle Anstieg resultiert in einer Parabel, die steiler ist als die für x quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $f(x) = x^4$ ist eine Parabel 📊]
#v(20pt)  
#only("2-")[- Steiler als $f(x) = x^2$ aufgrund des schnellen Anstiegs von $x^4$ 📈]
#v(20pt)
#only("3-")[- Charakteristische Form von Funktionen mit geraden Exponenten 🎓]
#only("1")[
#voiceover("Zusammenfassend ist der Graph von f von x gleich x hoch vier eine Parabel.")
]
#only("2")[
#voiceover("Sie ist steiler als die Parabel von f von x gleich x quadrat aufgrund des schnelleren Anstiegs von x hoch vier im Vergleich zu x quadrat.")
]
#only("3")[  
#voiceover("Diese steilere parabolische Form ist charakteristisch für Funktionen mit geraden Exponenten wie x hoch vier, x hoch sechs und so weiter.")
]
]