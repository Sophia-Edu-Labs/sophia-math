#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Potenzfunktionen 📈]

#v(40pt)

#only("1-")[- Potenzfunktion: $f(x) = x^n$, wobei $n$ eine natürliche Zahl ist]
#only("2-")[- Der Graph ändert seine Form in Abhängigkeit von $n$]
#only("3-")[- Gerade $n$ ergeben Parabeln 📉]

#v(40pt)

#only("1")[
#voiceover("Lass uns kurz wiederholen, was wir über Potenzfunktionen gelernt haben. Eine Potenzfunktion ist eine Funktion der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]

#only("2")[
#voiceover("Die Form des Graphen einer Potenzfunktion ändert sich in Abhängigkeit vom Wert von n.")
]

#only("3")[
#voiceover("Wenn n eine gerade Zahl ist, ist der Graph der Potenzfunktion eine Parabel.")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(6, 6))

for n in [2, 4, 6]:
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Gerade Potenzfunktionen')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("4")[
#voiceover("Hier siehst du die Graphen einiger gerader Potenzfunktionen, nämlich x quadrat, x hoch 4 und x hoch 6. Alle diese Graphen sind Parabeln, nur mit unterschiedlicher Steilheit.")
]

]