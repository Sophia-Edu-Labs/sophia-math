#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Folgenkonvergenz]
#v(40pt)
#only("1-")[Eine Folge konvergiert, wenn ihre Glieder sich einem bestimmten Wert nähern, wenn...]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) n nimmt ab]#only("2-")[#text(fill:red)[a) n nimmt ab]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) n bleibt konstant]#only("3-")[#text(fill:red)[b) n bleibt konstant]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) n geht gegen unendlich]#only("4-")[#text(fill:green)[c) n geht gegen unendlich]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) n oszilliert]#only("5-")[#text(fill:red)[d) n oszilliert]]
#only("1")[#voiceover("Nicht ganz. Lassen Sie uns die richtige Lösung überprüfen.")]
#only("2")[#voiceover("Option a) n nimmt ab ist falsch. Wenn n abnimmt, entfernen sich die Folgenglieder von einem bestimmten Wert, anstatt sich ihm zu nähern.")]
#only("3")[#voiceover("Option b) n bleibt konstant ist ebenfalls falsch. Wenn n konstant bleibt, schreitet die Folge überhaupt nicht voran und konvergiert daher zu keinem Wert.")]
#only("4")[#voiceover("Option c) n geht gegen unendlich ist die richtige Antwort. Wenn n immer größer wird, nähern sich die Folgenglieder immer mehr einem bestimmten Grenzwert, wenn die Folge konvergiert.")]
#only("5")[#voiceover("Schließlich ist Option d) n oszilliert falsch. Wenn n oszilliert, springen die Folgenglieder hin und her und nähern sich nicht stetig einem Grenzwert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel der Konvergenz]
#v(40pt)
#only("1-")[Betrachten Sie die Folge: $a_n = 1/n$]
#v(20pt)
#only("2-")[- Wenn $n$ zunimmt, wird $1/n$ kleiner]
#only("3-")[- $lim_(n->unendlich) 1/n = 0$]
#only("4-")[- Also konvergiert $a_n = 1/n$ gegen 0, wenn $n->unendlich$ 🎯]

#only("1")[#voiceover("Schauen wir uns ein Beispiel an, um dies besser zu verstehen.")]
#only("2")[#voiceover("Betrachten Sie die Folge a_n gleich 1 durch n. Wenn n zunimmt, wird 1 durch n immer kleiner.")]
#only("3")[#voiceover("Tatsächlich ist der Grenzwert von 1 durch n, wenn n gegen unendlich geht, 0.")]
#only("4")[#voiceover("Daher konvergiert die Folge a_n gleich 1 durch n gegen 0, wenn n gegen unendlich geht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 21)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Grenzwert')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Konvergenz von $a_n = 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist ein Diagramm von $a_n = 1/n$:]
#v(20pt)
#only("2-")[- Wenn $n$ zunimmt, nähert sich $a_n$ der roten Linie (Grenzwert von 0) 📉]
#only("3-")[- So sieht Konvergenz visuell aus 👀]

#only("1")[#voiceover("Hier ist ein Diagramm der Folge a_n gleich 1 durch n.")]
#only("2")[#voiceover("Wenn n zunimmt, können Sie sehen, wie sich die Folgenglieder, dargestellt durch die blauen Punkte, der roten Linie nähern, die den Grenzwert von 0 darstellt.")]
#only("3")[#voiceover("So sieht Konvergenz visuell aus. Die Folgenglieder nähern sich einem bestimmten Grenzwert, wenn n immer größer wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Konvergenz bedeutet, sich einem bestimmten Grenzwert zu nähern 🎯]
#only("2-")[- Dies geschieht, wenn $n$ gegen unendlich geht ∞]
#only("3-")[- Wenn sich die Glieder keinem Grenzwert nähern oder oszillieren, liegt keine Konvergenz vor ❌]
#only("4-")[- Grafisch nähern sich die Glieder der Grenzlinie, wenn $n$ zunimmt 📈]

#only("1")[#voiceover("Zusammenfassend bedeutet die Konvergenz einer Folge, dass sich die Glieder einem bestimmten Grenzwert nähern.")]
#only("2")[#voiceover("Dies geschieht, wenn n, der Index, gegen unendlich geht.")]
#only("3")[#voiceover("Wenn sich die Glieder keinem Grenzwert nähern oder oszillieren, dann konvergiert die Folge nicht.")]
#only("4")[#voiceover("Grafisch können Sie die Konvergenz sehen, wenn sich die Folgenglieder der Grenzlinie nähern, wenn n zunimmt.")]
]