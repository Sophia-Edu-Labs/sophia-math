#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[- Eine Folge $a_n$ divergiert ins $Unendliche$, wenn:]
#v(20pt)
#only("2-")[  Für jedes $M > 0$ existiert ein $N$ derart, dass]
#v(20pt)
#only("3-")[  Für alle $n >= N$ gilt $a_n > M$ 🚀]
#only("1")[
#voiceover("Eine Folge a_n divergiert ins Unendliche, wenn:")
]
#only("2")[
#voiceover("Für jede reelle Zahl M größer als 0 existiert eine natürliche Zahl N derart, dass")
]
#only("3")[
#voiceover("Für alle n größer oder gleich N gilt, dass a_n größer als M ist. Mit anderen Worten, die Glieder der Folge werden schließlich größer als jede vorgegebene positive Zahl und bleiben es auch.")
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

# Define the sequence
def a(n):
    return n**2

# Generate n values
n = np.arange(1, 11)

# Calculate a_n values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='a_n = n^2')
plt.xlabel('n')
plt.ylabel('a_n')
plt.title('Sequence Diverging to Infinity')
plt.legend()
plt.grid(True)

# Add annotations
plt.annotate('M', xy=(0, 25), xytext=(-1, 25), arrowprops=dict(facecolor='red', shrink=0.05))
plt.annotate('N', xy=(5, 0), xytext=(5, -20), arrowprops=dict(facecolor='green', shrink=0.05))
plt.annotate('a_n > M for all n >= N', xy=(7, 60), xytext=(4, 80), arrowprops=dict(facecolor='orange', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Lass uns diese Definition visualisieren. Betrachte die Folge a_n gleich n Quadrat. Egal wie groß wir M wählen, dargestellt durch die rote Linie, wir können immer ein N finden, dargestellt durch die grüne Linie, sodass für alle n größer oder gleich N, a_n größer als M ist, wie durch die orange Annotation angezeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Sei $a_n = 2n$]
#v(20pt)
#only("2-")[- Wähle ein beliebiges $M > 0$, z.B. $M = 100$]
#v(20pt)
#only("3-")[- Finde $N$ derart, dass $2N > 100$]
#v(20pt)
#only("4-")[- $N = 51$ funktioniert 👍]
#v(20pt)
#only("5-")[- Für alle $n >= 51$ gilt $2n > 100$]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Sei a_n gleich 2n.")
]
#only("2")[
#voiceover("Wähle ein beliebiges M größer als 0, zum Beispiel M gleich 100.")
]
#only("3")[
#voiceover("Wir müssen ein N finden, sodass 2N größer als 100 ist.")
]
#only("4")[
#voiceover("N gleich 51 funktioniert, weil 2 mal 51 gleich 102 ist, was größer als 100 ist.")
]
#only("5")[
#voiceover("Daher gilt für alle n größer oder gleich 51, dass 2n größer als 100 ist. Dies zeigt, dass die Folge 2n ins Unendliche divergiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Divergenz ins $Unendliche$: $a_n$ wird beliebig groß 📈]
#v(20pt)
#only("2-")[- Formale Definition: Für jedes $M > 0$ existiert ein $N$ derart, dass $a_n > M$ für alle $n >= N$]
#v(20pt)
#only("3-")[- Intuition: Die Glieder von $a_n$ übersteigen schließlich jede positive Zahl 🎯]
#only("1")[
#voiceover("Zusammenfassend, eine Folge divergiert ins Unendliche, wenn ihre Glieder beliebig groß werden.")
]
#only("2")[
#voiceover("Die formale Definition besagt, dass für jede positive reelle Zahl M eine natürliche Zahl N existiert, sodass a_n größer als M ist für alle n größer oder gleich N.")
]
#only("3")[
#voiceover("Intuitiv bedeutet dies, dass die Glieder der Folge schließlich jede vorgegebene positive Zahl übersteigen und ohne Begrenzung wachsen.")
]
]