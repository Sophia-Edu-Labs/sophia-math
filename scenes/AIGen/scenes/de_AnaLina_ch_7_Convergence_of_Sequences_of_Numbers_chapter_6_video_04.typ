#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[- Formale Definition: ]
#v(20pt)
#only("2-")[$a_n$ divergiert ins $infinity$, wenn $forall M > 0, exists N$ so dass $forall n >= N, a_n > M$]
#only("1")[
#voiceover("Lass uns die formale Definition der Divergenz ins Unendliche wiederholen.")
]
#only("2")[
#voiceover("Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M$ größer als 0 ein $N$ existiert, so dass für alle $n$ größer oder gleich $N$, $a_n$ größer als $M$ ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Erstelle eine Folge, die ins Unendliche divergiert
n = np.arange(1, 11)
a_n = n**2

# Erstelle das Diagramm
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.axhline(y=0, color='black', linestyle='-', linewidth=1)
plt.axvline(x=0, color='black', linestyle='-', linewidth=1)

# Füge Beschriftungen und Titel hinzu
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Folge, die ins Unendliche divergiert', fontsize=16)

# Füge Legende hinzu
plt.legend(['a_n = n^2'], loc='upper left', fontsize=12)

# Füge Gitter hinzu
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung einer Folge, die ins Unendliche divergiert. Wenn $n$ zunimmt, wachsen die Terme $a_n$ unbegrenzt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]
#v(40pt)
#only("1-")[- Die Folgenglieder wachsen unbegrenzt, wenn $n$ gegen $infinity$ geht]
#v(20pt)
#only("2-")[- Für jedes große $M$ kann man ein $N$ finden, so dass $a_n > M$ für alle $n >= N$]
#v(20pt)
#only("3-")[- Beispiel: $a_n = n^2$ divergiert ins $infinity$]
#only("1")[
#voiceover("Die wichtigen Punkte, die du dir merken solltest, sind:")
]
#only("2")[
#voiceover("Erstens, die Folgenglieder wachsen unbegrenzt, wenn $n$ gegen Unendliche geht.")
]
#only("3")[
#voiceover("Zweitens, für jedes große $M$ können wir immer ein $N$ finden, so dass $a_n$ größer als $M$ ist für alle $n$ größer oder gleich $N$.")
]
#only("4")[
#voiceover("Zum Beispiel divergiert die Folge $a_n = n^2$ ins Unendliche.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Divergenz ins $infinity$: $a_n$ wächst unbegrenzt]
#v(20pt)
#only("2-")[- Formale Definition: $forall M > 0, exists N$ so dass $forall n >= N, a_n > M$]
#v(20pt)
#only("3-")[- Visualisierung: Terme wachsen, wenn $n$ zunimmt]
#only("1")[
#voiceover("Zusammenfassend bedeutet Divergenz ins Unendliche, dass die Folgenglieder unbegrenzt wachsen.")
]
#only("2")[
#voiceover("Die formale Definition besagt, dass für jedes $M$ größer als 0 ein $N$ existiert, so dass für alle $n$ größer oder gleich $N$, $a_n$ größer als $M$ ist.")
]
#only("3")[
#voiceover("Und visuell sehen wir, dass die Terme zunehmen, wenn $n$ zunimmt.")
]
]