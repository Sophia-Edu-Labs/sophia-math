#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Summe]
#v(40pt)
#only("1-")[- Gegeben: $a_n = 1/n$ und $b_n = 2/n$]
// Die gegebenen Folgen werden ab Folie 1 angezeigt
#v(20pt)
#only("2-")[- Gesucht: $lim_(n -> infinity) (a_n + b_n)$]
// Der zu findende Grenzwert wird ab Folie 2 angezeigt
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Gegeben sind zwei Folgen: a_n gleich 1 durch n und b_n gleich 2 durch n.")
]
#only("2")[
#voiceover("Wir wollen den Grenzwert finden, wenn n gegen unendlich geht, von der Summe dieser Folgen, a_n plus b_n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Grenzwertgesetze 📜]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
// Das Grenzwertgesetz für die Summe wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Der erste Schritt besteht darin, das Grenzwertgesetz für die Summe von Folgen zu erinnern. Es besagt, dass der Grenzwert der Summe gleich der Summe der Grenzwerte ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Einzelne Grenzwerte 🔍]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
// Der Grenzwert von a_n wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[- $lim_(n -> infinity) b_n = lim_(n -> infinity) 2/n = 0$]
// Der Grenzwert von b_n wird ab Folie 2 angezeigt
#only("1")[
#voiceover("Als nächstes finden wir die einzelnen Grenzwerte. Der Grenzwert von a_n, wenn n gegen unendlich geht, ist der Grenzwert von 1 durch n, was gleich 0 ist.")
]
#only("2")[
#voiceover("Ähnlich ist der Grenzwert von b_n, wenn n gegen unendlich geht, der Grenzwert von 2 durch n, was ebenfalls gleich 0 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Ergebnisse kombinieren 🧮]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)
#only("2-")[- $= 0 + 0$]
#v(20pt)
#only("3-")[- $= 0$]
// Die Kombination der einzelnen Grenzwerte wird Schritt für Schritt über die Folien 1-3 gezeigt
#only("1")[
#voiceover("Schließlich kombinieren wir die Ergebnisse mit dem Grenzwertgesetz aus Schritt 1. Der Grenzwert von a_n plus b_n ist gleich dem Grenzwert von a_n plus dem Grenzwert von b_n.")
]
#only("2")[
#voiceover("Das ist gleich 0 plus 0,")
]
#only("3")[
#voiceover("was gleich 0 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 100)  
a_n = 1/n
b_n = 2/n
sum_n = a_n + b_n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='$a_n = 1/n$')
plt.plot(n, b_n, label='$b_n = 2/n$')
plt.plot(n, sum_n, label='$a_n + b_n$')
plt.axhline(y=0, color='r', linestyle='--', label='Grenzwert = 0')  

plt.xlabel('n')
plt.ylabel('Wert')
plt.title('Konvergenz von $a_n$, $b_n$ und $a_n + b_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// Das Diagramm zeigt die Konvergenz von a_n, b_n und ihrer Summe zu 0, wenn n zunimmt
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung der Konvergenz. Wenn n zunimmt, nähern sich sowohl a_n als auch b_n dem Wert 0, und ebenso ihre Summe, a_n plus b_n, wie durch die rote gestrichelte Linie gezeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) = 0$ ✅]
// Das Endergebnis wird ab Folie 1 angezeigt
#only("1")[
#voiceover("Abschließend ergibt der Grenzwert, wenn n gegen unendlich geht, von a_n plus b_n gleich 0. Großartige Arbeit bei der Lösung dieses Problems!")
]
]