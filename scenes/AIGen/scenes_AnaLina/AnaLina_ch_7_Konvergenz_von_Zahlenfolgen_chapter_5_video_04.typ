#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Hier nochmal eine kurze Zusammenfassung zum Thema Konvergenz und Divergenz von Zahlenfolgen.")
]
#text(size: 30pt, weight: "bold")[Konvergenz und Divergenz]
// The title "Konvergenz und Divergenz" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert, wenn n gegen unendlich geht.")
]
#only("2-")[
- Konvergenz: Nähert sich einem bestimmten Wert 🎯
]
// The point about convergence is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Zum Beispiel konvergiert die Zahlenfolge $a_n = 1/n$ gegen 0, wenn n gegen unendlich geht.")
]
#only("3-")[
- Beispiel: $a_n = 1/n$ konvergiert gegen 0 📉
]
// The example of a convergent sequence is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Andererseits divergiert eine Zahlenfolge bestimmt, wenn sie gegen unendlich oder minus unendlich geht, wenn n gegen unendlich geht.")
]
#only("4-")[
- Bestimmte Divergenz: Geht gegen ±∞ 🚀
]
// The point about definite divergence is shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("Ein Beispiel dafür ist die Zahlenfolge $a_n = n$, die bestimmt gegen unendlich divergiert.")
]
#only("5-")[
- Beispiel: $a_n = n$ divergiert bestimmt gegen ∞ 📈
]
// The example of a definitely divergent sequence is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Hier sehen wir eine Visualisierung dieser Konzepte.")
]
#text(size: 30pt, weight: "bold")[Visualisierung]
// The title "Visualisierung" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 20)
convergent = 1 / n
divergent = n

plt.figure(figsize=(10, 6))

plt.subplot(1, 2, 1)
plt.plot(n, convergent, 'bo-', label=r'$a_n = 1/n$')
plt.axhline(0, color='r', linestyle='--', label='Grenzwert')
plt.title('Konvergente Folge')
plt.xlabel('n')
plt.ylabel(r'$a_n$')
plt.legend()
plt.grid(True)

plt.subplot(1, 2, 2)
plt.plot(n, divergent, 'ro-', label=r'$a_n = n$')
plt.title('Divergente Folge')
plt.xlabel('n')
plt.ylabel(r'$a_n$')
plt.legend()
plt.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a convergent sequence on the left and a divergent sequence on the right. This figure is shown from slide 1 onward.
#only("2")[
#voiceover("Links sehen wir eine konvergente Folge, die sich dem Grenzwert 0 nähert.")
]
#only("3")[
#voiceover("Rechts haben wir eine divergente Folge, die gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen:")
]
#only("1-")[
- Konvergenz: Nähert sich einem bestimmten Wert 🎯
]
#v(20pt)
#only("2-")[
- Bestimmte Divergenz: Geht gegen ±∞ 🚀
]
#v(20pt)
#only("3")[
#voiceover("Die Konvergenz und Divergenz von Zahlenfolgen sind fundamentale Konzepte in der Analysis und haben viele wichtige Anwendungen.")
]
#only("3-")[
- Wichtige Konzepte in der Analysis 📚
]
#v(20pt)
#only("4")[
#voiceover("Ich hoffe, diese Zusammenfassung hat dazu beigetragen, diese Konzepte zu festigen. Bis zum nächsten Mal!")
]
]