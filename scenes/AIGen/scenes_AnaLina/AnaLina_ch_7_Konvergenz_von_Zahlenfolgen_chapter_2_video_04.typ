#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Lass uns noch einmal die wichtigsten Punkte zur bestimmten Divergenz von Zahlenfolgen zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Bestimmte Divergenz 📈]
#v(40pt)
#only("2")[
#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie gegen unendlich oder minus unendlich geht, wenn $n$ gegen unendlich geht.")
]
#only("2-")[
- Zahlenfolge $(a_n)$ divergiert bestimmt, wenn:
  - $lim_(n->oo) a_n = oo$ oder
  - $lim_(n->oo) a_n = -oo$
]
#only("3")[
#voiceover("Betrachten wir zum Beispiel die Zahlenfolge $a_n = n$. Wenn $n$ immer größer wird, wird auch $a_n$ immer größer und strebt gegen unendlich.")
]
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.title('Bestimmte Divergenz von $a_n = n$', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("4")[
#voiceover("Ein anderes Beispiel ist die Zahlenfolge $b_n = -2n$. Hier strebt $b_n$ gegen minus unendlich, wenn $n$ gegen unendlich geht.")
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = -2 * n

plt.figure(figsize=(8, 6))
plt.plot(n, b_n, 'ro-', label='$b_n = -2n$')
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$b_n$', fontsize=14)
plt.title('Bestimmte Divergenz von $b_n = -2n$', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("5")[
#voiceover("In beiden Fällen gibt es keinen endlichen Grenzwert, dem sich die Folge annähert. Stattdessen wächst oder fällt sie über alle Grenzen.")
]
#only("5-")[
- Kein endlicher Grenzwert 🚫
- Folge wächst oder fällt über alle Grenzen 📈📉
]
]


There are no errors in the code.]]