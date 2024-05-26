#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Folge]
#v(40pt)
#only("1-")[- Wert, dem die Folgenglieder näher kommen, wenn $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ → 0️, wenn $n → ∞$]
#v(20pt)
#only("3-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1/n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='Limit: 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Sequence Convergence')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[
#voiceover("Der Grenzwert einer Folge ist der Wert, dem die Folgenglieder näher kommen, wenn der Index n gegen unendlich geht.")
]
#only("2")[
#voiceover("Betrachte zum Beispiel die Folge a_n gleich 1 durch n. Wenn n immer größer wird, nähern sich die Glieder dieser Folge immer mehr dem Wert 0.")
]
#only("3")[
#voiceover("Wir können diese Konvergenz visualisieren. Die blauen Punkte repräsentieren die Glieder der Folge, und die rote gestrichelte Linie repräsentiert den Grenzwert. Wenn n zunimmt, nähern sich die Glieder dem Grenzwert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition]
#v(40pt)
#only("1-")[- $lim_(n→∞) a_n = L$ wenn:]
#v(20pt)
#only("2-")[  - ∀ $ε>0$, ∃ $N ∈ NN$ so dass]
#v(20pt)
#only("3-")[  - $|a_n - L| < ε$ wann immer $n > N$]
#only("1")[
#voiceover("Formal sagen wir, dass der Grenzwert einer Folge a_n, wenn n gegen unendlich geht, L ist, wenn:")
]
#only("2")[
#voiceover("Für jede positive reelle Zahl Epsilon existiert eine natürliche Zahl N, so dass")
]
#only("3")[
#voiceover("der Betrag von a_n minus L kleiner als Epsilon ist, wann immer n größer als N ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Folge nähert sich dem Grenzwert beliebig genau 🎯]
#v(20pt)
#only("2-")[- Man kann $|a_n - L|$ so klein wie gewünscht machen 📏]
#v(20pt)
#only("3-")[- Indem man $n$ ausreichend groß wählt 🔢]
#only("1")[
#voiceover("Intuitiv bedeutet dies, dass sich die Folge dem Grenzwert beliebig genau nähert.")
]
#only("2")[
#voiceover("Wir können den absoluten Unterschied zwischen a_n und L so klein wie gewünscht machen,")
]
#only("3")[
#voiceover("indem wir n ausreichend groß wählen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwert: Wert, dem die Folge näher kommt, wenn $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Formal: $∀ ε>0$, $∃ N$ so dass $|a_n - L| < ε$ für $n > N$]
#v(20pt)
#only("3-")[- Intuitiv: Folge nähert sich dem Grenzwert beliebig genau 🎯]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert einer Folge der Wert, dem die Folge näher kommt, wenn der Index n gegen unendlich geht.")
]
#only("2")[
#voiceover("Formal bedeutet dies, dass für jedes positive Epsilon ein N existiert, so dass der absolute Unterschied zwischen a_n und L kleiner als Epsilon ist, für alle n größer als N.")
]
#only("3")[
#voiceover("Intuitiv bedeutet dies, dass sich die Folge dem Grenzwert beliebig genau nähert, wenn n zunimmt.")
]
]