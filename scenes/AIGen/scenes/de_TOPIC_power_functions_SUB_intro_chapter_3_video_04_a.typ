#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Ausgezeichnete Arbeit! Du hast die Potenzfunktion korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Potenzfunktion mit negativem Koeffizienten]

#v(40pt)

#only("2-")[#text()[$ f(x) = -5x^2 $]]

#only("2")[
#voiceover("Wir betrachten die Potenzfunktion f von x gleich minus fünf mal x Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Komponenten verstehen]

#v(40pt)

#only("1-")[- Koeffizient ($a$): $-5$]
#v(20pt)
#only("2-")[- Variable ($x$)]
#v(20pt)
#only("3-")[- Exponent ($b$): $2$]

#only("1")[
#voiceover("Lass uns die Komponenten unserer Funktion aufschlüsseln. Zuerst haben wir den Koeffizienten a, der minus fünf ist.")
]

#only("2")[
#voiceover("Als nächstes haben wir unsere Variable x.")
]

#only("3")[
#voiceover("Schließlich haben wir den Exponenten b, der 2 ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Lösung überprüfen]

#v(40pt)

#only("1-")[1. Negativer Koeffizient ✅]
#v(20pt)
#only("2-")[2. Geht durch (1, -5) ❓]
#v(20pt)
#only("3-")[3. Exponent $b = 2$ ✅]

#only("1")[
#voiceover("Nun lass uns überprüfen, ob unsere Funktion alle Anforderungen erfüllt. Zuerst können wir sehen, dass der Koeffizient tatsächlich negativ ist, was unsere erste Bedingung erfüllt.")
]

#only("2")[
#voiceover("Als nächstes müssen wir überprüfen, ob die Funktion durch den Punkt (1, -5) geht.")
]

#only("3")[
#voiceover("Schließlich können wir bestätigen, dass der Exponent b gleich 2 ist, wie gefordert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Punkt (1, -5) überprüfen]

#v(40pt)

#only("1-")[$ f(1) = -5 dot (1)^2 $]
#v(20pt)
#only("2-")[$ f(1) = -5 dot 1 $]
#v(20pt)
#only("3-")[$ f(1) = -5 $]

#only("1")[
#voiceover("Lass uns überprüfen, ob unsere Funktion durch den Punkt (1, -5) geht. Wir tun dies, indem wir x gleich 1 in unsere Funktion einsetzen. Also, f von 1 gleich minus fünf mal eins Quadrat.")
]

#only("2")[
#voiceover("Eins Quadrat ist einfach eins, also bleibt uns minus fünf mal eins.")
]

#only("3")[
#voiceover("Dies vereinfacht sich zu minus fünf, was tatsächlich die y-Koordinate unseres Punktes ist. Unsere Funktion geht also durch den Punkt (1, -5).")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Funktion visualisieren]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = -5 * x**2

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='f(x) = -5x²')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.plot(1, -5, 'ro', label='(1, -5)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of f(x) = -5x²')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
caption: [Graph von $f(x) = -5x^2$]
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unserer Funktion. Wie wir sehen können, ist es eine Parabel, die aufgrund des negativen Koeffizienten nach unten geöffnet ist. Der rote Punkt stellt den Punkt (1, -5) dar, durch den unsere Funktion geht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Funktion: $ f(x) = -5x^2 $ 📊]
#v(20pt)
#only("2-")[- Negativer Koeffizient: $a = -5$ ➖]
#v(20pt)
#only("3-")[- Geht durch (1, -5) ✅]
#v(20pt)
#only("4-")[- Exponent $b = 2$ 🔢]

#only("1")[
#voiceover("Zusammenfassend erfüllt unsere Potenzfunktion f von x gleich minus fünf x Quadrat alle erforderlichen Bedingungen.")
]

#only("2")[
#voiceover("Sie hat einen negativen Koeffizienten von minus fünf,")
]

#only("3")[
#voiceover("geht durch den Punkt (1, -5),")
]

#only("4")[
#voiceover("und hat einen Exponenten b gleich 2. Gut gemacht bei der Lösung dieses Problems!")
]
]