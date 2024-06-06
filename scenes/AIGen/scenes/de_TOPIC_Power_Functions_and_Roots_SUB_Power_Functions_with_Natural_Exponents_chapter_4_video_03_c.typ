#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Verhalten, wenn $x$ gegen Null geht]
#v(40pt)
#only("1-")[- Betrachte $f(x) = x^7$, wenn $x$ gegen Null geht 🔍]
#only("2-")[- Wenn $x$ näher an Null kommt, nähert sich $x^7$ auch Null]
#only("3-")[- Beispiel: $0.1^7 = 0.0000001$, $0.01^7 = 0.0000000001$ 🧮]
#only("4-")[- Im Grenzwert: $lim_(x->0) x^7 = 0$ ✅]
#only("1")[
#voiceover("Nicht ganz. Lass uns trotzdem sehen, warum. Wir betrachten die Funktion f von x gleich x hoch 7 und wollen wissen, was passiert, wenn x gegen Null geht.")
]
#only("2")[
#voiceover("Wenn x näher und näher an Null kommt, nähert sich x hoch 7 auch näher und näher an Null.")
]
#only("3")[
#voiceover("Zum Beispiel, 0.1 hoch 7 ist 0.0000001, und 0.01 hoch 7 ist 0.0000000001. Wenn x kleiner wird, wird x hoch 7 viel kleiner.")
]
#only("4")[
#voiceover("Im Grenzwert, wenn x gegen 0 geht, nähert sich x hoch 7 gegen 0. Wir schreiben dies als den Grenzwert von x hoch 7, wenn x gegen 0 geht, gleich 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 1, 1000)
y = x**7

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, linewidth=2, color='blue', label='$f(x) = x^7$')
ax.set_xlabel('$x$', fontsize=14)
ax.set_ylabel('$f(x)$', fontsize=14)
ax.set_title('Graph von $f(x) = x^7$', fontsize=16)
ax.grid(True, linestyle='--', alpha=0.7)
ax.axhline(0, color='black', linewidth=0.8)
ax.axvline(0, color='black', linewidth=0.8)

# Hervorhebung des Verhaltens in der Nähe von Null
ax.set_xlim(-0.5, 0.5)
ax.set_ylim(-0.01, 0.01)

# Hinzufügen von Pfeil und Text
ax.annotate('Wenn $x$ gegen 0 geht,\nnähert sich $f(x)$ 0',
            xy=(0, 0), xycoords='data',
            xytext=(0.2, 0.002), textcoords='data',
            arrowprops=dict(arrowstyle='->',
                            connectionstyle="arc3"),
            fontsize=12, ha='center')

ax.legend(fontsize=12)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Graph der Funktion f von x gleich x hoch 7. Beachte, wie sich der Funktionswert sehr nahe an 0 nähert, wenn x nahe an 0 kommt, genau wie wir besprochen haben. Der Pfeil im Graphen hebt dieses Verhalten hervor - wenn x gegen 0 geht, nähert sich f von x auch 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Für Potenzfunktionen $f(x) = x^n$ mit $n$ > 0:]
#only("2-")[    - Wenn $x$ gegen 0 geht, nähert sich $f(x)$ auch 0 📉]
#only("3-")[    - Je größer $n$ ist, desto schneller nähert sich $f(x)$ 0 🏃‍♂️💨]
#only("4-")[- Dieses Verhalten liegt an den Eigenschaften von Exponenten 🔢]
#only("1")[
#voiceover("Im Allgemeinen sehen wir dieses Verhalten bei Potenzfunktionen f von x gleich x hoch n, wobei n positiv ist.")
]
#only("2")[
#voiceover("Wenn x gegen 0 geht, nähert sich f von x auch 0.")
]
#only("3")[
#voiceover("Außerdem, je größer n ist, desto schneller nähert sich f von x 0, wenn x gegen 0 geht.")
]
#only("4")[
#voiceover("Dieses Verhalten ergibt sich aus den grundlegenden Eigenschaften von Exponenten. Großartige Arbeit bei diesem Problem! Du hast ein solides Verständnis des Verhaltens von Potenzfunktionen in der Nähe von Null.")
]
]