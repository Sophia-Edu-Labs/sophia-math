#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität Zusammenfassung]
#v(40pt)
#only("1-")[- Eine Funktion $f$ ist an einem Punkt $a$ stetig, wenn:]
#v(20pt)
#only("2-")[  1. $f(a)$ definiert ist]
#v(10pt)
#only("3-")[  2. $lim_(x->a) f(x)$ existiert]
#v(10pt)
#only("4-")[  3. $lim_(x->a) f(x) = f(a)$]
#only("1")[
#voiceover("Lass uns das Konzept der Stetigkeit zusammenfassen. Eine Funktion f ist an einem Punkt a stetig, wenn drei Bedingungen erfüllt sind:")
]
#only("2")[
#voiceover("Erstens muss der Funktionswert an a, bezeichnet als f von a, definiert sein.")
]
#only("3")[
#voiceover("Zweitens muss der Grenzwert der Funktion f, wenn x sich a nähert, existieren.")
]
#only("4")[
#voiceover("Und drittens muss dieser Grenzwert gleich dem Funktionswert an a sein, das heißt, der Grenzwert von f von x, wenn x sich a nähert, ist gleich f von a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Stetigkeit]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.sin(x)

x = np.linspace(-2*np.pi, 2*np.pi, 1000)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', label='f(x) = sin(x)')
plt.scatter(0, 0, color='red', s=100, label='f(0) = 0')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Stetige Funktion')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung einer stetigen Funktion, der Sinusfunktion. Beachte, dass die Funktion überall definiert ist und es keine Unterbrechungen oder Lücken im Graphen gibt. Der rote Punkt stellt den Punkt (0, f(0)) dar, und wir sehen, dass der Grenzwert der Funktion, wenn x sich 0 nähert, gleich dem Funktionswert an 0 ist, nämlich 0.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit und Grenzwerte]
#v(40pt)
#only("1-")[- Stetigkeit ist eng mit Grenzwerten verbunden 🔗]
#v(20pt)
#only("2-")[- Wenn eine Funktion an einem Punkt stetig ist, existiert der Grenzwert an diesem Punkt ✅]
#v(20pt)
#only("3-")[- Aber die Existenz eines Grenzwerts garantiert keine Stetigkeit ⚠]
#only("1")[
#voiceover("Es ist wichtig zu beachten, dass Stetigkeit eng mit dem Konzept der Grenzwerte verbunden ist.")
]
#only("2")[
#voiceover("Wenn eine Funktion an einem Punkt stetig ist, dann muss der Grenzwert der Funktion, wenn x sich diesem Punkt nähert, existieren.")
]
#only("3")[
#voiceover("Allerdings bedeutet die Existenz eines Grenzwerts an einem Punkt nicht unbedingt, dass die Funktion dort stetig ist. Der Grenzwert muss auch dem Funktionswert an diesem Punkt entsprechen, um Stetigkeit zu gewährleisten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der Stetigkeit]
#v(40pt)
#only("1-")[- Stetigkeit bedeutet keine Unterbrechungen oder Lücken in der Funktion 📈]
#v(20pt)
#only("2-")[- Erfordert die Existenz des Grenzwerts und des Funktionswerts 🎯]
#v(20pt)
#only("3-")[- Der Grenzwert muss dem Funktionswert entsprechen, um Stetigkeit zu gewährleisten ⚖]
#only("1")[
#voiceover("Zusammenfassend bedeutet Stetigkeit, dass eine Funktion keine Unterbrechungen oder Lücken in ihrem Graphen hat.")
]
#only("2")[
#voiceover("Damit eine Funktion an einem Punkt stetig ist, müssen sowohl der Grenzwert der Funktion, wenn x sich diesem Punkt nähert, als auch der Funktionswert an diesem Punkt existieren.")
]
#only("3")[
#voiceover("Und entscheidend ist, dass der Grenzwert dem Funktionswert entsprechen muss, damit die Funktion an diesem Punkt stetig ist.")
]
]