#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Bestimmte Divergenz]
#v(40pt)
#only("1-")[- Zahlenfolge divergiert bestimmt, wenn:]
#v(20pt)
#only("2-")[  - $lim_(n→∞) a_n = ∞$ oder]
#v(10pt)
#only("3-")[  - $lim_(n→∞) a_n = -∞$]
#only("1")[
#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie für große $n$ gegen unendlich oder minus unendlich geht.")
]
#only("2")[
#voiceover("Das bedeutet, wenn der Grenzwert der Folge $a_n$ für $n$ gegen unendlich gleich unendlich ist, ...")
]
#only("3")[
#voiceover("... oder wenn der Grenzwert der Folge $a_n$ für $n$ gegen unendlich gleich minus unendlich ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $a_n = n$]
#v(40pt)
#only("1-")[
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
plt.legend(loc='upper left')
plt.title('Folge $a_n = n$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Betrachten wir als Beispiel die Folge $a_n = n$. Wenn wir die ersten Folgenglieder plotten, sehen wir, dass die Folge immer größer wird, je größer $n$ wird.")
]
#only("2-")[- $lim_(n→∞) n = ∞$]
#only("2")[
#voiceover("Der Grenzwert dieser Folge für $n$ gegen unendlich ist unendlich.")
]
#only("3-")[- Die Folge divergiert bestimmt gegen ∞]
#only("3")[
#voiceover("Daher divergiert die Folge $a_n = n$ bestimmt gegen unendlich.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $a_n = -n$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)  
a_n = -n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'ro-', label='$a_n = -n$')  
plt.legend(loc='lower right')
plt.title('Folge $a_n = -n$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Als weiteres Beispiel betrachten wir die Folge $a_n = -n$. Der Plot zeigt, dass die Folge immer kleiner wird, je größer $n$ wird.")
]
#only("2-")[- $lim_(n→∞) -n = -∞$]
#only("2")[
#voiceover("Der Grenzwert dieser Folge für $n$ gegen unendlich ist minus unendlich.")
]
#only("3-")[- Die Folge divergiert bestimmt gegen -∞]
#only("3")[
#voiceover("Somit divergiert die Folge $a_n = -n$ bestimmt gegen minus unendlich.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Bestimmte Divergenz: $lim_(n→∞) a_n = ±∞$]
#v(20pt)
#only("2-")[- Beispiele:]
#v(10pt)
#only("3-")[  - $a_n = n$ divergiert bestimmt gegen ∞]
#v(10pt)
#only("4-")[  - $a_n = -n$ divergiert bestimmt gegen -∞]
#only("1")[
#voiceover("Zusammenfassend können wir sagen, dass eine Zahlenfolge bestimmt divergiert, wenn ihr Grenzwert für $n$ gegen unendlich gleich unendlich oder minus unendlich ist.")
]
#only("2")[
#voiceover("Wir haben zwei Beispiele betrachtet:")
]
#only("3")[
#voiceover("Die Folge $a_n = n$ divergiert bestimmt gegen unendlich, ...")
]
#only("4")[
#voiceover("... und die Folge $a_n = -n$ divergiert bestimmt gegen minus unendlich.")
]
]