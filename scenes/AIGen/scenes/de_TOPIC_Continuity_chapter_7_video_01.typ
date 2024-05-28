#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte und Stetigkeit]
#v(40pt)
#only("1-")[- Grenzwerte beschreiben das Verhalten nahe einem Punkt 📈]
#v(20pt)
#only("2-")[- Stetigkeit bedeutet keine Lücken oder Sprünge 🌉]
#only("1")[
#voiceover("Grenzwerte beschreiben das Verhalten einer Funktion, wenn wir uns einem bestimmten Punkt nähern. Sie sagen uns, welchem Wert die Funktion nahekommt, ohne ihn unbedingt zu erreichen.")
]
#only("2")[
#voiceover("Stetigkeit hingegen bedeutet, dass eine Funktion keine Lücken oder plötzliche Sprünge hat. Wenn Du den Graphen einer Funktion zeichnen kannst, ohne den Stift abzusetzen, ist sie stetig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beziehung]
#v(40pt)
#only("1-")[Für Stetigkeit bei $a$:]
#v(20pt)
#only("2-")[1. $f(a)$ muss existieren ✅]
#v(20pt)
#only("3-")[2. $lim_(x->a) f(x)$ muss existieren 📊]
#v(20pt)
#only("4-")[3. $lim_(x->a) f(x) = f(a)$ 🎯]
#only("1")[
#voiceover("Damit eine Funktion an einem Punkt a stetig ist, müssen drei Bedingungen erfüllt sein.")
]
#only("2")[
#voiceover("Erstens muss der Funktionswert an a, f von a, existieren.")
]
#only("3")[
#voiceover("Zweitens muss der Grenzwert der Funktion, wenn x sich a nähert, existieren.")
]
#only("4")[
#voiceover("Und drittens muss dieser Grenzwert gleich dem Funktionswert an a sein. Mit anderen Worten, die Funktion nähert sich demselben Wert, den sie an diesem Punkt annimmt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte $f(x) = x^2$]
#v(20pt)
#only("2-")[Bei $a = 1$:]
#v(20pt)
#only("3-")[1. $f(1) = 1^2 = 1$ ✅]
#v(20pt)
#only("4-")[2. $lim_(x->1) x^2 = 1$ 📊]
#v(20pt)
#only("5-")[3. $lim_(x->1) x^2 = f(1)$ 🎯]
#only("1")[
#voiceover("Betrachten wir die Funktion f von x gleich x Quadrat.")
]
#only("2")[
#voiceover("Wir überprüfen ihre Stetigkeit am Punkt a gleich 1.")
]
#only("3")[
#voiceover("Erstens existiert f von 1 und ist gleich 1 Quadrat, was 1 ist.")
]
#only("4")[
#voiceover("Zweitens existiert der Grenzwert von x Quadrat, wenn x sich 1 nähert, und ist ebenfalls gleich 1.")
]
#only("5")[
#voiceover("Und drittens ist dieser Grenzwert gleich dem Funktionswert an 1. Daher ist f von x gleich x Quadrat stetig bei x gleich 1.")
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

x = np.linspace(-2, 4, 100)
y = x**2

fig, ax = plt.subplots(figsize=(6, 6))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x)=x^2$')
ax.plot(1, 1, 'ro', markersize=10, label='$f(1)=1$')
ax.legend()
ax.set_xlabel('x')
ax.set_ylabel('f(x)')
ax.grid()
ax.set_title('Stetigkeit von $f(x)=x^2$ bei $x=1$')
ax.set_xlim(-2, 4)
ax.set_ylim(-1, 10)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Graph von f von x gleich x Quadrat. Die Funktion ist stetig bei x gleich 1, da der Grenzwert gleich dem Funktionswert an diesem Punkt ist, wie durch den roten Punkt gezeigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwerte beschreiben das Verhalten nahe einem Punkt 📈]
#v(20pt)
#only("2-")[- Stetigkeit: keine Lücken oder Sprünge 🌉]
#v(20pt)
#only("3-")[- Für Stetigkeit: Grenzwert = Funktionswert 🎯]
#only("1")[
#voiceover("Zusammenfassend beschreiben Grenzwerte das Verhalten einer Funktion nahe einem Punkt,")
]
#only("2")[
#voiceover("während Stetigkeit bedeutet, dass die Funktion keine Lücken oder Sprünge hat.")
]
#only("3")[
#voiceover("Damit eine Funktion an einem Punkt stetig ist, muss der Grenzwert an diesem Punkt gleich dem Funktionswert sein.")
]
]