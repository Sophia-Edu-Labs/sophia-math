#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
#only("1-")[- Von der Form $f(x) = x^n$, wobei $n$ eine natürliche Zahl ist 🔢]
#only("1")[
#voiceover("Betrachten wir Potenzfunktionen der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten, wenn $x arrow 0$]
#v(40pt)
#only("1-")[- Wenn $x arrow 0$, dann $f(x) = x^n arrow 0$ für jede natürliche Zahl $n$]
#v(20pt)
#only("2-")[- Beispiele: $x^2 arrow 0$, $x^3 arrow 0$, $x^4 arrow 0$, wenn $x arrow 0$]
#only("1")[
#voiceover("Wir interessieren uns für das Verhalten dieser Funktionen, wenn x gegen null geht. Es stellt sich heraus, dass, wenn x gegen null geht, der Wert von f von x gleich x hoch n ebenfalls gegen null geht, unabhängig vom Wert von n.")
]
#only("2")[
#voiceover("Zum Beispiel nähern sich x Quadrat, x Kubik und x hoch vier alle null, wenn x gegen null geht.")
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

x = np.linspace(-1, 1, 100)

plt.figure(figsize=(8, 6))

for n in range(2, 6):
    y = x**n
    plt.plot(x, y, label=f'$x^{n}$')

plt.xlim(-1, 1)
plt.ylim(-0.1, 1)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.legend(loc='upper right')
plt.title('Potenzfunktionen, wenn $x arrow 0$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung mehrerer Potenzfunktionen, wenn x gegen null geht. Beachte, wie alle Kurven gegen null gehen, wenn x näher an null kommt, unabhängig vom Exponenten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Das Multiplizieren von Zahlen zwischen -1 und 1 macht sie kleiner 📉]
#v(20pt)
#only("2-")[- Beispiel: $0.5 dot 0.5 = 0.25$, $0.5 dot 0.5 dot 0.5 = 0.125$]
#only("1")[
#voiceover("Intuitiv ergibt das Sinn. Wenn Du Zahlen zwischen minus eins und eins multiplizierst, wird das Ergebnis kleiner.")
]
#only("2")[
#voiceover("Zum Beispiel ergibt null Komma fünf mal null Komma fünf null Komma zwei fünf, und null Komma fünf mal null Komma fünf mal null Komma fünf ergibt null Komma eins zwei fünf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzfunktionen: $f(x) = x^n$, $n$ ist eine natürliche Zahl]
#v(20pt)
#only("2-")[- Wenn $x arrow 0$, dann $f(x) arrow 0$ für jede natürliche Zahl $n$]
#v(20pt)
#only("3-")[- Intuition: Das Multiplizieren kleiner Zahlen macht sie kleiner]
#only("1")[
#voiceover("Zusammenfassend sind Potenzfunktionen von der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Wenn x gegen null geht, geht auch der Wert von f von x gegen null, unabhängig vom Wert von n.")
]
#only("3")[
#voiceover("Das ergibt intuitiv Sinn, da das Multiplizieren von Zahlen zwischen minus eins und eins zu kleineren Zahlen führt.")
]
]]