#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Großartige Arbeit! Das ist der richtige Ansatz, um zu beweisen, dass die Folge a_n gleich n gegen $infinity$ divergiert, indem man die formale Definition verwendet. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Divergenz gegen $infinity$]

#v(40pt)

#only("2-")[- Folge: $a_n = n$]
// Die Folge a_n wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir betrachten die Folge a_n gleich n.")
]

]

#slide()[

#only("1")[
#voiceover("Um zu beweisen, dass diese Folge gegen $infinity$ divergiert, müssen wir die formale Definition der Divergenz gegen $infinity$ verwenden.")
]

#text(size: 30pt, weight: "bold")[Formale Definition]

#v(40pt)

#only("1-")[Eine Folge $a_n$ divergiert gegen $infinity$, wenn:]
// Die formale Definition wird ab Folie 1 eingeführt

#v(20pt)

#only("2-")[Für jedes $M > 0$ gibt es ein $N$, sodass für alle $n >= N$ gilt, dass $a_n > M$.]
// Die formale Definition wird ab Folie 2 vervollständigt

#only("2")[
#voiceover("Die formale Definition besagt, dass eine Folge a_n gegen $infinity$ divergiert, wenn für jede reelle Zahl M größer als 0 eine natürliche Zahl N existiert, sodass für alle n größer oder gleich N gilt, dass a_n größer als M ist.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Beweis]

#v(40pt)

#only("1-")[Sei $M > 0$ gegeben.]
// Der erste Schritt des Beweises wird ab Folie 1 gezeigt

#only("1")[
#voiceover("Beginnen wir mit dem Beweis. Sei M eine beliebige reelle Zahl größer als 0.")
]

#v(20pt)

#only("2-")[Wähle $N = M$.]
// Die Wahl von N wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir wählen N gleich M.")
]

#v(20pt)

#only("3-")[Dann gilt für alle $n >= N$, dass $a_n = n >= N = M$.]
// Die Ungleichung wird ab Folie 3 gezeigt

#only("3")[
#voiceover("Dann gilt für alle n größer oder gleich N, dass a_n gleich n ist, was größer oder gleich N ist, was gleich M ist.")
]

#v(20pt)

#only("4-")[Daher gilt $a_n > M$ für alle $n >= N$.]
// Die Schlussfolgerung wird ab Folie 4 gezeigt

#only("4")[
#voiceover("Daher ist a_n größer als M für alle n größer oder gleich N.")
]

#v(20pt)

#only("5-")[Nach der formalen Definition divergiert $a_n$ gegen $infinity$. 📈]
// Die endgültige Schlussfolgerung wird ab Folie 5 gezeigt

#only("5")[
#voiceover("Nach der formalen Definition der Divergenz gegen $infinity$ divergiert die Folge a_n gleich n gegen $infinity$.")
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
#voiceover("Hier ist eine Visualisierung der ersten 10 Glieder der Folge a_n gleich n. Wie du sehen kannst, steigen die Glieder der Folge unbegrenzt an, wenn n zunimmt, was die Divergenz gegen $infinity$ veranschaulicht.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Folge: $a_n = n$ 📈]

#v(20pt)

#only("2-")[- Formale Definition der Divergenz gegen $infinity$ 🎓]

#v(20pt)

#only("3-")[- Beweis: Für jedes $M > 0$, wähle $N = M$ 🔍]

#v(20pt)

#only("4-")[- Dann gilt $a_n > M$ für alle $n >= N$ ✅]

#only("1")[
#voiceover("Zusammenfassend haben wir die Folge a_n gleich n betrachtet.")
]

#only("2")[
#voiceover("Wir haben die formale Definition der Divergenz gegen $infinity$ verwendet.")
]

#only("3")[
#voiceover("Im Beweis haben wir für jede reelle Zahl M größer als 0 N gleich M gewählt.")
]

#only("4")[
#voiceover("Dann haben wir gezeigt, dass a_n größer als M für alle n größer oder gleich N ist, was beweist, dass die Folge gegen $infinity$ divergiert.")
]

]