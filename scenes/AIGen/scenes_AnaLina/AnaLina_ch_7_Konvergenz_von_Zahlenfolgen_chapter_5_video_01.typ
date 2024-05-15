#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz und Divergenz]
#v(40pt)
#only("1-")[- Konvergenz: Annäherung an einen Grenzwert 🎯]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen 0 für $n → ∞$]
#v(40pt)
#only("3-")[- Bestimmte Divergenz: Gegen ±∞ 🚀]
#v(20pt)
#only("4-")[- Beispiel: $a_n = n$ divergiert gegen ∞ für $n → ∞$]

#only("1")[
#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Grenzwert annähert.")
]
#only("2")[
#voiceover("Zum Beispiel konvergiert die Folge a_n gleich 1 durch n gegen 0, wenn n gegen unendlich geht.")
]
#only("3")[
#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie gegen plus oder minus unendlich geht.")
]
#only("4")[
#voiceover("Zum Beispiel divergiert die Folge a_n gleich n gegen unendlich, wenn n gegen unendlich geht.")
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

n = np.arange(1, 20)
a_n = 1 / n
b_n = n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label=r'$a_n = 1/n$')
plt.plot(n, b_n, 'ro-', label=r'$b_n = n$')
plt.legend(fontsize=14)
plt.xlabel('n', fontsize=14)
plt.ylabel('Folgenglied', fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Hier sehen wir die Folgen a_n gleich 1 durch n in blau und b_n gleich n in rot. Die blaue Folge konvergiert gegen 0, während die rote Folge bestimmt gegen unendlich divergiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergenz: Annäherung an Grenzwert 🎯]
#v(20pt)
#only("2-")[- Bestimmte Divergenz: Gegen ±∞ 🚀]
#v(20pt)
#only("3-")[- Kriterien: Epsilon, Monotonie, Beschränktheit 📏]

#only("1")[
#voiceover("Zusammenfassend konvergiert eine Zahlenfolge, wenn sie sich einem Grenzwert annähert.")
]
#only("2")[
#voiceover("Sie divergiert bestimmt, wenn sie gegen plus oder minus unendlich geht.")
]
#only("3")[
#voiceover("Kriterien wie das Epsilon-Kriterium, Monotonie und Beschränktheit helfen bei der Bestimmung der Konvergenz oder Divergenz einer Folge.")
]
]