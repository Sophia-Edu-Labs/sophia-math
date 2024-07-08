#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von Potenzfunktionen]

#v(40pt)

#only("1-")[$ f(x) = 25x^(-1) $]

#v(20pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Vereinfachen]]]

#v(20pt)

#only("3-")[$ f(x) = 25 / x $]

#only("1")[
#voiceover("Großartig! Du hast die vereinfachte Form korrekt erkannt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich fünfundzwanzig mal x hoch minus eins.")
]

#only("2")[
#voiceover("Nun lass uns diesen Ausdruck vereinfachen. Denke daran, wenn wir einen negativen Exponenten haben, können wir ihn als Bruch umschreiben.")
]

#only("3")[
#voiceover("Also wird x hoch minus eins zu eins durch x. Das gibt uns unsere vereinfachte Form: f von x gleich fünfundzwanzig geteilt durch x.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis von negativen Exponenten]

#v(40pt)

#only("1-")[$ x^(-n) = 1 / x^n $]

#v(20pt)

#only("2-")[Beispiel: $ x^(-2) = 1 / x^2 $]

#only("1")[
#voiceover("Um das besser zu verstehen, erinnern wir uns an die Regel für negative Exponenten. Jede Variable x hoch minus n ist gleich eins geteilt durch x hoch n.")
]

#only("2")[
#voiceover("Zum Beispiel ist x hoch minus zwei gleich eins geteilt durch x zum Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Regel]

#v(40pt)

#only("1-")[$ f(x) = 25x^(-1) $]

#v(20pt)

#only("2-")[$ = 25 · (1 / x^1) $]

#v(20pt)

#only("3-")[$ = 25 / x $]

#only("1")[
#voiceover("Nun lass uns diese Regel auf unsere ursprüngliche Funktion anwenden. Wir beginnen mit f von x gleich fünfundzwanzig mal x hoch minus eins.")
]

#only("2")[
#voiceover("Mit unserer Regel können wir dies als fünfundzwanzig mal eins durch x hoch eins umschreiben.")
]

#only("3")[
#voiceover("Das vereinfacht sich zu fünfundzwanzig geteilt durch x, was unsere endgültige Antwort ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]

#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 10, 1000)
y = 25 / x

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 25/x')
plt.title('Graph of f(x) = 25/x')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
caption: [Graph von $f(x) = 25/x$]
)
]
]

#only("1")[
#voiceover("Hier ist eine grafische Darstellung unserer Funktion f von x gleich fünfundzwanzig geteilt durch x. Beachte, wie es eine Hyperbel ist, die sich den x- und y-Achsen annähert, aber sie nie berührt. Dies ist charakteristisch für reziproke Funktionen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]

#v(40pt)

#only("1-")[- Negative Exponenten können als Brüche umgeschrieben werden 📝]

#v(20pt)

#only("2-")[- $ x^(-n) = 1 / x^n $ ist eine grundlegende Regel 🧮]

#v(20pt)

#only("3-")[- Vereinfachung macht Funktionen oft leichter verständlich und handhabbar 🔍]

#only("1")[
#voiceover("Lass uns zusammenfassen, was wir gelernt haben. Erstens, negative Exponenten können immer als Brüche umgeschrieben werden.")
]

#only("2")[
#voiceover("Die Regel x hoch minus n gleich eins durch x hoch n ist grundlegend für die Vereinfachung solcher Ausdrücke.")
]

#only("3")[
#voiceover("Schließlich macht die Vereinfachung von Funktionen sie oft leichter verständlich und handhabbar. Großartige Arbeit beim Meistern dieses Konzepts!")
]
]