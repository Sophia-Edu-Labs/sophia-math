#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen mit negativen Exponenten]
#v(40pt)
Welche der folgenden Eigenschaften trifft auf Potenzfunktionen mit einem negativen Exponenten zu?
#v(40pt)
#only("-1")[a) Immer steigend]#only("2-")[#text(fill:red)[a) Immer steigend]]
#v(10pt)
#only("-2")[b) Symmetrisch zur y-Achse]#only("3-")[#text(fill:red)[b) Symmetrisch zur y-Achse]]
#v(10pt)
#only("-3")[c) Stellt eine Kehrwertfunktion dar]#only("4-")[#text(fill:green)[c) Stellt eine Kehrwertfunktion dar]]
#v(10pt)
#only("-4")[d) Hat einen Maximalpunkt]#only("5-")[#text(fill:red)[d) Hat einen Maximalpunkt]]

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum c die richtige Antwort ist.")]
#only("2")[#voiceover("Option a, 'Immer steigend', ist falsch. Potenzfunktionen mit negativen Exponenten nehmen tatsächlich ab, wenn x zunimmt.")]
#only("3")[#voiceover("Option b, 'Symmetrisch zur y-Achse', ist ebenfalls falsch. Diese Funktionen sind nicht symmetrisch zur y-Achse.")]
#only("4")[#voiceover("Option c, 'Stellt eine Kehrwertfunktion dar', ist richtig! Potenzfunktionen mit negativen Exponenten sind tatsächlich Kehrwertfunktionen.")]
#only("5")[#voiceover("Option d, 'Hat einen Maximalpunkt', ist falsch. Diese Funktionen haben keinen Maximalpunkt; sie nähern sich der x-Achse, erreichen sie aber nie.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis von Kehrwertfunktionen]
#v(40pt)
#only("1-")[- Definition: $f(x) = 1/x^n$, wobei $n > 0$]
#v(20pt)
#only("2-")[- Beispiel: $f(x) = 1/x^2$]
#v(20pt)
#only("3-")[- Wenn $x$ zunimmt, nähert sich $y$ der 0]
#v(20pt)
#only("4-")[- Wenn $x$ sich der 0 nähert, geht $y$ gegen unendlich]

#only("1")[#voiceover("Lass uns tiefer in Kehrwertfunktionen eintauchen. Eine Kehrwertfunktion ist definiert als f von x gleich eins durch x hoch n, wobei n größer als null ist.")]
#only("2")[#voiceover("Zum Beispiel ist f von x gleich eins durch x quadrat eine Kehrwertfunktion.")]
#only("3")[#voiceover("Bei diesen Funktionen nähert sich y der null, wenn x zunimmt, erreicht sie aber nie.")]
#only("4")[#voiceover("Umgekehrt nähert sich y der Unendlichkeit, wenn x sich der null nähert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung von Kehrwertfunktionen]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y1 = 1/x
y2 = 1/x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = 1/x')
plt.plot(x, y2, label='f(x) = 1/x²')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Kehrwertfunktionen')
plt.legend()
plt.grid(True)
plt.ylim(0, 10)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung von zwei Kehrwertfunktionen: f von x gleich eins durch x und f von x gleich eins durch x quadrat.")]
#only("2")[#voiceover("Beachte, wie beide Kurven sich der x-Achse nähern, wenn x zunimmt, sie aber nie berühren. Dies ist ein wesentliches Merkmal von Kehrwertfunktionen.")]
#only("3")[#voiceover("Beobachte auch, wie die Funktionen gegen unendlich gehen, wenn x sich der null nähert. Dies erzeugt eine vertikale Asymptote bei x gleich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Eigenschaften von Kehrwertfunktionen]
#v(40pt)
#only("1-")[- 📉 Abnehmende Funktion]
#v(20pt)
#only("2-")[- 🔄 Umgekehrte Beziehung zwischen x und y]
#v(20pt)
#only("3-")[- 📊 Vertikale Asymptote bei x = 0]
#v(20pt)
#only("4-")[- 📈 Horizontale Asymptote bei y = 0]

#only("1")[#voiceover("Fassen wir die wichtigsten Eigenschaften von Kehrwertfunktionen zusammen. Erstens sind sie abnehmende Funktionen, das heißt, wenn x zunimmt, nimmt y ab.")]
#only("2")[#voiceover("Sie zeigen eine umgekehrte Beziehung zwischen x und y. Wenn das eine größer wird, wird das andere kleiner.")]
#only("3")[#voiceover("Sie haben eine vertikale Asymptote bei x gleich null, was bedeutet, dass die Funktion bei x gleich null nicht definiert ist.")]
#only("4")[#voiceover("Schließlich haben sie eine horizontale Asymptote bei y gleich null, die die Funktion annähert, aber nie erreicht, wenn x zunimmt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Potenzfunktionen mit negativen Exponenten sind Kehrwertfunktionen 🔍]
#v(20pt)
#only("2-")[- Sie haben einzigartige Eigenschaften, die sie von anderen Funktionen unterscheiden 🏷️]
#v(20pt)
#only("3-")[- Das Verständnis dieser Eigenschaften ist in Mathematik und realen Anwendungen entscheidend 🌍]

#only("1")[#voiceover("Abschließend sind Potenzfunktionen mit negativen Exponenten tatsächlich Kehrwertfunktionen.")]
#only("2")[#voiceover("Sie haben einzigartige Eigenschaften, die sie von anderen Funktionstypen unterscheiden.")]
#only("3")[#voiceover("Das Verständnis dieser Eigenschaften ist nicht nur für die Mathematik wichtig, sondern auch für viele reale Anwendungen in Physik, Ingenieurwesen und Wirtschaft. Großartige Arbeit beim Erkennen dieses wichtigen Merkmals!")]
]