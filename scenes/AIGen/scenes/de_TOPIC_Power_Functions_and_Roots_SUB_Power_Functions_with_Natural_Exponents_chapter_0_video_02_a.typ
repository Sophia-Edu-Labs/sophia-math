#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
Was ist die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $f(x) = x^n$]#only("2-")[#text(fill:green)[a) $f(x) = x^n$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $f(x) = n^x$]#only("3-")[#text(fill:red)[b) $f(x) = n^x$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $f(x) = x/n$]#only("4-")[#text(fill:red)[c) $f(x) = x/n$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $f(x) = n/x$]#only("5-")[#text(fill:red)[d) $f(x) = n/x$]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("Option a) $f(x) = x^n$ ist tatsächlich die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten. Hierbei ist $x$ die Variable und $n$ eine natürliche Zahl, also eine positive ganze Zahl.")]
#only("3")[#voiceover("Option b) $f(x) = n^x$ ist falsch. Dies ist die allgemeine Form einer Exponentialfunktion, nicht einer Potenzfunktion.")]
#only("4")[#voiceover("Option c) $f(x) = x/n$ ist ebenfalls falsch. Dies ist eine lineare Funktion, keine Potenzfunktion.")]
#only("5")[#voiceover("Und Option d) $f(x) = n/x$ ist auch falsch. Dies ist eine Kehrwertfunktion, keine Potenzfunktion.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1) In einer Potenzfunktion ist die Variable die Basis.]
#v(20pt)
#only("2-")[2) Der Exponent ist eine Konstante.]
#v(20pt)
#only("3-")[3) Für natürliche Exponenten ist die Konstante eine natürliche Zahl (1, 2, 3, ...).]
#v(20pt)
#only("4-")[4) Daher ist die allgemeine Form $f(x) = x^n$, wobei $n ∈ NN$.]

#only("1")[#voiceover("Lass uns das Schritt für Schritt durchgehen. In einer Potenzfunktion ist die Variable, in diesem Fall $x$, die Basis.")]
#only("2")[#voiceover("Der Exponent in einer Potenzfunktion ist eine Konstante, keine Variable.")]
#only("3")[#voiceover("Für Potenzfunktionen mit natürlichen Exponenten ist dieser konstante Exponent eine natürliche Zahl, also eine positive ganze Zahl wie 1, 2, 3 und so weiter.")]
#only("4")[#voiceover("Daher ist die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten $f(x) = x^n$, wobei $n$ ein Element der Menge der natürlichen Zahlen ist, oft durch das doppelt gestrichene große N dargestellt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele]
#v(40pt)
#only("1-")[Hier sind einige Beispiele für Potenzfunktionen mit natürlichen Exponenten:]
#v(20pt)
#only("2-")[- $f(x) = x^2$ (quadratische Funktion)]
#v(10pt)
#only("3-")[- $g(x) = x^5$ (quintische Funktion)]
#v(10pt)
#only("4-")[- $h(x) = x^{10}$ (Funktion 10. Grades)]

#only("1")[#voiceover("Schauen wir uns einige Beispiele für Potenzfunktionen mit natürlichen Exponenten an.")]
#only("2")[#voiceover("Die Funktion $f(x) = x^2$ ist eine quadratische Funktion, eine Potenzfunktion mit dem Exponenten 2.")]
#only("3")[#voiceover("Die Funktion $g(x) = x^5$ ist eine quintische Funktion, eine Potenzfunktion mit dem Exponenten 5.")]
#only("4")[#voiceover("Und die Funktion $h(x) = x^{10}$ ist eine Potenzfunktion mit dem Exponenten 10, eine Funktion 10. Grades.")]
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

x = np.linspace(-2, 2, 100)

plt.figure(figsize=(8, 6))

plt.plot(x, x**2, label='$x^2$')
plt.plot(x, x**5, label='$x^5$')
plt.plot(x, x**10$, label='$x^{10}$')

plt.grid(True)
plt.legend()
plt.xlim(-2, 2)
plt.ylim(-1, 5)
plt.title('Potenzfunktionen mit natürlichen Exponenten')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist ein Diagramm der Beispiel-Funktionen:]
#v(20pt)
#only("2-")[- Beachte, dass sie alle durch (0, 0) und (1, 1) verlaufen.]
#only("3-")[- Je höher der Exponent, desto steiler die Kurve.]

#only("1")[#voiceover("Hier ist ein Diagramm der Beispiel-Funktionen, die wir gerade besprochen haben.")]
#only("2")[#voiceover("Beachte, dass sie alle durch die Punkte (0, 0) und (1, 1) verlaufen. Dies ist ein Merkmal aller Potenzfunktionen.")]
#only("3")[#voiceover("Beobachte auch, dass je höher der Exponent ist, desto steiler die Kurve wird. Dies liegt daran, dass die Änderungsrate bei höheren Exponenten schneller zunimmt.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Potenzfunktionen haben die Form $f(x) = x^n$]
#v(20pt)
#only("2-")[- Für natürliche Exponenten ist $n$ eine positive ganze Zahl]
#v(20pt)
#only("3-")[- Beispiele: $x^2$, $x^5$, $x^{10}$, usw.]
#v(20pt)
#only("4-")[- Höhere Exponenten führen zu steileren Kurven]

#only("1")[#voiceover("Zusammenfassend haben Potenzfunktionen die allgemeine Form $f(x) = x^n$.")]
#only("2")[#voiceover("Für Potenzfunktionen mit natürlichen Exponenten ist $n$ eine positive ganze Zahl.")]
#only("3")[#voiceover("Einige Beispiele für Potenzfunktionen mit natürlichen Exponenten sind $x^2$, $x^5$, $x^{10}$ und so weiter.")]
#only("4")[#voiceover("Und denke daran, höhere Exponenten führen zu steileren Kurven. Mach weiter so!")]
]