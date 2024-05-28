#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuierliche Erweiterbarkeit]
#v(40pt)
#only("1-")[Wann ist eine Funktion kontinuierlich erweiterbar?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Wenn sie bereits kontinuierlich ist]#only("2-")[#text(fill:red)[a) Wenn sie bereits kontinuierlich ist]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Wenn sie durch Definieren oder Neudefinieren ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann]#only("3-")[#text(fill:green)[b) Wenn sie durch Definieren oder Neudefinieren ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Wenn sie differenzierbar ist]#only("4-")[#text(fill:red)[c) Wenn sie differenzierbar ist]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Wenn sie integrierbar ist]#only("5-")[#text(fill:red)[d) Wenn sie integrierbar ist]]
#only("1")[#voiceover("Leider war das nicht die richtige Antwort.")]
#only("2")[#voiceover("Option a) ist falsch, weil eine Funktion, die bereits kontinuierlich ist, nicht erweitert werden muss.")]
#only("3")[#voiceover("Option b) ist die richtige Antwort. Eine Funktion ist kontinuierlich erweiterbar, wenn sie durch Definieren oder Neudefinieren ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann.")]
#only("4")[#voiceover("Option c) ist falsch. Differenzierbarkeit ist eine stärkere Bedingung als Kontinuität und impliziert keine kontinuierliche Erweiterbarkeit.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Integrierbarkeit steht nicht in direktem Zusammenhang mit kontinuierlicher Erweiterbarkeit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte die Funktion $f(x) = (x^2 - 1)/(x - 1)$.]
#v(20pt)
#only("2-")[- $f(x)$ ist bei $x = 1$ nicht definiert 🚫]
#v(20pt)
#only("3-")[- Aber $\lim_(x->1) f(x) = \lim_(x->1) (x + 1) = 2$ ✅]
#v(20pt)
#only("4-")[- Wenn wir also $f(1) = 2$ definieren, wird $f(x)$ bei $x = 1$ kontinuierlich 🌟]
#v(20pt)
#only("5-")[- Daher ist $f(x)$ bei $x = 1$ kontinuierlich erweiterbar 🎉]

#only("1")[#voiceover("Schauen wir uns ein Beispiel an, um die kontinuierliche Erweiterbarkeit besser zu verstehen.")]
#only("2")[#voiceover("Die Funktion f von x gleich x Quadrat minus 1 über x minus 1 ist bei x gleich 1 nicht definiert, weil dies zu einer Division durch Null führen würde.")]
#only("3")[#voiceover("Der Grenzwert von f von x, wenn x sich 1 nähert, existiert jedoch und ist gleich 2. Dies können wir feststellen, indem wir die Funktion zu x plus 1 vereinfachen und dann bei x gleich 1 auswerten.")]
#only("4")[#voiceover("Wenn wir also f von 1 gleich 2 definieren, wird die Funktion bei x gleich 1 kontinuierlich.")]
#only("5")[#voiceover("Daher ist die Funktion f von x bei x gleich 1 kontinuierlich erweiterbar. Wir konnten sie kontinuierlich machen, indem wir ihren Wert am problematischen Punkt definiert haben.")]
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

def f(x):
    return np.divide(x**2-1, x-1, out=np.zeros_like(x), where=x!=1)

x = np.linspace(0, 2, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [2], color='red', label='Defined point (1,2)')

plt.xlim(0.5, 1.5)
plt.ylim(0, 4)

plt.grid(True)
plt.legend()
plt.title('Continuous Extension of f(x) = (x^2 - 1)/(x - 1)')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist ein Diagramm, das die kontinuierliche Erweiterung unserer Funktion f von x veranschaulicht.")]
#only("2")[#voiceover("Der rote Punkt bei (1,2) zeigt, wo wir den Wert der Funktion definiert haben, um sie kontinuierlich zu machen.")]
#only("3")[#voiceover("Ohne diese Definition gäbe es ein Loch im Diagramm bei x gleich 1.")]
#only("4")[#voiceover("Aber indem wir f von 1 gleich 2 setzen, erweitern wir die Funktion kontinuierlich, füllen das Loch und machen die Funktion überall kontinuierlich.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Eine Funktion ist #text(weight: "bold")[kontinuierlich erweiterbar], wenn sie durch Definieren oder Neudefinieren ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann 🔑
- Dies beinhaltet das Überprüfen des #text(weight: "bold")[Grenzwertes] der Funktion an den problematischen Punkten 🔍
- Wenn der Grenzwert existiert, können wir den #text(weight: "bold")[Wert der Funktion] gleich diesem Grenzwert an diesem Punkt definieren 📝
- Dies macht die Funktion an diesem Punkt #text(weight: "bold")[kontinuierlich] und erweitert sie kontinuierlich 🌈

#only("1")[#voiceover("Zusammenfassend ist eine Funktion kontinuierlich erweiterbar, wenn sie durch Definieren oder Neudefinieren ihres Wertes an bestimmten Punkten kontinuierlich gemacht werden kann.")]
#only("2")[#voiceover("Um die kontinuierliche Erweiterbarkeit zu überprüfen, untersuchen wir den Grenzwert der Funktion an den problematischen Punkten.")]
#only("3")[#voiceover("Wenn der Grenzwert existiert, können wir den Wert der Funktion gleich diesem Grenzwert an diesem Punkt definieren.")]
#only("4")[#voiceover("Dies macht die Funktion an diesem Punkt kontinuierlich und erweitert sie kontinuierlich. Denke daran, dass es bei der kontinuierlichen Erweiterbarkeit darum geht, Unstetigkeiten zu beheben, um eine Funktion überall kontinuierlich zu machen.")]
]