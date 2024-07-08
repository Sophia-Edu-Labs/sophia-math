#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Form kubischer Funktionen]
#v(40pt)
Was ist die allgemeine Form einer kubischen Funktion?
#v(20pt)
#only("-1")[a) $f(x) = a x^3 + b x + c$]#only("2-")[#text(fill:red)[a) $f(x) = a x^3 + b x + c$]]
#v(10pt)
#only("-2")[b) $f(x) = a x^3 + b x^2 + c x + d$]#only("3-")[#text(fill:green)[b) $f(x) = a x^3 + b x^2 + c x + d$]]
#v(10pt)
#only("-3")[c) $f(x) = a x^3 + b$]#only("4-")[#text(fill:red)[c) $f(x) = a x^3 + b$]]
#v(10pt)
#only("-4")[d) $f(x) = a/x^3$]#only("5-")[#text(fill:red)[d) $f(x) = a/x^3$]]

#only("1")[#voiceover("Ausgezeichnet! Du hast die allgemeine Form einer kubischen Funktion richtig erkannt. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("Option a ist falsch. Obwohl sie das kubische Glied $a x^3$ enthält, fehlt das quadratische Glied $b x^2$.")]
#only("3")[#voiceover("Option b ist korrekt. Dies ist tatsächlich die allgemeine Form einer kubischen Funktion: $f(x) = a x^3 + b x^2 + c x + d$. Hier sind $a$, $b$, $c$ und $d$ Konstanten, und $a$ ist nicht gleich null.")]
#only("4")[#voiceover("Option c ist falsch. Sie enthält nur das kubische Glied und eine Konstante, es fehlen sowohl das quadratische als auch das lineare Glied.")]
#only("5")[#voiceover("Option d ist ebenfalls falsch. Dies ist eigentlich die allgemeine Form einer reziproken kubischen Funktion, nicht einer standardmäßigen kubischen Funktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis kubischer Funktionen]
#v(40pt)
#only("1-")[- Kubische Funktion: Polynom dritten Grades 📊]
#v(20pt)
#only("2-")[- Allgemeine Form: $f(x) = a x^3 + b x^2 + c x + d$]
#v(20pt)
#only("3-")[- $a ≠ 0$ (stellt sicher, dass es kubisch ist) 🔑]
#v(20pt)
#only("4-")[- $b, c, d$ können beliebige reelle Zahlen sein (einschließlich 0) 🔢]

#only("1")[#voiceover("Lass uns tiefer in kubische Funktionen eintauchen. Eine kubische Funktion ist ein Polynom dritten Grades, was bedeutet, dass die höchste Potenz von $x$ 3 ist.")]
#only("2")[#voiceover("Die allgemeine Form einer kubischen Funktion ist $f(x) = a x^3 + b x^2 + c x + d$.")]
#only("3")[#voiceover("Es ist wichtig zu beachten, dass $a$ nicht null sein darf. Dies stellt sicher, dass die Funktion tatsächlich kubisch ist.")]
#only("4")[#voiceover("Die Koeffizienten $b$, $c$ und $d$ können beliebige reelle Zahlen sein, einschließlich null.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung kubischer Funktionen]
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3 - x
y2 = x**3 + x**2 - 2*x + 1

plt.figure(figsize=(10, 6))
plt.plot(x, y1, label='f(x) = x³ - x')
plt.plot(x, y2, label='f(x) = x³ + x² - 2x + 1')
plt.title('Beispiele kubischer Funktionen')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True)
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Blau: $f(x) = x^3 - x$ (einfachere kubische Funktion)]
#v(10pt)
#only("2-")[- Orange: $f(x) = x^3 + x^2 - 2x + 1$ (komplexere kubische Funktion)]

#only("1")[#voiceover("Lass uns einige kubische Funktionen visualisieren. Die blaue Kurve repräsentiert eine einfachere kubische Funktion: $f(x) = x^3 - x$.")]
#only("2")[#voiceover("Die orange Kurve zeigt eine komplexere kubische Funktion: $f(x) = x^3 + x^2 - 2x + 1$. Beachte, wie beide Kurven diese charakteristische S-Form haben, die typisch für kubische Funktionen ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Eigenschaften kubischer Funktionen]
#v(40pt)
#only("1-")[1. Schneidet die x-Achse mindestens einmal 📈]
#v(20pt)
#only("2-")[2. Kann bis zu 3 reelle Wurzeln haben 🌱]
#v(20pt)
#only("3-")[3. Ein Wendepunkt 🔄]
#v(20pt)
#only("4-")[4. Kein Maximum oder Minimum, wenn $a > 0$ 📈]
#v(20pt)
#only("5-")[5. Kein Maximum oder Minimum, wenn $a < 0$ 📉]

#only("1")[#voiceover("Kubische Funktionen haben mehrere wichtige Eigenschaften. Erstens schneiden sie die x-Achse mindestens einmal.")]
#only("2")[#voiceover("Sie können bis zu drei reelle Wurzeln haben, was bedeutet, dass sie die x-Achse bis zu dreimal schneiden können.")]
#only("3")[#voiceover("Jede kubische Funktion hat genau einen Wendepunkt, an dem die Kurve von konkav zu konvex oder umgekehrt wechselt.")]
#only("4")[#voiceover("Wenn der führende Koeffizient $a$ positiv ist, steigt die Funktion ins Unendliche, wenn $x$ sowohl gegen positive als auch gegen negative Unendlichkeit geht.")]
#only("5")[#voiceover("Umgekehrt, wenn $a$ negativ ist, fällt die Funktion ins Unendliche, wenn $x$ gegen positive Unendlichkeit geht, und steigt ins Unendliche, wenn $x$ gegen negative Unendlichkeit geht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Allgemeine Form: $f(x) = a x^3 + b x^2 + c x + d$ (mit $a ≠ 0$) 📝]
#v(20pt)
#only("2-")[- Kubische Funktionen sind vielseitig und wichtig in der Mathematik 🧮]
#v(20pt)
#only("3-")[- Sie modellieren verschiedene Phänomene in der realen Welt 🌍]

#only("1")[#voiceover("Zum Abschluss, erinnere dich daran, dass die allgemeine Form einer kubischen Funktion $f(x) = a x^3 + b x^2 + c x + d$ ist, wobei $a$ nicht null ist.")]
#only("2")[#voiceover("Kubische Funktionen sind vielseitig und spielen eine wichtige Rolle in der Mathematik.")]
#only("3")[#voiceover("Sie werden verwendet, um verschiedene Phänomene in der realen Welt zu modellieren, von dem Volumen einer Box bis zur Flugbahn eines Projektils. Das Verständnis kubischer Funktionen ist ein wichtiger Schritt auf deinem mathematischen Weg!")]
]