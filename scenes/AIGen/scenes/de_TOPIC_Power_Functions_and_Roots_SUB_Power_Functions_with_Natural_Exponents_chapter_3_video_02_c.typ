#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
Was passiert mit $f(x) = x^3$, wenn $x$ gegen $infinity$ geht?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Geht gegen null]#only("2-")[#text(fill:red)[a) Geht gegen null]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Geht gegen $infinity$]#only("3-")[#text(fill:green)[b) Geht gegen $infinity$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Geht gegen eine Konstante]#only("4-")[#text(fill:red)[c) Geht gegen eine Konstante]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Oszilliert]#only("5-")[#text(fill:red)[d) Oszilliert]]
#only("1")[#voiceover("Leider, das war nicht die richtige Antwort.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1) Betrachte die Funktion $f(x) = x^3$]
#v(20pt)
#only("2-")[2) Wenn $x$ sehr groß wird (gegen $infinity$ geht), wird der Wert von $x^3$ ebenfalls sehr groß.]
#v(20pt)
#only("3-")[3) Das liegt daran, dass das Multiplizieren einer großen Zahl mit sich selbst mehrfach zu einer noch größeren Zahl führt.]
#v(20pt)
#only("4-")[4) Daher gilt: Wenn $x$ gegen $infinity$ geht, dann geht $f(x) = x^3$ gegen $infinity$ 📈]
#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Zuerst haben wir die Funktion f von x gleich x hoch drei. Wenn x sehr groß wird oder gegen Unendlichkeit geht, wird der Wert von x hoch drei ebenfalls sehr groß.")]
#only("3")[#voiceover("Das liegt daran, dass wenn du eine große Zahl mehrfach mit sich selbst multiplizierst, du eine noch größere Zahl erhältst.")]
#only("4")[#voiceover("Daher gilt: Wenn x gegen Unendlichkeit geht, dann geht f von x, das gleich x hoch drei ist, ebenfalls gegen Unendlichkeit.")]
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

x = np.linspace(-5, 5, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='f(x) = x^3')
plt.xlim(-5, 5)
plt.ylim(-150, 150)
plt.grid(True)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.legend(loc='upper left')
plt.title('Graph von f(x) = x^3')
plt.xlabel('x')
plt.ylabel('f(x)')

plt.annotate('Geht gegen $infinity$',
             xy=(4, 64), xycoords='data',
             xytext=(4.5, 100), textcoords='data',
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14, ha='center')

plt.annotate('Geht gegen negative $infinity$',
             xy=(-4, -64), xycoords='data',
             xytext=(-4.5, -100), textcoords='data',
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14, ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist ein Graph der Funktion f von x gleich x hoch drei. Wie du sehen kannst, steigen die Funktionswerte schnell an, wenn x in positiver Richtung größer wird, und gehen gegen Unendlichkeit. Ebenso sinken die Funktionswerte schnell, wenn x in negativer Richtung größer wird, und gehen gegen negative Unendlichkeit. Diese Visualisierung bestätigt unser Verständnis, dass wenn x gegen Unendlichkeit geht, x hoch drei ebenfalls gegen Unendlichkeit geht.")]
]
]