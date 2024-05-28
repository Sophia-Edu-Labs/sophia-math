#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Funktion]
#v(40pt)
Was beschreibt der Grenzwert einer Funktion?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Der genaue Wert der Funktion]#only("2-")[#text(fill:red)[a) Der genaue Wert der Funktion]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Das Verhalten der Funktion, wenn der Input einen bestimmten Wert annähert]#only("3-")[#text(fill:green)[b) Das Verhalten der Funktion, wenn der Input einen bestimmten Wert annähert]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Die Ableitung der Funktion]#only("4-")[#text(fill:red)[c) Die Ableitung der Funktion]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Das Integral der Funktion]#only("5-")[#text(fill:red)[d) Das Integral der Funktion]]
#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("Option a) ist falsch, weil der Grenzwert nicht unbedingt dem genauen Wert der Funktion an diesem Punkt entspricht.")]
#only("3")[#voiceover("Option b) ist die richtige Antwort. Der Grenzwert beschreibt tatsächlich das Verhalten der Funktion, wenn der Input einen bestimmten Wert annähert.")]
#only("4")[#voiceover("Option c) ist falsch. Die Ableitung bezieht sich auf die Änderungsrate der Funktion, nicht auf den Grenzwert.")]
#only("5")[#voiceover("Option d) ist ebenfalls falsch. Das Integral bezieht sich auf die Fläche unter der Kurve der Funktion, nicht auf den Grenzwert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 1: Verstehe das Konzept eines Grenzwerts 🧠]
#v(20pt)
#only("2-")[- Ein Grenzwert ist der Wert, dem eine Funktion näher kommt, wenn der Input einen bestimmten Punkt annähert]
#v(20pt)
#only("3-")[Schritt 2: Unterscheide den Grenzwert von anderen Konzepten ≠]
#v(20pt)
#only("4-")[- Funktionswert: der genaue Output bei einem bestimmten Input]
#v(20pt)
#only("5-")[- Ableitung: die Änderungsrate der Funktion]
#v(20pt)
#only("6-")[- Integral: die Fläche unter der Kurve der Funktion]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Zuerst ist es wichtig zu verstehen, dass ein Grenzwert der Wert ist, dem eine Funktion näher kommt, wenn der Input einen bestimmten Punkt annähert.")]
#only("3")[#voiceover("Als nächstes müssen wir das Konzept eines Grenzwerts von anderen verwandten Konzepten unterscheiden.")]
#only("4")[#voiceover("Der Funktionswert ist der genaue Output bei einem bestimmten Input, was sich vom Grenzwert unterscheidet.")]
#only("5")[#voiceover("Die Ableitung ist die Änderungsrate der Funktion, ebenfalls ein anderes Konzept.")]
#only("6")[#voiceover("Und das Integral ist die Fläche unter der Kurve der Funktion, wiederum ein anderes Konzept als der Grenzwert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 3: Visualisiere den Grenzwert 📈]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return (x**2 - 1) / (x - 1)

x = np.linspace(-5, 5, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [2], color='red', label='Grenzwert als x→1')
plt.annotate('Loch bei x=1', xy=(1, 2), xytext=(1.5, 3), 
             arrowprops=dict(facecolor='black', shrink=0.05))
plt.grid(True)
plt.legend()
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("3-")[- Wenn $x$ sich 1 nähert, nähert sich $f(x)$ 2, obwohl $f(1)$ undefiniert ist]
#v(20pt)
#only("4-")[Daher beschreibt der Grenzwert das #text(weight: "bold")[Verhalten] der Funktion in der Nähe eines Punktes, nicht den genauen Wert an diesem Punkt ✅]

#only("1")[#voiceover("Es kann hilfreich sein, den Grenzwert zu visualisieren.")]
#only("2")[#voiceover("In diesem Diagramm sehen wir eine Funktion f von x, die ein Loch bei x gleich 1 hat.")]
#only("3")[#voiceover("Wenn sich x 1 nähert, nähert sich f von x 2, obwohl f von 1 aufgrund des Lochs undefiniert ist.")]
#only("4")[#voiceover("Dies zeigt, dass der Grenzwert das Verhalten der Funktion in der Nähe eines Punktes beschreibt, nicht unbedingt den genauen Wert an diesem Punkt.")]
]
]