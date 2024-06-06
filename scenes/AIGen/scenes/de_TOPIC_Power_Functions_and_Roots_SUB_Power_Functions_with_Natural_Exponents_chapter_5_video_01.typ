#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion]
#v(40pt)
#only("1-")[$ f(x) = x^n $]
#v(20pt)
#only("2-")[Beispiel: $ f(x) = x^3 $]
#only("1")[
#voiceover("Betrachten wir eine Potenzfunktion f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Zum Beispiel ist f von x gleich x hoch drei eine Potenzfunktion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ableitung]
#v(40pt)
#only("1-")[$ f'(x) = n x^(n-1) $]
#v(20pt)
#only("2-")[Beispiel: $ f(x) = x^3 \rightarrow f'(x) = 3 x^2 $]
#only("1")[
#voiceover("Die Ableitung einer Potenzfunktion f von x gleich x hoch n ist f Strich von x gleich n mal x hoch n minus 1.")
]
#only("2")[
#voiceover("Zum Beispiel, wenn f von x gleich x hoch drei ist, dann ist f Strich von x gleich 3 mal x Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3
y_deriv = 3 * x**2

fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^3$')
ax.plot(x, y_deriv, 'r--', linewidth=2, label='$f\'(x) = 3x^2$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend(loc='upper left')
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung einer Potenzfunktion und ihrer Ableitung. Die blaue Kurve stellt die Funktion f von x gleich x hoch drei dar, während die rote gestrichelte Kurve ihre Ableitung f Strich von x gleich 3 mal x Quadrat darstellt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beweis]
#v(40pt)
#only("1-")[1. $f(x) = x^n$]
#v(20pt)
#only("2-")[2. $f(x+h) = (x+h)^n$]
#v(20pt)
#only("3-")[3. $f(x+h) = x^n + n x^(n-1) h + ... + h^n$]
#v(20pt)
#only("4-")[4. $f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$]
#v(20pt)
#only("5-")[5. $f'(x) = \lim_{h \to 0} \frac{n x^{(n-1)} h + ...}{h} = n x^{(n-1)}$]
#only("1")[
#voiceover("Lass uns diese Formel beweisen. Wir beginnen mit der Funktion f von x gleich x hoch n.")
]
#only("2")[
#voiceover("Dann betrachten wir f von x plus h, was gleich x plus h hoch n ist.")
]
#only("3")[
#voiceover("Durch die Anwendung des binomischen Lehrsatzes erhalten wir x hoch n plus n mal x hoch n minus 1 mal h plus einige andere Terme, die h enthalten.")
]
#only("4")[
#voiceover("Die Ableitung ist definiert als der Grenzwert, wenn h gegen 0 geht, von f von x plus h minus f von x, alles geteilt durch h.")
]
#only("5")[
#voiceover("Durch Einsetzen und Vereinfachen verschwinden die meisten Terme, die h enthalten, wenn h gegen 0 geht, und wir erhalten den Grenzwert von n mal x hoch n minus 1 mal h geteilt durch h, was einfach n mal x hoch n minus 1 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzfunktion: $ f(x) = x^n $]
#v(20pt)
#only("2-")[- Ableitung: $ f'(x) = n x^{(n-1)} $]
#v(20pt)
#only("3-")[- Beweis: Binomischer Lehrsatz + Definition der Ableitung]
#only("1")[
#voiceover("Zusammenfassend ist eine Potenzfunktion eine Funktion der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Die Ableitung einer Potenzfunktion f von x gleich x hoch n ist f Strich von x gleich n mal x hoch n minus 1.")
]
#only("3")[
#voiceover("Dies kann mit dem binomischen Lehrsatz und der Definition der Ableitung als Grenzwert bewiesen werden.")
]
]