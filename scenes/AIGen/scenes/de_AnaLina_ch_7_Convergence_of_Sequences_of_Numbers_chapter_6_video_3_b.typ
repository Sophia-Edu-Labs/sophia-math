#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Das ist nicht ganz richtig. Gehen wir Schritt für Schritt die richtige Lösung durch.")
]

#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]

#v(40pt)

#only("2-")[- Folge: $a_n = n$]
// Die Folge a_n wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir betrachten die Folge a_n gleich n.")
]

]

#slide()[

#only("1")[
#voiceover("Um zu beweisen, dass diese Folge ins Unendliche divergiert, müssen wir die formale Definition der Divergenz ins Unendliche verwenden.")
]

#text(size: 30pt, weight: "bold")[Formale Definition]

#v(40pt)

#only("1-")[Eine Folge $a_n$ divergiert gegen $unendlich$, wenn:]
// Die formale Definition wird ab Folie 1 eingeführt

#v(20pt)

#only("2-")[Für jedes $M > 0$ gibt es ein $N$, so dass für alle $n >= N$ gilt: $a_n > M$.]
// Die formale Definition wird ab Folie 2 vervollständigt

#only("2")[
#voiceover("Die formale Definition besagt, dass eine Folge a_n gegen unendlich divergiert, wenn für jede reelle Zahl M größer als 0 eine natürliche Zahl N existiert, so dass für alle n größer oder gleich N gilt: a_n ist größer als M.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Beweis]

#v(40pt)

#only("1-")[Sei $M > 0$ gegeben.]
// Der erste Schritt des Beweises wird ab Folie 1 angezeigt

#only("1")[
#voiceover("Beginnen wir mit dem Beweis. Sei M eine beliebige reelle Zahl größer als 0.")
]

#v(20pt)

#only("2-")[Wähle $N = M$.]
// Die Wahl von N wird ab Folie 2 angezeigt

#only("2")[
#voiceover("Wir wählen N gleich M.")
]

#v(20pt)

#only("3-")[Dann gilt für alle $n >= N$: $a_n = n >= N = M$.]
// Die Ungleichung wird ab Folie 3 angezeigt

#only("3")[
#voiceover("Dann gilt für alle n größer oder gleich N: a_n gleich n, was größer oder gleich N ist, was gleich M ist.")
]

#v(20pt)

#only("4-")[Somit gilt $a_n > M$ für alle $n >= N$.]
// Die Schlussfolgerung wird ab Folie 4 angezeigt

#only("4")[
#voiceover("Somit ist a_n größer als M für alle n größer oder gleich N.")
]

#v(20pt)

#only("5-")[Nach der formalen Definition divergiert $a_n$ gegen $unendlich$. 📈]
// Die endgültige Schlussfolgerung wird ab Folie 5 angezeigt

#only("5")[
#voiceover("Nach der formalen Definition der Divergenz ins Unendliche divergiert die Folge a_n gleich n gegen unendlich.")
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

n = np.arange(1, 11)  # Erste 10 Glieder
a_n = n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Folge a_n = n', fontsize=16)
plt.grid(True)
plt.xticks(n)
plt.show()
```,
width: 360pt),
)
]
]
// Der Graph der Folge wird mit matplotlib visualisiert

#only("1")[
#voiceover("Hier ist eine Visualisierung der ersten 10 Glieder der Folge a_n gleich n. Wie Sie sehen können, steigen die Glieder der Folge unbegrenzt an, wenn n zunimmt, was die Divergenz ins Unendliche veranschaulicht.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Folge: $a_n = n$ 📈]

#v(20pt)

#only("2-")[- Formale Definition der Divergenz gegen $unendlich$ 🎓]

#v(20pt)

#only("3-")[- Beweis: Für jedes $M > 0$, wähle $N = M$ 🔍]

#v(20pt)

#only("4-")[- Dann gilt $a_n > M$ für alle $n >= N$ ✅]

#only("1")[
#voiceover("Zusammenfassend haben wir die Folge a_n gleich n betrachtet.")
]

#only("2")[
#voiceover("Wir haben die formale Definition der Divergenz ins Unendliche verwendet.")
]

#only("3")[
#voiceover("Im Beweis haben wir für jede reelle Zahl M größer als 0 N gleich M gewählt.")
]

#only("4")[
#voiceover("Dann haben wir gezeigt, dass a_n größer als M für alle n größer oder gleich N ist, was beweist, dass die Folge gegen unendlich divergiert.")
]

]