#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten von Potenzfunktionen]
#v(40pt)
#only("1-")[Welche der folgenden Aussagen beschreibt das Verhalten von $f(x) = x^4$, wenn $x$ gegen unendlich und minus unendlich geht?]
#v(20pt)
#only("-1")[a) Geht gegen 0]#only("2-")[#text(fill:red)[a) Geht gegen 0]]
#v(10pt)
#only("-2")[b) Wächst exponentiell]#only("3-")[#text(fill:red)[b) Wächst exponentiell]]
#v(10pt)
#only("-3")[c) Nimmt ohne Grenze ab]#only("4-")[#text(fill:red)[c) Nimmt ohne Grenze ab]]
#v(10pt)
#only("-4")[d) Nimmt ohne Grenze zu]#only("5-")[#text(fill:green)[d) Nimmt ohne Grenze zu]]

#only("1")[#voiceover("Ausgezeichnete Arbeit! Du hast das Verhalten der Funktion f von x gleich x hoch vier richtig erkannt. Lass uns erklären, warum dies die richtige Antwort ist und jede Option untersuchen.")]
#only("2")[#voiceover("Option a, 'Geht gegen 0', ist falsch. Wenn x sehr groß wird, sowohl in positiver als auch in negativer Richtung, wird x hoch vier ebenfalls sehr groß und nähert sich nicht null.")]
#only("3")[#voiceover("Option b, 'Wächst exponentiell', ist nicht korrekt. Obwohl die Funktion schnell wächst, handelt es sich nicht um exponentielles Wachstum. Es ist polynomiales Wachstum, das sich von exponentiellem Wachstum unterscheidet.")]
#only("4")[#voiceover("Option c, 'Nimmt ohne Grenze ab', ist falsch. Diese Funktion nimmt tatsächlich sowohl bei sehr großen positiven als auch bei sehr großen negativen x-Werten zu.")]
#only("5")[#voiceover("Option d, 'Nimmt ohne Grenze zu', ist korrekt. Wenn x gegen unendlich oder minus unendlich geht, wird x hoch vier ohne Grenze zunehmen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Analyse von $f(x) = x^4$]
#v(40pt)
#only("1-")[Eigenschaften von $f(x) = x^4$:]
#v(20pt)
#only("2-")[- Gerade Funktion 🔄]
#v(10pt)
#only("3-")[- Symmetrisch zur y-Achse 📏]
#v(10pt)
#only("4-")[- Geht durch (0,0), (1,1) und (-1,1) 📍]

#only("1")[#voiceover("Lass uns die Funktion f von x gleich x hoch vier analysieren, um ihr Verhalten besser zu verstehen.")]
#only("2")[#voiceover("Zuerst, es ist eine gerade Funktion. Das bedeutet, f von x ist gleich f von minus x für alle x.")]
#only("3")[#voiceover("Daher ist sie symmetrisch zur y-Achse. Der Graph sieht auf beiden Seiten der y-Achse gleich aus.")]
#only("4")[#voiceover("Die Funktion geht durch die Punkte (0,0), (1,1) und (-1,1). Dies hilft uns, ihre Form in der Nähe des Ursprungs zu visualisieren.")]
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

x = np.linspace(-2, 2, 1000)
y = x**4

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = x^4')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = x^4')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist ein Graph von f von x gleich x hoch vier. Beachte, wie die Funktion auf beiden Seiten der y-Achse nach oben kurvt.")]
#only("2")[#voiceover("Wenn sich x in beide Richtungen von null entfernt, steigt y sehr schnell an. Dies veranschaulicht, warum die Funktion ohne Grenze zunimmt, wenn x gegen unendlich oder minus unendlich geht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten, wenn $x$ gegen unendlich geht]
#v(40pt)
#only("1-")[Wenn $x -> oo$:]
#v(20pt)
#only("2-")[- $x^4$ wird sehr groß positiv 📈]
#v(20pt)
#only("3-")[Wenn $x -> -oo$:]
#v(20pt)
#only("4-")[- $x^4$ wird ebenfalls sehr groß positiv 📈]

#only("1")[#voiceover("Lass uns das Verhalten der Funktion untersuchen, wenn x gegen unendlich geht.")]
#only("2")[#voiceover("Wenn x gegen positiv unendlich geht, wird x hoch vier sehr groß und positiv. Das liegt daran, dass jede große positive Zahl, die hoch vier genommen wird, eine noch größere positive Zahl ergibt.")]
#only("3")[#voiceover("Nun betrachten wir, was passiert, wenn x gegen negativ unendlich geht.")]
#only("4")[#voiceover("Interessanterweise wird x hoch vier auch sehr groß und positiv, wenn x gegen negativ unendlich geht. Das liegt daran, dass jede negative Zahl, die zu einer geraden Potenz erhoben wird, positiv wird, und je größer die negative Zahl, desto größer das Ergebnis, wenn sie hoch vier genommen wird.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $f(x) = x^4$ nimmt ohne Grenze zu, wenn $x -> oo$ oder $x -> -oo$ 🚀]
#v(20pt)
#only("2-")[- Dieses Verhalten ist charakteristisch für Funktionen mit geraden Potenzen 🔢]
#v(20pt)
#only("3-")[- Das Verständnis dieses Verhaltens hilft bei der Analyse komplexerer Funktionen 🧠]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass f von x gleich x hoch vier ohne Grenze zunimmt, wenn x gegen positiv oder negativ unendlich geht.")]
#only("2")[#voiceover("Dieses Verhalten ist charakteristisch für Funktionen mit geraden Potenzen. Alle Funktionen der Form x hoch 2n, wobei n eine positive ganze Zahl ist, werden sich so verhalten.")]
#only("3")[#voiceover("Das Verständnis dieses Verhaltens ist entscheidend, wenn komplexere Funktionen analysiert oder reale Probleme, die schnelles Wachstum beinhalten, gelöst werden. Gute Arbeit beim Erkennen dieser wichtigen Eigenschaft!")]
]