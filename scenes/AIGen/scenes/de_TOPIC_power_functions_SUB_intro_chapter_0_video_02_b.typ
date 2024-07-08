#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Form von quadratischen Funktionen]
#v(40pt)
Was ist die allgemeine Form einer quadratischen Funktion?
#v(40pt)
#only("-1")[a) $f(x) = a + b x$]#only("2-")[#text(fill:red)[a) $f(x) = a + b x$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^2 + b x + c$]#only("3-")[#text(fill:green)[b) $f(x) = a x^2 + b x + c$]]
#v(10pt)
#only("-3")[c) $f(x) = a x^b$]#only("4-")[#text(fill:red)[c) $f(x) = a x^b$]]
#v(10pt)
#only("-4")[d) $f(x) = a/x$]#only("5-")[#text(fill:red)[d) $f(x) = a/x$]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die allgemeine Form einer quadratischen Funktion richtig erkannt. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a ist falsch. f von x gleich a plus b x ist die allgemeine Form einer linearen Funktion, nicht einer quadratischen.")]
#only("3")[#voiceover("Option b ist korrekt. f von x gleich a x Quadrat plus b x plus c ist tatsächlich die allgemeine Form einer quadratischen Funktion. Wir werden dies im Detail besprechen.")]
#only("4")[#voiceover("Option c ist falsch. f von x gleich a x hoch b ist die allgemeine Form einer Potenzfunktion, nicht speziell einer quadratischen Funktion.")]
#only("5")[#voiceover("Option d ist falsch. f von x gleich a geteilt durch x ist die allgemeine Form einer Kehrwertfunktion, nicht einer quadratischen Funktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Bestandteile einer quadratischen Funktion]
#v(40pt)
#only("1-")[Allgemeine Form: $f(x) = a x^2 + b x + c$]
#v(20pt)
#only("2-")[- $a$: Koeffizient von $x^2$ (bestimmt Öffnungsrichtung und Breite) 📈]
#v(10pt)
#only("3-")[- $b$: Koeffizient von $x$ (beeinflusst Symmetrieachse) ↔️]
#v(10pt)
#only("4-")[- $c$: Konstante (y-Achsenabschnitt) 🔝]

#only("1")[#voiceover("Lass uns die allgemeine Form einer quadratischen Funktion aufschlüsseln: f von x gleich a x Quadrat plus b x plus c.")]
#only("2")[#voiceover("Der Koeffizient a bestimmt die Öffnungsrichtung und Breite der Parabel. Wenn a positiv ist, öffnet sich die Parabel nach oben; wenn negativ, öffnet sie sich nach unten.")]
#only("3")[#voiceover("Der Koeffizient b beeinflusst die Symmetrieachse der Parabel. Er verschiebt den Scheitelpunkt nach links oder rechts.")]
#only("4")[#voiceover("Der konstante Term c ist der y-Achsenabschnitt, wo die Parabel die y-Achse schneidet.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung quadratischer Funktionen]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y1 = x**2
y2 = -0.5*x**2
y3 = (x-2)**2 - 3

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x²')
plt.plot(x, y2, label='f(x) = -0.5x²')
plt.plot(x, y3, label='f(x) = (x-2)² - 3')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.legend()
plt.title('Different Quadratic Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Hier ist eine visuelle Darstellung verschiedener quadratischer Funktionen. Beachte, wie sich die Änderung der Koeffizienten auf die Form und Position der Parabel auswirkt.")]
#only("2")[#voiceover("Die blaue Kurve zeigt f von x gleich x Quadrat, eine grundlegende quadratische Funktion.")]
#only("3")[#voiceover("Die orange Kurve ist f von x gleich minus null Komma fünf x Quadrat. Der negative a-Wert dreht die Parabel nach unten und der kleinere absolute Wert von a macht sie breiter.")]
#only("4")[#voiceover("Die grüne Kurve ist f von x gleich x minus 2 Quadrat minus 3. Dies verschiebt die Parabel um 2 Einheiten nach rechts und 3 Einheiten nach unten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum ist das wichtig?]
#v(40pt)
#only("1-")[- Quadratische Funktionen modellieren viele Phänomene in der realen Welt 🌍]
#v(10pt)
#only("2-")[- Beispiele: Wurfbewegungen, Gewinnoptimierung, Physik 🚀💰🧲]
#v(10pt)
#only("3-")[- Das Verständnis der allgemeinen Form hilft beim Problemlösen 🧠]

#only("1")[#voiceover("Das Verständnis der allgemeinen Form quadratischer Funktionen ist entscheidend, weil sie viele Phänomene in der realen Welt modellieren.")]
#only("2")[#voiceover("Zum Beispiel beschreiben quadratische Funktionen die Wurfbewegung in der Physik, die Gewinnoptimierung in der Wirtschaft und viele andere wissenschaftliche und praktische Anwendungen.")]
#only("3")[#voiceover("Durch das Erkennen und Verstehen dieser allgemeinen Form wirst Du besser in der Lage sein, Probleme zu lösen und Situationen zu analysieren, die quadratische Beziehungen beinhalten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Allgemeine Form einer quadratischen Funktion: $f(x) = a x^2 + b x + c$ 📝]
#v(10pt)
#only("2-")[- Jeder Koeffizient ($a$, $b$, $c$) spielt eine spezifische Rolle 🔑]
#v(10pt)
#only("3-")[- Quadratische Funktionen sind vielseitig und weit verbreitet anwendbar 🌟]

#only("1")[#voiceover("Zusammenfassend ist die allgemeine Form einer quadratischen Funktion f von x gleich a x Quadrat plus b x plus c.")]
#only("2")[#voiceover("Jeder Koeffizient, a, b und c, spielt eine spezifische Rolle bei der Formung der Parabel und der Bestimmung ihrer Position.")]
#only("3")[#voiceover("Denke daran, dass quadratische Funktionen vielseitige Werkzeuge sind, die uns helfen, verschiedene reale Situationen zu verstehen und zu modellieren. Übe weiter mit unterschiedlichen Werten für a, b und c, um Dein Verständnis zu vertiefen!")]
]