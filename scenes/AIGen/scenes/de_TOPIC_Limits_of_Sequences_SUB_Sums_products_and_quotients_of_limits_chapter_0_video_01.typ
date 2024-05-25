#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert einer Folge]
#v(40pt)
#only("1-")[- Wert, dem die Glieder folgen, wenn $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ → 0️, wenn $n → ∞$]
#v(20pt)
#only("3-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Definiere die Folge
def a(n):
    return 1/n

# Generiere n-Werte
n = np.arange(1, 100)

# Berechne die Folgenglieder
a_n = a(n)

# Erstelle das Diagramm
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='Grenzwert: 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Konvergenz der Folge')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[
#voiceover("Der Grenzwert einer Folge ist der Wert, dem die Glieder der Folge näher kommen, wenn der Index n gegen unendlich geht.")
]
#only("2")[
#voiceover("Betrachten wir zum Beispiel die Folge a_n gleich 1 durch n. Wenn n immer größer wird, nähern sich die Glieder dieser Folge immer mehr dem Wert 0.")
]
#only("3")[
#voiceover("Wir können diese Konvergenz visualisieren. Die blauen Punkte repräsentieren die Glieder der Folge, und die rote gestrichelte Linie repräsentiert den Grenzwert. Wenn n zunimmt, nähern sich die Glieder dem Grenzwert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition]
#v(40pt)
#only("1-")[- $lim_(n→∞) a_n = L$ falls:]
#v(20pt)
#only("2-")[  - ∀ $ε>0$, ∃ $N ∈ NN$, sodass]
#v(20pt)
#only("3-")[  - $|a_n - L| < ε$ immer wenn $n > N$]
#only("1")[
#voiceover("Formal sagen wir, dass der Grenzwert einer Folge a_n, wenn n gegen unendlich geht, L ist, falls:")
]
#only("2")[
#voiceover("Für jede positive reelle Zahl Epsilon existiert eine natürliche Zahl N, sodass")
]
#only("3")[
#voiceover("der absolute Wert von a_n minus L kleiner als Epsilon ist, immer wenn n größer als N ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Folge nähert sich beliebig dem Grenzwert 🎯]
#v(20pt)
#only("2-")[- Kann $|a_n - L|$ beliebig klein machen 📏]
#v(20pt)
#only("3-")[- Indem man $n$ ausreichend groß wählt 🔢]
#only("1")[
#voiceover("Intuitiv bedeutet dies, dass sich die Folge beliebig dem Grenzwert nähert.")
]
#only("2")[
#voiceover("Wir können den absoluten Unterschied zwischen a_n und L beliebig klein machen,")
]
#only("3")[
#voiceover("indem wir n ausreichend groß wählen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwert: Wert, dem die Folge folgt, wenn $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Formal: $∀ ε>0$, $∃ N$, sodass $|a_n - L| < ε$ für $n > N$]
#v(20pt)
#only("3-")[- Intuitiv: Folge nähert sich beliebig dem Grenzwert 🎯]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert einer Folge der Wert, dem die Folge folgt, wenn der Index n gegen unendlich geht.")
]
#only("2")[
#voiceover("Formal bedeutet dies, dass für jedes positive Epsilon ein N existiert, sodass der absolute Unterschied zwischen a_n und L für alle n größer als N kleiner als Epsilon ist.")
]
#only("3")[
#voiceover("Intuitiv bedeutet dies, dass sich die Folge dem Grenzwert beliebig nähert, wenn n zunimmt.")
]
]