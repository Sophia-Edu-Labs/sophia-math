#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade vs Ungerade Potenzfunktionen]

#v(40pt)

#only("1-")[
- Gerade Potenzfunktionen: $f(x) = x^n$, wobei $n$ gerade ist
- Ungerade Potenzfunktionen: $f(x) = x^n$, wobei $n$ ungerade ist
]

#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)

plt.figure(figsize=(8, 6))

plt.plot(x, x**2, label='$x^2$ (Gerade)', color='blue')
plt.plot(x, x**3, label='$x^3$ (Ungerade)', color='red')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Gerade und Ungerade Potenzfunktionen')
plt.grid(True)
plt.legend()
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)

plt.show()
```,
width: 360pt),
)
]
]
]

#v(40pt)

#only("3-")[
- Gerade Potenzfunktionen sind symmetrisch zur y-Achse 📈
- Ungerade Potenzfunktionen sind symmetrisch zum Ursprung 🎯
]

#only("1")[
#voiceover("Lass uns den Unterschied zwischen geraden und ungeraden Potenzfunktionen rekapitulieren. Gerade Potenzfunktionen haben die Form f von x gleich x hoch n, wobei n eine gerade Zahl ist. Ungerade Potenzfunktionen haben die Form f von x gleich x hoch n, wobei n eine ungerade Zahl ist.")
]

#only("2")[
#voiceover("Hier ist ein Diagramm, das ein Beispiel für eine gerade Potenzfunktion, x Quadrat in Blau, und eine ungerade Potenzfunktion, x Kubik in Rot, zeigt.")
]

#only("3")[
#voiceover("Der Hauptunterschied in ihrer Symmetrie besteht darin, dass gerade Potenzfunktionen symmetrisch zur y-Achse sind, während ungerade Potenzfunktionen symmetrisch zum Ursprung sind.")
]
]