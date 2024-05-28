#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche 🚀]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert ins Unendliche, wenn ihre Glieder unbegrenzt wachsen, wenn $n$ gegen Unendlich geht.]
#only("1")[
#voiceover("Eine Folge a sub n divergiert ins Unendliche, wenn ihre Glieder unbegrenzt wachsen, wenn n gegen Unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return n

# Generate n values
n = np.arange(1, 11)

# Calculate the sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.legend(fontsize=14)
plt.title('Sequence Diverging to Infinity', fontsize=16)
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachte die Folge a sub n gleich n. Wenn n zunimmt, wachsen die Glieder der Folge immer weiter ohne obere Grenze.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition 📜]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, sodass für alle $n >= N$ gilt, dass $a_n > M$.]
#only("1")[
#voiceover("Formal divergiert eine Folge a sub n ins Unendliche, wenn für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N gilt, dass a sub n größer als M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Divergenz ins Unendliche bedeutet, dass die Glieder unbegrenzt wachsen 📈]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n$ 🔢]
#v(20pt)
#only("3-")[- Formale Definition: für jedes $M > 0$ existiert ein $N$, sodass für alle $n >= N$ gilt, dass $a_n > M$ 📜]
#only("1")[
#voiceover("Zusammenfassend bedeutet Divergenz ins Unendliche, dass die Glieder einer Folge unbegrenzt wachsen.")
]
#only("2")[
#voiceover("Ein Beispiel ist die Folge a sub n gleich n.")
]
#only("3")[
#voiceover("Und die formale Definition besagt, dass für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N gilt, dass a sub n größer als M ist.")
]
]