#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Quotienten]
#v(40pt)
#only("1-")[- Gegeben: $a_n = 1/n$ und $b_n = 2$]
#v(20pt)
#only("2-")[- Finde: $lim_(n -> infinity) (a_n / b_n)$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns Schritt für Schritt sehen, wie wir das lösen können. Wir haben zwei Folgen gegeben: a_n ist gleich 1 durch n, und b_n ist gleich 2.")
]
#only("2")[
#voiceover("Wir müssen den Grenzwert des Quotienten dieser Folgen finden, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Individuelle Grenzwerte finden]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) b_n = lim_(n -> infinity) 2 = 2$]
#only("1")[
#voiceover("Zuerst finden wir die Grenzwerte jeder Folge einzeln. Der Grenzwert von a_n, wenn n gegen unendlich geht, ist der Grenzwert von 1 durch n, was 0 ist.")
]
#only("2")[
#voiceover("Der Grenzwert von b_n, wenn n gegen unendlich geht, ist einfach der Grenzwert der Konstanten 2, was 2 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Quotientenregel anwenden]
#v(40pt)
#only("1-")[- Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (M != 0), dann $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("2-")[- Hier ist $L = 0$ und $M = 2$]
#v(20pt)
#only("3-")[- Also, $lim_(n -> infinity) (a_n / b_n) = 0 / 2 = 0$]
#only("1")[
#voiceover("Nun können wir die Quotientenregel für Grenzwerte anwenden. Sie besagt, dass wenn der Grenzwert von a_n L ist und der Grenzwert von b_n M ist, wobei M nicht gleich 0 ist, dann ist der Grenzwert des Quotienten a_n durch b_n gleich L durch M.")
]
#only("2")[
#voiceover("In unserem Fall ist L 0 (der Grenzwert von a_n) und M ist 2 (der Grenzwert von b_n).")
]
#only("3")[
#voiceover("Daher ist der Grenzwert des Quotienten a_n durch b_n, wenn n gegen unendlich geht, gleich 0 geteilt durch 2, was 0 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequences
def a(n):
    return 1/n

def b(n):
    return 2

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)
b_n = b(n)
c_n = a_n / b_n

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='a_n = 1/n')
plt.plot(n, b_n, label='b_n = 2')
plt.plot(n, c_n, label='a_n / b_n')

# Add limit lines
plt.axhline(0, color='red', linestyle='--', label='Limit of a_n')
plt.axhline(2, color='green', linestyle='--', label='Limit of b_n')
plt.axhline(0, color='purple', linestyle='--', label='Limit of a_n / b_n')

# Improve aesthetics
plt.grid(True)
plt.legend()
plt.title('Visualization of Sequences and Their Quotient')
plt.xlabel('n')
plt.ylabel('Sequence Value')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der Folgen und ihres Quotienten. Die blaue Linie stellt a_n dar, die gegen 0 geht, wenn n zunimmt. Die orange Linie ist b_n, die konstant 2 ist. Die grüne Linie ist der Quotient a_n durch b_n, der ebenfalls gegen 0 geht, wenn n zunimmt, genau wie a_n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n / b_n) = 0$ ✅]
#v(20pt)
#only("2-")[- Dies folgt aus der Quotientenregel für Grenzwerte und den individuellen Grenzwerten von $a_n$ und $b_n$]
#only("1")[
#voiceover("Abschließend ist der Grenzwert des Quotienten a_n durch b_n, wenn n gegen unendlich geht, 0.")
]
#only("2")[
#voiceover("Dieses Ergebnis folgt direkt aus der Anwendung der Quotientenregel für Grenzwerte und der Bestimmung der individuellen Grenzwerte der Folgen a_n und b_n.")
]
]