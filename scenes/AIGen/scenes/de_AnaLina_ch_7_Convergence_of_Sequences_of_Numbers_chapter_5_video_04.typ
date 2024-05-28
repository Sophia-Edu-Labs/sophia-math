#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergente Folgen]
#v(40pt)
#only("1-")[- Folgen, die keinen bestimmten Wert annehmen]
#v(20pt)
#only("2-")[- Beispiel 1: $a_n = n$]
#v(20pt)
#only("3-")[- Beispiel 2: $b_n = (-1)^n n$]
#only("1")[
#voiceover("In dieser Zusammenfassung werden wir Beispiele für divergente Folgen betrachten. Divergente Folgen sind Folgen, die keinen bestimmten Wert annehmen, wenn n gegen $infinity$ geht.")
]
#only("2")[
#voiceover("Ein Beispiel für eine divergente Folge ist $a_n = n$. Wenn n zunimmt, steigen die Glieder dieser Folge unbegrenzt an.")
]
#only("3")[
#voiceover("Ein weiteres Beispiel ist $b_n = (-1)^n n$. Diese Folge oszilliert zwischen positiven und negativen Werten, während sie im Betrag zunimmt.")
]
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

n = np.arange(1, 11)
a_n = n
b_n = (-1)**n * n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.plot(n, b_n, 'ro-', label='$b_n = (-1)^n n$')
plt.xlabel('n')
plt.ylabel('Folgenwert')
plt.title('Divergente Folgen')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung dieser beiden divergenten Folgen. Die blaue Linie repräsentiert $a_n = n$, die linear ansteigt. Die rote Linie repräsentiert $b_n = (-1)^n n$, die oszilliert und im Betrag zunimmt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Divergente Folgen nähern sich keinem bestimmten Wert 📈]
#v(20pt)
#only("2-")[- $a_n = n$ steigt unbegrenzt an 🔼]
#v(20pt)
#only("3-")[- $b_n = (-1)^n n$ oszilliert und nimmt im Betrag zu 🌊]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass divergente Folgen keinen bestimmten Wert annehmen, wenn n gegen $infinity$ geht.")
]
#only("2")[
#voiceover("Die Folge $a_n = n$ ist ein Beispiel für eine Folge, die unbegrenzt ansteigt.")
]
#only("3")[
#voiceover("Die Folge $b_n = (-1)^n n$ ist ein Beispiel für eine Folge, die oszilliert und im Betrag zunimmt.")
]
]