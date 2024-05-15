#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Korrekt! 🎉]
#v(40pt)
#only("1-")[Der 5. Term der Folge $a_n = n + 2$ ist 7.]
#only("1")[
#voiceover("Leider ist deine Antwort nicht korrekt. Hier ist die richtige Lösung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[- Folge: $a_n = n + 2$]
#v(20pt)
#only("2-")[- 5. Term: $a_5 = ?$]
#v(20pt)
#only("3-")[- Einsetzen: $a_5 = 5 + 2$]
#v(20pt)
#only("4-")[- Berechnen: $a_5 = 7$ ✅]

#only("1")[
#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Gegeben ist die Zahlenfolge a_n gleich n plus 2.")
]
#only("2")[
#voiceover("Gesucht ist der 5. Term dieser Folge, also a_5.")
]
#only("3")[
#voiceover("Um a_5 zu finden, setzen wir einfach n gleich 5 in die Formel ein. Damit erhalten wir: a_5 gleich 5 plus 2.")
]
#only("4")[
#voiceover("Wenn wir das berechnen, sehen wir, dass a_5 gleich 7 ist. Das hast du super erkannt!")
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

n = np.arange(1, 11)
a_n = n + 2

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'o-', color='blue', label='$a_n = n + 2$')
plt.plot(5, 7, 'ro', markersize=10, label='5. Term: $a_5 = 7$')

plt.xlabel('n', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.xticks(n)
plt.grid(True)
plt.legend(fontsize=12)
plt.title('Zahlenfolge $a_n = n + 2$', fontsize=16)

plt.annotate('$a_5 = 5 + 2 = 7$', xy=(5, 7), xytext=(6, 8),
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier siehst du noch eine grafische Darstellung der Zahlenfolge. Die blauen Punkte zeigen die ersten 10 Terme. Der rote Punkt hebt den 5. Term hervor, der, wie wir gesehen haben, gleich 7 ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Folge: $a_n = n + 2$ 📈]
#v(20pt)
#only("2-")[- 5. Term: $a_5 = 5 + 2 = 7$ 🎯]
#v(20pt)
#only("3-")[Gut gemacht! 👍]

#only("1")[
#voiceover("Lass uns das nochmal zusammenfassen. Wir hatten die Zahlenfolge a_n gleich n plus 2.")
]
#only("2")[
#voiceover("Um den 5. Term zu finden, haben wir einfach n gleich 5 gesetzt und ausgerechnet. Damit war a_5 gleich 5 plus 2, also 7.")
]
#only("3")[
#voiceover("Super, dass du das richtig gelöst hast! Mach weiter so!")
]
]