#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte]
#v(40pt)
Was ist ein einseitiger Grenzwert?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Ein Grenzwert, der das Verhalten der Funktion von beiden Seiten betrachtet]#only("2-")[#text(fill:red)[a) Ein Grenzwert, der das Verhalten der Funktion von beiden Seiten betrachtet]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Ein Grenzwert, der das Verhalten der Funktion von einer Seite betrachtet]#only("3-")[#text(fill:green)[b) Ein Grenzwert, der das Verhalten der Funktion von einer Seite betrachtet]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Ein Grenzwert, der das Verhalten der Funktion im Unendlichen betrachtet]#only("4-")[#text(fill:red)[c) Ein Grenzwert, der das Verhalten der Funktion im Unendlichen betrachtet]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Ein Grenzwert, der das Verhalten der Funktion bei Null betrachtet]#only("5-")[#text(fill:red)[d) Ein Grenzwert, der das Verhalten der Funktion bei Null betrachtet]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort gewählt.")]
#only("2")[#voiceover("Option a ist falsch, weil ein einseitiger Grenzwert nicht das Verhalten der Funktion von beiden Seiten betrachtet, sondern nur von einer Seite.")]
#only("3")[#voiceover("Option b ist die richtige Antwort. Ein einseitiger Grenzwert betrachtet tatsächlich das Verhalten der Funktion, wenn sich der Eingabewert von einer Seite, entweder von links oder von rechts, einem bestimmten Wert nähert.")]
#only("4")[#voiceover("Option c ist falsch. Obwohl Grenzwerte im Unendlichen eine Art von Grenzwert sind, sind sie nicht dasselbe wie einseitige Grenzwerte. Einseitige Grenzwerte können an jedem Punkt ausgewertet werden, nicht nur im Unendlichen.")]
#only("5")[#voiceover("Option d ist ebenfalls falsch. Obwohl der Grenzwert einer Funktion bei Null ausgewertet werden kann, ist dies nicht das definierende Merkmal eines einseitigen Grenzwerts. Ein einseitiger Grenzwert kann an jedem Punkt ausgewertet werden und betrachtet das Verhalten der Funktion von einer Seite dieses Punktes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einseitige Grenzwerte: Beispiel]
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

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y)
ax.scatter(0, 0, color='red', zorder=2)
ax.annotate('Annäherung von links', xy=(-0.5, 0.25), xytext=(-1.5, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Annäherung von rechts', xy=(0.5, 0.5), xytext=(1.5, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.set_title('Einseitige Grenzwerte')
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- Betrachte die Funktion $f(x) = (x^2 "für" x < 0; x "für" x \geq 0)$]
#v(10pt)
#only("2-")[- Der #text(fill:red)[linkseitige Grenzwert] wenn sich $x$ 0 nähert, ist 0]
#v(10pt)
#only("3-")[- Der #text(fill:blue)[rechtseitige Grenzwert] wenn sich $x$ 0 nähert, ist ebenfalls 0]
#v(10pt)
#only("4-")[- Beide einseitigen Grenzwerte existieren und sind gleich, daher existiert der Grenzwert]

#only("1")[#voiceover("Betrachte die Funktion f von x, die gleich x Quadrat für x kleiner als 0 und x für x größer oder gleich 0 ist.")]
#only("2")[#voiceover("Wenn wir uns von links 0 nähern, nähern sich die Funktionswerte immer mehr 0 an. Dies ist der linkseitige Grenzwert.")]
#only("3")[#voiceover("Ähnlich nähern sich die Funktionswerte, wenn wir uns von rechts 0 nähern, ebenfalls 0 an. Dies ist der rechtseitige Grenzwert.")]
#only("4")[#voiceover("In diesem Fall existieren beide einseitigen Grenzwerte und sind gleich. Daher können wir sagen, dass der Grenzwert der Funktion, wenn sich x 0 nähert, existiert und gleich 0 ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Einseitige Grenzwerte betrachten das Verhalten einer Funktion von einer Seite 🔍
#v(20pt)
- Sie können linkseitige Grenzwerte (Annäherung von links) oder rechtseitige Grenzwerte (Annäherung von rechts) sein ⬅️➡️
#v(20pt)
- Wenn beide einseitigen Grenzwerte existieren und gleich sind, dann existiert der Grenzwert der Funktion 🎯
#v(20pt)
- Einseitige Grenzwerte sind ein grundlegendes Konzept zum Verständnis des Verhaltens von Funktionen 📈

#only("1")[#voiceover("Zusammenfassend betrachten einseitige Grenzwerte das Verhalten einer Funktion, wenn sich der Eingabewert von einer Seite einem bestimmten Wert nähert.")]
#only("2")[#voiceover("Sie können linkseitige Grenzwerte sein, bei denen wir uns dem Punkt von links nähern, oder rechtseitige Grenzwerte, bei denen wir uns von rechts nähern.")]
#only("3")[#voiceover("Wenn beide einseitigen Grenzwerte existieren und gleich sind, dann können wir sagen, dass der Grenzwert der Funktion an diesem Punkt existiert.")]
#only("4")[#voiceover("Das Verständnis von einseitigen Grenzwerten ist entscheidend für die Analyse des Verhaltens von Funktionen, insbesondere an Unstetigkeitsstellen.")]
]