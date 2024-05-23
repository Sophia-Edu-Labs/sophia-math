#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Folgen]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ konvergiert gegen einen Grenzwert $L$ 📈]
#v(20pt)
#only("2-")[- Formal: Für jedes $epsilon > 0$ gibt es ein $N$, so dass für alle $n >= N$ gilt: $|a_n - L| < epsilon$ 📏]
#only("1")[
#voiceover("Eine Folge a_n konvergiert gegen einen Grenzwert L, wenn die Glieder der Folge mit zunehmendem n beliebig nahe an L herankommen.")
]
#only("2")[
#voiceover("Formal bedeutet dies, dass für jedes positive epsilon, egal wie klein, ein Index N gefunden werden kann, so dass für alle n größer oder gleich N der absolute Unterschied zwischen a_n und L kleiner als epsilon ist.")
]
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

# Definiere die Folge
def a(n):
    return 1 / n

# Erzeuge die Folge
N = 20
n = np.arange(1, N+1)
a_n = a(n)

# Erstelle das Diagramm
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(y=0, color='r', linestyle='-', label='$L$')
plt.xlabel('$n$')
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
#only("1")[
#voiceover("Lassen Sie uns dies mit einem Beispiel veranschaulichen. Betrachten Sie die Folge a_n gleich 1 durch n. Mit zunehmendem n kommen die Glieder der Folge immer näher an 0 heran. Diese Folge konvergiert also gegen 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Epsilon-N Definition]
#v(40pt)
#only("1-")[- Wähle ein beliebiges $epsilon > 0$ 🎯]
#v(20pt)
#only("2-")[- Finde ein $N$, so dass für alle $n >= N$ gilt: $|a_n - L| < epsilon$ ✅]
#v(20pt)
#only("3-")[- Beispiel: Für $a_n = 1/n$, wähle $N > 1/epsilon$ 🧮]
#only("1")[
#voiceover("Die Epsilon-N-Definition erfasst diese Idee. Wir beginnen damit, ein beliebiges positives epsilon zu wählen, egal wie klein.")
]
#only("2")[
#voiceover("Dann müssen wir einen Index N finden, so dass für alle n größer oder gleich N der absolute Unterschied zwischen a_n und L kleiner als dieses epsilon ist.")
]
#only("3")[
#voiceover("Für unsere Beispiel-Folge a_n gleich 1 durch n, wenn wir möchten, dass die Glieder innerhalb von epsilon von 0 sind, können wir N größer als 1 durch epsilon wählen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergenz: $a_n$ kommt beliebig nahe an $L$ heran 🎯]
#v(20pt)
#only("2-")[- Epsilon-N-Definition: Für jedes $epsilon > 0$ gibt es ein $N$, so dass für alle $n >= N$ gilt: $|a_n - L| < epsilon$ 📏]
#v(20pt)
#only("3-")[- Schlüsselidee: Kontrolle des Abstands zwischen $a_n$ und $L$ 🔒]
#only("1")[
#voiceover("Zusammenfassend konvergiert eine Folge a_n gegen einen Grenzwert L, wenn ihre Glieder mit zunehmendem n beliebig nahe an L herankommen.")
]
#only("2")[
#voiceover("Die Epsilon-N-Definition formalisert dies, indem sie sagt, dass für jedes positive epsilon ein Index N gefunden werden kann, so dass für alle n größer oder gleich N der absolute Unterschied zwischen a_n und L kleiner als epsilon ist.")
]
#only("3")[
#voiceover("Die Schlüsselidee ist, dass wir kontrollieren können, wie nahe die Glieder der Folge dem Grenzwert kommen, indem wir einen geeigneten Index N wählen.")
]
]