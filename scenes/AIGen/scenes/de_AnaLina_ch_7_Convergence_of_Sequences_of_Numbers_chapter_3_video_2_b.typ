#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenzdefinition]
#v(40pt)
#only("1-")[Eine Folge $a_n$ konvergiert gegen $L$, wenn für jedes $epsilon > 0$ ein $N$ existiert, so dass für alle $n >= N$ $|a_n - L|$ \_\_\_\_\_ ist.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) größer als $epsilon$]#only("2-")[#text(fill:green)[b) kleiner als $epsilon$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) kleiner als $epsilon$]#only("3-")[#text(fill:red)[a) größer als $epsilon$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) gleich $epsilon$]#only("4-")[#text(fill:red)[c) gleich $epsilon$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) ungleich $epsilon$]#only("5-")[#text(fill:red)[d) ungleich $epsilon$]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, gute Arbeit! Die korrekte Antwort ist...")]
// Sehr kurz über b sprechen und warum es korrekt ist
#only("2")[#voiceover("b) kleiner als epsilon. Die Definition besagt, dass der absolute Unterschied zwischen a_n und L für alle n größer oder gleich N kleiner als epsilon sein muss.")]
// Sehr kurz über a sprechen und warum es falsch ist
#only("3")[#voiceover("a) größer als epsilon ist falsch. Wenn der Unterschied größer als epsilon wäre, würde die Folge nicht gegen L konvergieren.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) gleich epsilon ist ebenfalls falsch. Der Unterschied muss nicht genau gleich epsilon sein, sondern nur kleiner als epsilon.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) ungleich epsilon ist auch falsch. Der Unterschied kann gleich epsilon sein und dennoch die Definition erfüllen, solange er kleiner als epsilon ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Lassen Sie uns die Definition aufschlüsseln:]
#v(20pt)
#only("2-")[1. Für jedes $epsilon > 0$: Wählen Sie eine beliebige positive Zahl $epsilon$. 🔍]
#only("3-")[2. Es existiert ein $N$: Finden Sie eine natürliche Zahl $N$. 🔢]
#only("4-")[3. So dass für alle $n >= N$: Betrachten Sie alle natürlichen Zahlen $n$, die größer oder gleich $N$ sind. ⏰]
#only("5-")[4. $|a_n - L| < epsilon$: Der absolute Unterschied zwischen $a_n$ und $L$ ist kleiner als das gewählte $epsilon$. 📏]
#v(20pt)
#only("6-")[Wenn diese Bedingungen erfüllt sind, konvergiert die Folge $a_n$ gegen $L$. 🎉]

#only("1")[#voiceover("Lassen Sie uns nun die Definition Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Zuerst wählen wir eine beliebige positive Zahl epsilon. Dieses epsilon kann so klein sein, wie wir wollen.")]
#only("3")[#voiceover("Als nächstes müssen wir eine natürliche Zahl N finden. Dieses N hängt von der spezifischen Folge und dem gewählten epsilon ab.")]
#only("4")[#voiceover("Dann betrachten wir alle natürlichen Zahlen n, die größer oder gleich N sind.")]
#only("5")[#voiceover("Für all diese n muss der absolute Unterschied zwischen dem n-ten Glied der Folge, a_n, und dem Grenzwert L kleiner sein als das gewählte epsilon.")]
#only("6")[#voiceover("Wenn wir ein solches N für jedes epsilon größer als 0 finden können, dann können wir sagen, dass die Folge a_n gegen L konvergiert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1 / n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo', label='a_n')
plt.axhline(y=0, color='r', linestyle='-', label='L = 0')

# Highlight the convergence
plt.annotate('', xy=(20, a(20)), xytext=(20, 0.2), arrowprops=dict(facecolor='green', shrink=0.05))
plt.annotate('$\epsilon$', xy=(20, 0.1), xytext=(22, 0.1))
plt.annotate('N', xy=(20, -0.02), xytext=(20, -0.02))

plt.grid(True)
plt.legend()
plt.title('Konvergenz von a_n = 1/n')
plt.xlabel('n')
plt.ylabel('a_n')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Konvergenzdefinition. Die blauen Punkte repräsentieren die Glieder der Folge a_n gleich 1 durch n. Die rote Linie ist der Grenzwert L gleich 0.")
]
#only("2")[
#voiceover("Mit zunehmendem n nähern sich die Glieder immer mehr 0 an. Für jedes gewählte epsilon können wir ein N finden, so dass für alle n größer als N die Glieder innerhalb von epsilon um 0 liegen.")
]
#only("3")[
#voiceover("In diesem Beispiel liegen für das gewählte epsilon alle Glieder nach dem grünen Pfeil, der auf N zeigt, innerhalb von epsilon um den Grenzwert.")
]
#only("4")[
#voiceover("Das bedeutet es, wenn eine Folge gemäß der formalen Definition konvergiert.")
]
]
]