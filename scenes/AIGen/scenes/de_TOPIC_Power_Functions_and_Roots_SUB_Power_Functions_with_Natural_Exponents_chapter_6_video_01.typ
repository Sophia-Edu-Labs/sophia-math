#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Integrale von Potenzfunktionen]
#v(40pt)
#only("1-")[- Für $f(x) = x^n$, wobei $n ≠ -1$]
#v(20pt)
#only("2-")[- $integral x^n dif x = (x^(n+1))/(n+1) + C$]
#v(20pt)
#only("3-")[- 🔑 Addiere 1 zum Exponenten, teile durch den neuen Exponenten]
#only("1")[
#voiceover("Lass uns über das Integral von Potenzfunktionen sprechen. Wir betrachten Funktionen der Form f von x gleich x hoch n, wobei n nicht gleich minus eins ist.")
]
#only("2")[
#voiceover("Das Integral von x hoch n bezüglich x ist gleich x hoch n plus eins, geteilt durch n plus eins, plus eine Integrationskonstante C.")
]
#only("3")[
#voiceover("Die Schlüsselschritte sind: Addiere eins zum Exponenten, dann teile durch diesen neuen Exponenten. Vergiss nicht, am Ende die Integrationskonstante hinzuzufügen!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $integral x^3 dif x$]
#v(40pt)
#only("1-")[- $f(x) = x^3$, also $n = 3$]
#v(20pt)
#only("2-")[- $integral x^3 dif x = (x^(3+1))/(3+1) + C$]
#v(20pt)
#only("3-")[- $= (x^4)/4 + C$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte das Integral von x hoch drei bezüglich x. Hier ist f von x gleich x hoch drei, also ist n gleich drei.")
]
#only("2")[
#voiceover("Nach unserer Formel ist das Integral von x hoch drei gleich x hoch drei plus eins, geteilt durch drei plus eins, plus C.")
]
#only("3")[
#voiceover("Das vereinfacht sich zu x hoch vier, geteilt durch vier, plus C. Das war's!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung des Integrals]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3
y_int = 1/4 * x**4

plt.figure(figsize=(6, 4))
plt.plot(x, y, label='$f(x)=x^3$')
plt.plot(x, y_int, '--', label='$integral x^3 dif x = (x^4)/4 + C$')
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-5, 5)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Funktion und ihr Integral')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das die Funktion f von x gleich x hoch drei in Blau zeigt, und ihr Integral, x hoch vier geteilt durch vier plus C, in der gestrichelten Linie. Das Integral ist eine Stammfunktion der ursprünglichen Funktion.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Integral der Potenzfunktion: $integral x^n dif x = (x^(n+1))/(n+1) + C$]
#v(20pt)
#only("2-")[- 🔑 Addiere 1 zum Exponenten, teile durch den neuen Exponenten, füge $C$ hinzu]
#v(20pt)
#only("3-")[- Beispiel: $integral x^3 dif x = (x^4)/4 + C$]
#only("1")[
#voiceover("Zusammenfassend: Das Integral einer Potenzfunktion x hoch n, wobei n nicht gleich minus eins ist, ist x hoch n plus eins, geteilt durch n plus eins, plus eine Konstante C.")
]
#only("2")[
#voiceover("Denke an die Schlüsselschritte: Addiere eins zum Exponenten, teile durch den neuen Exponenten, und vergiss nicht, die Integrationskonstante C am Ende hinzuzufügen.")
]
#only("3")[
#voiceover("Zum Beispiel ist das Integral von x hoch drei x hoch vier, geteilt durch vier, plus C.")
]
]