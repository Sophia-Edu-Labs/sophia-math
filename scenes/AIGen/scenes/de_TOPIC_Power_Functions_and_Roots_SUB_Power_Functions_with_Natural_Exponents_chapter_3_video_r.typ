#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Potenzfunktionen für $x arrow infinity$]
#v(40pt)
#only("1-")[- Für $f(x) = x^n$, wobei $n$ eine natürliche Zahl ist]
#only("1")[
#voiceover("Lass uns das Verhalten von Potenzfunktionen der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist, rekapitulieren, wenn x gegen unendlich geht.")
]
#v(20pt)
#only("2-")[- Wenn $x arrow infinity$, dann $f(x) arrow infinity$]
#only("2")[
#voiceover("Wenn x gegen unendlich geht, dann geht der Wert der Funktion f von x ebenfalls gegen unendlich.")
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)

plt.figure(figsize=(8, 6))

for n in [1, 2, 3]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.title('Power Functions as $x arrow infinity$', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(0, 10)
plt.ylim(0, 100)

plt.show()
```,
width: 360pt),
)
]
]
#only("3")[
#voiceover("Dieses Verhalten gilt für jede natürliche Zahl n. Wie Du in diesem Diagramm sehen kannst, wachsen die Funktionen x hoch 1, x quadrat und x hoch 3 alle gegen unendlich, wenn x größer wird.")
]
#v(20pt)
#only("4-")[- 🔑 Wichtige Erkenntnis: $\lim_{x arrow infinity} x^n = infinity$ für $n in NN$]
#only("4")[
#voiceover("Die wichtigste Erkenntnis ist, dass der Limes von x hoch n, wenn x gegen unendlich geht, gleich unendlich ist, für jede natürliche Zahl n.")
]
]]