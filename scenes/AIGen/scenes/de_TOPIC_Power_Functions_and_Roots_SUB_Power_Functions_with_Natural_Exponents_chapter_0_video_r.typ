#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen Rückblick]

#only("1-")[
- Form: $f(x) = x^n$, $n ∈ NN$
]

#only("1")[
#voiceover("Potenzfunktionen sind Funktionen der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]

#only("2-")[
- Beispiele: $x^2$, $x^3$, $x^4$, ...
]

#only("2")[
#voiceover("Einige Beispiele für Potenzfunktionen sind x Quadrat, x Kubik, x hoch vier und so weiter.")
]

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(8, 6))

for n in [2, 3, 4]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Power Functions')
plt.legend()
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.show()
```,
width: 360pt),
)
]
]

#only("3")[
#voiceover("Hier ist ein Diagramm, das einige Potenzfunktionen zeigt. Beachte, wie sie alle durch den Punkt (1, 1) verlaufen und steiler werden, je höher die Potenz ist.")
]

#only("4-")[
- Gerade Potenzen: symmetrisch zur y-Achse 📈
- Ungerade Potenzen: symmetrisch zum Ursprung 🔄
]

#only("4")[
#voiceover("Gerade Potenzfunktionen, wie x Quadrat, sind symmetrisch zur y-Achse. Ungerade Potenzfunktionen, wie x Kubik, sind symmetrisch zum Ursprung.")
]

#only("5-")[
- Wenn $x → ±∞$, dann $f(x) → ±∞$ 🚀
]

#only("5")[
#voiceover("Wenn x gegen positiv oder negativ unendlich geht, dann geht der Wert der Potenzfunktion ebenfalls gegen positiv oder negativ unendlich.")
]

#only("6-")[
- Ableitung: $f'(x) = n x^(n-1)$ 📉
]

#only("6")[
#voiceover("Die Ableitung einer Potenzfunktion ist n mal x hoch n minus 1.")
]

#only("7-")[
- Integral: $∫x^n dif x = (x^(n+1))/(n+1) + C$ 📈
]

#only("7")[
#voiceover("Das Integral einer Potenzfunktion ist x hoch n plus 1, geteilt durch n plus 1, plus eine Konstante C.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#only("1-")[
- Potenzfunktionen: $f(x) = x^n$, $n ∈ NN$ 💪
- Gerade Potenzen symmetrisch zur y-Achse, ungerade zum Ursprung 🔍
- Gehen gegen ±∞, wenn $x → ±∞$ 📈
- Ableitung: $f'(x) = n x^(n-1)$ 📉
- Integral: $∫x^n dif x = (x^(n+1))/(n+1) + C$ 📊
]

#only("1")[
#voiceover("Zusammenfassend sind Potenzfunktionen von der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist. Gerade Potenzen sind symmetrisch zur y-Achse, ungerade Potenzen zum Ursprung. Sie gehen gegen positiv oder negativ unendlich, wenn x gegen positiv oder negativ unendlich geht. Die Ableitung ist n mal x hoch n minus 1, und das Integral ist x hoch n plus 1, geteilt durch n plus 1, plus eine Konstante C.")
]

]