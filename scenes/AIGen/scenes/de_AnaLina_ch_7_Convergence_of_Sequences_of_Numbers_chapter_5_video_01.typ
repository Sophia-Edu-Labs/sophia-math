#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergente Folgen]
#v(40pt)
#only("1-")[- Folgen, die nicht gegen einen bestimmten Wert konvergieren]
#v(20pt)
#only("2-")[- Glieder wachsen unbegrenzt oder oszillieren]
#only("1")[
#voiceover("Divergente Folgen sind Folgen, die nicht gegen einen bestimmten Wert konvergieren, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Stattdessen wachsen ihre Glieder unbegrenzt oder oszillieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1: $a_n = n$]
#v(40pt)
#only("1-")[- Glieder: 1, 2, 3, 4, ...]
#v(20pt)
#only("2-")[- Wächst unbegrenzt, wenn $n → ∞$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Divergente Folge: $a_n = n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Schauen wir uns die Folge a_n gleich n an. Die Glieder dieser Folge sind 1, 2, 3, 4 und so weiter.")
]
#only("2")[
#voiceover("Wenn n wächst, wachsen die Glieder der Folge unbegrenzt.")
]
#only("3")[
#voiceover("Hier ist ein Diagramm der Folge. Man sieht, dass die Glieder der Folge mit wachsendem n weiter wachsen und gegen unendlich divergieren.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2: $b_n = (-1)^n n$]
#v(40pt)
#only("1-")[- Glieder: -1, 2, -3, 4, ...]
#v(20pt)
#only("2-")[- Oszilliert und wächst in der Größe, wenn $n → ∞$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = (-1)**n * n

plt.figure(figsize=(6, 4))
plt.plot(n, b_n, 'ro-', label='$b_n = (-1)^n n$')
plt.xlabel('$n$')
plt.ylabel('$b_n$')
plt.title('Divergente Folge: $b_n = (-1)^n n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten wir nun die Folge b_n gleich minus 1 hoch n mal n. Die Glieder dieser Folge sind minus 1, 2, minus 3, 4 und so weiter.")
]
#only("2")[
#voiceover("Wenn n wächst, oszillieren die Glieder der Folge zwischen positiven und negativen Werten, und ihre Größe wächst unbegrenzt.")
]
#only("3")[
#voiceover("Hier ist ein Diagramm der Folge. Man sieht, dass die Glieder zwischen positiven und negativen Werten wechseln und ihre absoluten Werte mit wachsendem n weiter wachsen.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Divergente Folgen konvergieren nicht]
#v(20pt)
#only("2-")[- Beispiele: $a_n = n$ und $b_n = (-1)^n n$]
#v(20pt)
#only("3-")[- Glieder wachsen unbegrenzt oder oszillieren]
#only("1")[
#voiceover("Zusammenfassend sind divergente Folgen Folgen, die nicht gegen einen bestimmten Wert konvergieren.")
]
#only("2")[
#voiceover("Wir haben uns zwei Beispiele angesehen: a_n gleich n und b_n gleich minus 1 hoch n mal n.")
]
#only("3")[
#voiceover("In diesen Folgen wachsen die Glieder entweder unbegrenzt oder oszillieren und wachsen in der Größe, wenn n gegen unendlich geht.")
]
]