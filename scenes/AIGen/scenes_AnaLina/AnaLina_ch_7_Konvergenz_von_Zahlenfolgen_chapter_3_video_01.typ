#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenzkriterien]
#v(40pt)
#only("1-")[- Verschiedene Kriterien zur Bestimmung der Konvergenz einer Zahlenfolge 📊]
#v(20pt)
#only("2-")[- Beispiel: Epsilon-Kriterium (ε-Kriterium) 🎯]
#only("1")[
#voiceover("Es gibt verschiedene Kriterien, um die Konvergenz einer Zahlenfolge zu bestimmen.")
]
#only("2")[
#voiceover("Ein Beispiel dafür ist das Epsilon-Kriterium, auch bekannt als das ε-Kriterium.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Epsilon-Kriterium]
#v(40pt)
#only("1-")[- Eine Zahlenfolge $(a_n)$ konvergiert gegen einen Grenzwert $a$, wenn:]
#v(20pt)
#only("2-")[$ ∀ε>0 ∃N∈ℕ ∀n≥N: |a_n - a| < ε $]
#v(20pt)
#only("3-")[- Bedeutung: Für jedes noch so kleine $ε>0$ gibt es einen Index $N$, sodass alle Folgenglieder $a_n$ mit $n≥N$ höchstens um $ε$ von $a$ abweichen 📏]
#only("1")[
#voiceover("Das Epsilon-Kriterium besagt, dass eine Zahlenfolge a_n gegen einen Grenzwert a konvergiert, wenn folgendes gilt:")
]
#only("2")[
#voiceover("Für jedes Epsilon größer 0 gibt es ein natürliches N, sodass für alle n größer gleich N der Betrag von a_n minus a kleiner als Epsilon ist.")
]
#only("3")[
#voiceover("Das bedeutet, für jedes noch so kleine positive Epsilon gibt es einen Index N, sodass alle Folgenglieder a_n mit n größer gleich N höchstens um Epsilon von a abweichen.")
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

# Konvergente Folge
n = np.arange(1, 11)
a_n = 1 / n
a = 0

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(y=a, color='r', linestyle='-', label='$a$')

plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.title('Konvergente Folge', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)

# Epsilon-Umgebung
eps = 0.2
plt.fill_between(n, a-eps, a+eps, color='green', alpha=0.2, label='$ε$-Umgebung')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier sehen wir eine Visualisierung des Epsilon-Kriteriums. Die blauen Punkte stellen die Folgenglieder a_n dar, die rote Linie den Grenzwert a. Die grüne Fläche zeigt die Epsilon-Umgebung um den Grenzwert. Ab einem bestimmten Index N liegen alle Folgenglieder innerhalb dieser Umgebung.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Konvergenzkriterien dienen zur Bestimmung der Konvergenz von Zahlenfolgen 📈]
#v(20pt)
#only("2-")[- Das Epsilon-Kriterium ist ein wichtiges Konvergenzkriterium 🔍]
#v(20pt)
#only("3-")[- Es besagt, dass eine Folge konvergiert, wenn ihre Glieder ab einem bestimmten Index beliebig nah am Grenzwert liegen 🎯]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass Konvergenzkriterien zur Bestimmung der Konvergenz von Zahlenfolgen dienen.")
]
#only("2")[
#voiceover("Das Epsilon-Kriterium ist ein wichtiges Konvergenzkriterium.")
]
#only("3")[
#voiceover("Es besagt, dass eine Folge konvergiert, wenn ihre Glieder ab einem bestimmten Index beliebig nah am Grenzwert liegen.")
]
]