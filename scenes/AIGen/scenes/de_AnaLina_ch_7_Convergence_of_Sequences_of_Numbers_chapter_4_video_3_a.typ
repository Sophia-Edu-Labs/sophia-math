#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[#text()[Bestimme, ob die Folge $a_n = n^2$ ins Unendliche divergiert.]]
#v(20pt)
#only("2-")[#text(fill:green)[Großartig! Das ist die richtige Antwort. 🙌]]
#v(20pt)
#only("3-")[Lösung:
1. Betrachte die Definition der Divergenz ins Unendliche:
   Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, sodass für alle $n >= N$ gilt: $a_n > M$.]
#only("4-")[2. Sei $M > 0$ beliebig. Wir müssen ein $N$ finden, sodass für alle $n >= N$ gilt: $n^2 > M$.]

#only("1")[
#voiceover("Lass uns bestimmen, ob die Folge a_n gleich n Quadrat ins Unendliche divergiert.")
]
#only("2")[
#voiceover("Großartig! Das ist die richtige Antwort. Die Folge divergiert tatsächlich ins Unendliche. Lass uns sehen, warum.")
]
#only("3")[
#voiceover("Betrachten wir zuerst die Definition der Divergenz ins Unendliche. Eine Folge a_n divergiert ins Unendliche, wenn für jedes M größer als 0 ein N existiert, sodass für alle n größer oder gleich N gilt: a_n ist größer als M.")
]
#only("4")[
#voiceover("Sei M eine beliebige Zahl größer als 0. Wir müssen ein N finden, sodass für alle n größer oder gleich N gilt: n Quadrat ist größer als M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche (Fortsetzung)]
#v(40pt)
#only("1-")[Lösung (Fortsetzung):
1. Lösen wir nach $n$ auf, erhalten wir: $n > sqrt(M)$]
#only("2-")[2. Wähle $N = ceil(sqrt(M))$. Dann gilt für alle $n >= N$: $n >= sqrt(M)$, was impliziert, dass $n^2 >= M$ ist.]
#only("3-")[3. Somit existiert für jedes $M > 0$ ein $N$ (nämlich $ceil(sqrt(M))$), sodass für alle $n >= N$ gilt: $a_n = n^2 > M$.]
#only("4-")[Daher divergiert die Folge $a_n = n^2$ ins Unendliche. ♾]

#only("1")[
#voiceover("Lösen wir diese Ungleichung nach n auf, erhalten wir, dass n größer als die Quadratwurzel von M sein muss.")
]
#only("2")[
#voiceover("Wähle nun N als die Decke der Quadratwurzel von M. Dann gilt für alle n größer oder gleich N: n ist größer oder gleich der Quadratwurzel von M, was impliziert, dass n Quadrat größer oder gleich M ist.")
]
#only("3")[
#voiceover("Somit existiert für jedes M größer als 0 ein N (nämlich die Decke der Quadratwurzel von M), sodass für alle n größer oder gleich N gilt: a_n gleich n Quadrat ist größer als M.")
]
#only("4")[
#voiceover("Daher divergiert die Folge a_n gleich n Quadrat ins Unendliche.")
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

# Generate x values (n)
n = np.arange(1, 11)

# Calculate y values (a_n)
a_n = n**2

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=8)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Folge a_n = n^2', fontsize=16)
plt.grid(True)

# Add annotations
for i in range(len(n)):
    plt.annotate(f'({n[i]}, {a_n[i]})', xy=(n[i], a_n[i]), xytext=(5, 5), 
                 textcoords='offset points', fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Folge a_n gleich n Quadrat für die ersten 10 Glieder. Wie Du sehen kannst, steigen die Werte von a_n schnell an, wenn n zunimmt, was die Divergenz ins Unendliche zeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Die Folge $a_n = n^2$ divergiert ins Unendliche. 📈]
#v(20pt)
#only("2-")[- Für jedes beliebig große $M$ können wir immer ein $N$ finden, sodass für alle $n \geq N$ gilt: $a_n > M$. 🔍]
#v(20pt)
#only("3-")[- Dies liegt daran, dass $n^2$ unbegrenzt wächst, wenn $n$ zunimmt. ⏫]
#only("1")[
#voiceover("Die wichtigste Erkenntnis hier ist, dass die Folge a_n gleich n Quadrat ins Unendliche divergiert.")
]
#only("2")[
#voiceover("Dies liegt daran, dass wir für jedes beliebig große M immer ein N finden können, sodass für alle n größer oder gleich N gilt: a_n ist größer als M.")
]
#only("3")[
#voiceover("Der Grund dafür ist, dass n Quadrat unbegrenzt wächst, wenn n zunimmt.")
]
]