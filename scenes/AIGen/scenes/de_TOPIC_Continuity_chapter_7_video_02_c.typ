#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
#v(40pt)
Was ist erforderlich, damit eine Funktion an einem Punkt stetig ist?
#v(40pt)
// Vom Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Der Grenzwert muss existieren]#only("2-")[#text(fill:green)[a) Der Grenzwert muss existieren]]
#v(10pt)
// Vom Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Die Funktion muss an diesem Punkt definiert sein]#only("3-")[#text(fill:green)[b) Die Funktion muss an diesem Punkt definiert sein]]
#v(10pt)
// Vom Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) Der Grenzwert muss dem Funktionswert an diesem Punkt entsprechen]#only("4-")[#text(fill:green)[c) Der Grenzwert muss dem Funktionswert an diesem Punkt entsprechen]]
#v(10pt)
// Vom Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-4")[d) Alles oben Genannte]#only("5-")[#text(fill:green)[d) Alles oben Genannte]]
#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns die Anforderungen gemeinsam durchgehen.")]
#only("2")[#voiceover("Damit eine Funktion an einem Punkt stetig ist, muss der Grenzwert an diesem Punkt existieren. Das bedeutet, dass sich die Funktion von beiden Seiten demselben Wert nähert.")]
#only("3")[#voiceover("Zusätzlich muss die Funktion an diesem Punkt definiert sein. Wenn es ein Loch oder eine Lücke in der Funktion gibt, ist sie dort nicht stetig.")]
#only("4")[#voiceover("Darüber hinaus muss der Grenzwert dem Funktionswert an diesem Punkt entsprechen. Der Funktionswert und der Grenzwert müssen übereinstimmen.")]
#only("5")[#voiceover("Zusammengefasst müssen also alle diese Bedingungen - der Grenzwert existiert, die Funktion ist definiert und der Grenzwert entspricht dem Funktionswert - erfüllt sein, damit eine Funktion an einem Punkt stetig ist. Großartige Arbeit, das zu erkennen!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Schauen wir uns ein Beispiel an:
#v(20pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

def f(x):
    if x < 1:
        return x
    elif x > 1:
        return x**2
    else:
        return 1

x = np.linspace(0, 2, 100)
y = [f(i) for i in x]

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.scatter([1], [1], color='red', label='(1, 1)')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Ist $f(x)$ stetig bei $x=1$? 🤔]
#v(20pt)
#only("2-")[- Der Grenzwert existiert: $lim_(x->1^-) f(x) = lim_(x->1^+) f(x) = 1$ ✅]
#only("3-")[- $f(1)$ ist definiert: $f(1)=1$ ✅]
#only("4-")[- Der Grenzwert entspricht dem Funktionswert: $lim_(x->1) f(x) = f(1) = 1$ ✅]
#only("5-")[Daher ist $f(x)$ stetig bei $x=1$! 🎉]

#only("1")[#voiceover("Ist die Funktion f von x stetig bei x gleich 1? Lass uns die Bedingungen überprüfen.")]
#only("2")[#voiceover("Zuerst sehen wir, dass der Grenzwert existiert. Wenn sich x von links und rechts 1 nähert, nähert sich f von x dem Wert 1.")]
#only("3")[#voiceover("Zweitens ist f von 1 definiert. Die Funktion hat einen Wert, 1, bei x gleich 1.")]
#only("4")[#voiceover("Drittens entspricht der Grenzwert, wenn sich x 1 nähert, dem Funktionswert bei 1, welcher 1 ist.")]
#only("5")[#voiceover("Da alle drei Bedingungen erfüllt sind, können wir schließen, dass f von x tatsächlich stetig bei x gleich 1 ist. Hervorragende Arbeit beim Verstehen und Anwenden des Konzepts der Stetigkeit!")]
]