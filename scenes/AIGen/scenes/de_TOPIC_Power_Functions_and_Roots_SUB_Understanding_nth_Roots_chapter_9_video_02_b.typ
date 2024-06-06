#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln]
#v(40pt)
Die n-te Wurzel einer Zahl ist ein Wert, der, wenn er mit der Potenz n potenziert wird, das \_\_\_\_\_ ergibt.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Von Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Wurzel]#only("2-")[#text(fill:red)[a) Wurzel]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Von Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) ursprüngliche Zahl]#only("3-")[#text(fill:green)[b) ursprüngliche Zahl]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Von Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Quadrat]#only("4-")[#text(fill:red)[c) Quadrat]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Von Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Kubik]#only("5-")[#text(fill:red)[d) Kubik]]

#only("1")[#voiceover("Großartig, das ist absolut richtig!")]
#only("2")[#voiceover("Option a), Wurzel, ist falsch. Die n-te Wurzel ist der Wert selbst, nicht die ursprüngliche Zahl.")]
#only("3")[#voiceover("Option b), ursprüngliche Zahl, ist die richtige Antwort. Wenn Du die n-te Wurzel mit der Potenz n potenzierst, erhältst Du die ursprüngliche Zahl zurück.")]
#only("4")[#voiceover("Option c), Quadrat, ist falsch. Dies wäre nur im speziellen Fall richtig, wenn n gleich 2 ist, also für Quadratwurzeln.")]
#only("5")[#voiceover("Und Option d), Kubik, ist ebenfalls falsch. Dies wäre nur zutreffend, wenn n gleich 3 ist, also für Kubikwurzeln.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Schauen wir uns ein Beispiel an, um dieses Konzept zu veranschaulichen.
#v(40pt)
#only("1-")[Betrachte die Zahl 64 und ihre 3. Wurzel.]
#v(20pt)
#only("2-")[Die 3. Wurzel von 64 ist 4, weil $4^3 = 64$.]
#v(20pt)
#only("3-")[In der Notation: $root(3, 64) = 4$]

#only("1")[#voiceover("Betrachte die Zahl 64 und ihre 3. Wurzel.")]
#only("2")[#voiceover("Die 3. Wurzel von 64 ist 4, weil wenn Du 4 hoch 3 nimmst, erhältst Du 64.")]
#only("3")[#voiceover("In der mathematischen Notation schreiben wir dies als die 3. Wurzel von 64 ist gleich 4.")]
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

x = np.linspace(0, 5, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^3$')
plt.scatter([4], [64], color='red', s=100, label='(4, 64)')
plt.grid(True)
plt.legend(fontsize=14)
plt.xlabel('x', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)
plt.title('Kubikfunktion', fontsize=16)
plt.annotate('$root(3, 64) = 4$', xy=(4, 64), xytext=(4.1, 40), 
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14)

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1")[#voiceover("Hier ist ein Graph der Kubikfunktion, $f(x) = x^3$. Der rote Punkt bei (4, 64) zeigt, dass die 3. Wurzel von 64 gleich 4 ist.")]
#only("2")[#voiceover("Das liegt daran, dass wenn Du 4 in die Kubikfunktion eingibst, Du ein Ergebnis von 64 erhältst.")]
#only("3")[#voiceover("Mit anderen Worten, 4 hoch 3 ergibt 64, also ist die 3. Wurzel von 64 gleich 4.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
- Die n-te Wurzel ist die Umkehroperation zum Potenzieren mit n.
#v(20pt)
- Wenn Du die n-te Wurzel einer Zahl mit der Potenz n potenzierst, erhältst Du die ursprüngliche Zahl zurück.
#v(20pt)
- Beispiel: $root(3, 64) = 4$ weil $4^3 = 64$.

#only("1")[#voiceover("Zusammenfassend ist die n-te Wurzel die Umkehroperation zum Potenzieren einer Zahl mit n.")]
#only("2")[#voiceover("Wenn Du die n-te Wurzel einer Zahl mit der Potenz n potenzierst, erhältst Du immer die ursprüngliche Zahl zurück.")]
#only("3")[#voiceover("Zum Beispiel ist die 3. Wurzel von 64 gleich 4, weil wenn Du 4 hoch 3 nimmst, erhältst Du 64.")]
#only("4")[#voiceover("Ich hoffe, diese Erklärung hat geholfen, das Konzept der n-ten Wurzeln zu klären. Mach weiter so!")]
]