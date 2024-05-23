#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergenz zu ∞]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert zu ∞, wenn:]
#v(20pt)
#only("2-")[  - Die Glieder unbegrenzt wachsen 📈]
#v(20pt)
#only("3-")[  - Wenn $n$ gegen ∞ geht]
#only("1")[
#voiceover("Eine Folge a_n divergiert zu unendlich, wenn:")
]
#only("2")[
#voiceover("Ihre Glieder unbegrenzt wachsen,")
]
#only("3")[
#voiceover("wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachten Sie die Folge $a_n = n^2$]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)  # Erste 10 Glieder
a_n = n**2

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = n^2$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Folge $a_n = n^2$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten Sie die Folge a_n gleich n Quadrat.")
]
#only("2")[
#voiceover("Wenn n zunimmt, wachsen die Glieder der Folge immer weiter ohne Grenze.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition]
#v(40pt)
#only("1-")[Eine Folge $a_n$ divergiert zu ∞, wenn:]
#v(20pt)
#only("2-")[Für jedes $M > 0$ gibt es ein $N$, sodass]
#v(20pt)
#only("3-")[für alle $n >= N$, $a_n > M$.]
#only("1")[
#voiceover("Formell divergiert eine Folge a_n zu unendlich, wenn:")
]
#only("2")[
#voiceover("Für jede reelle Zahl M größer als 0 gibt es eine natürliche Zahl N, sodass")
]
#only("3")[
#voiceover("für alle n größer oder gleich N, a_n größer als M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Divergenz zu ∞: Glieder wachsen unbegrenzt 📈]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n^2$ divergiert zu ∞]
#v(20pt)
#only("3-")[- Formale Definition: Für jedes $M > 0$ gibt es ein $N$, sodass für alle $n >= N$, $a_n > M$]
#only("1")[
#voiceover("Zusammenfassend divergiert eine Folge zu unendlich, wenn ihre Glieder unbegrenzt wachsen, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Ein Beispiel ist die Folge a_n gleich n Quadrat, die zu unendlich divergiert.")
]
#only("3")[
#voiceover("Die formale Definition besagt, dass für jede reelle Zahl M größer als 0, es eine natürliche Zahl N gibt, sodass für alle n größer oder gleich N, a_n größer als M ist.")
]
]