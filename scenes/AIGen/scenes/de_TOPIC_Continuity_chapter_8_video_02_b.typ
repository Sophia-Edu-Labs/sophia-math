#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
#v(40pt)
Was überprüfen einseitige Grenzwerte?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist. 
#only("-1")[a) Das Verhalten der Funktion von beiden Seiten]#only("2-")[#text(fill:red)[a) Das Verhalten der Funktion von beiden Seiten]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Das Verhalten der Funktion von einer Seite]#only("3-")[#text(fill:green)[b) Das Verhalten der Funktion von einer Seite]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Das Verhalten der Funktion im Unendlichen]#only("4-")[#text(fill:red)[c) Das Verhalten der Funktion im Unendlichen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Das Verhalten der Funktion bei Null]#only("5-")[#text(fill:red)[d) Das Verhalten der Funktion bei Null]]
#only("1")[#voiceover("Das ist richtig! Gute Arbeit. Einseitige Grenzwerte überprüfen das Verhalten der Funktion von einer Seite.")]
#only("2")[#voiceover("Option a) ist falsch. Einseitige Grenzwerte überprüfen nicht das Verhalten der Funktion von beiden Seiten, sondern nur von einer bestimmten Seite, entweder von links oder von rechts.")]
#only("3")[#voiceover("Option b) ist die richtige Antwort. Einseitige Grenzwerte überprüfen tatsächlich das Verhalten der Funktion, wenn der Eingabewert sich von einer Seite, entweder von links oder von rechts, einem bestimmten Wert nähert.")]
#only("4")[#voiceover("Option c) ist falsch. Einseitige Grenzwerte befassen sich nicht mit dem Verhalten der Funktion im Unendlichen.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Einseitige Grenzwerte überprüfen nicht speziell das Verhalten der Funktion bei Null, sondern an jedem beliebigen Punkt, wenn man sich von einer Seite nähert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Schauen wir uns ein Beispiel an:
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.piecewise(x, [x < 0, x >= 0], [lambda x: x**2, lambda x: x])

x = np.linspace(-2, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.scatter(0, 0, color='red', zorder=2)
plt.annotate('Discontinuity at x=0', xy=(0, 0), xytext=(0.5, 0.5), arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-0.5, 4)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('One-Sided Limits Example')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Betrachte die Funktion: ]
#v(10pt)
#only("2-")[$ f(x) = (x^2, x < 0; x, x >= 0) $]
#v(40pt)
#only("3-")[- Der #text(fill:orange)[linksseitige Grenzwert] bei $x=0$ ist $lim_(x -> 0^-) f(x) = 0$]
#only("4-")[- Der #text(fill:blue)[rechtsseitige Grenzwert] bei $x=0$ ist $lim_(x -> 0^+) f(x) = 0$]
#only("5-")[- Die #text(weight: "bold")[einseitigen Grenzwerte] existieren, sind aber nicht gleich 🚫]

#only("1")[#voiceover("Betrachte diese abschnittsweise definierte Funktion f von x, die gleich x Quadrat ist für x kleiner als 0 und gleich x für x größer oder gleich 0.")]
#only("2")[#voiceover("Es gibt eine Unstetigkeitsstelle bei x gleich 0, wo die Funktion abrupt wechselt.")]
#only("3")[#voiceover("Der linksseitige Grenzwert von f von x, wenn sich x 0 nähert, ist gleich 0. Dies ist der Grenzwert, wenn wir uns von der negativen Seite 0 nähern.")]
#only("4")[#voiceover("Der rechtsseitige Grenzwert von f von x, wenn sich x 0 nähert, ist ebenfalls gleich 0. Dies ist der Grenzwert, wenn wir uns von der positiven Seite 0 nähern.")]
#only("5")[#voiceover("In diesem Fall existieren beide einseitigen Grenzwerte und sind gleich. Allerdings ist die Funktion bei x gleich 0 nicht stetig, da der Funktionswert bei 0 nicht definiert ist. Dies zeigt, wie einseitige Grenzwerte verwendet werden können, um das Verhalten einer Funktion in der Nähe einer Unstetigkeitsstelle zu analysieren.")]
]