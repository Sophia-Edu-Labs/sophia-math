#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung Konvergenz von Zahlenfolgen]
#v(40pt)
#only("1-")[- Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert 📈]
#only("1")[#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert, wenn n gegen unendlich geht.")]
#v(20pt)
#only("2-")[- Zahlenfolge divergiert bestimmt, wenn sie gegen ±∞ geht 📉]
#only("2")[#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie gegen plus oder minus unendlich geht, wenn n gegen unendlich geht.")]
#v(20pt)
#only("3-")[- Konvergenzkriterien, z.B. Epsilon-Kriterium 🔍]
#only("3")[#voiceover("Es gibt verschiedene Kriterien, um die Konvergenz einer Zahlenfolge zu bestimmen, wie zum Beispiel das Epsilon-Kriterium.")]
#v(20pt)
#only("4-")[- Konvergenz wichtig in Mathematik und Ingenieurwissenschaften 🎓]
#only("4")[#voiceover("Die Konvergenz von Zahlenfolgen ist in vielen Bereichen der Mathematik und der Ingenieurwissenschaften wichtig.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Konvergente Zahlenfolge
n = np.arange(1, 20)
a_n = 1/n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(y=0, color='r', linestyle='-', label='Grenzwert')
plt.title('Konvergente Zahlenfolge')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[#voiceover("Hier ist ein Beispiel für eine konvergente Zahlenfolge. Die Zahlenfolge a_n gleich 1 durch n konvergiert gegen 0, wenn n gegen unendlich geht.")]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Bestimmt divergente Zahlenfolge
n = np.arange(1, 20)
a_n = n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.title('Bestimmt divergente Zahlenfolge')
plt.xlabel('n')
plt.ylabel('$a_n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("2")[#voiceover("Und hier ist ein Beispiel für eine bestimmt divergente Zahlenfolge. Die Zahlenfolge a_n gleich n divergiert gegen plus unendlich, wenn n gegen unendlich geht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Konvergenz von Zahlenfolgen ist ein zentrales Konzept 🎯]
#only("1")[#voiceover("Die Konvergenz von Zahlenfolgen ist ein zentrales Konzept in der Analysis und anderen Bereichen der Mathematik.")]
#v(20pt)
#only("2-")[- Viele Anwendungen in Mathematik und Ingenieurwissenschaften 🔧]
#only("2")[#voiceover("Es hat viele Anwendungen in der Mathematik selbst sowie in den Ingenieurwissenschaften und anderen angewandten Feldern.")]
#v(20pt)
#only("3-")[- Grundlage für weitere Themen wie Reihen und Funktionen 🏗️]
#only("3")[#voiceover("Das Verständnis der Konvergenz von Zahlenfolgen ist auch eine wichtige Grundlage für weitere Themen wie Reihen und Funktionen.")]
]