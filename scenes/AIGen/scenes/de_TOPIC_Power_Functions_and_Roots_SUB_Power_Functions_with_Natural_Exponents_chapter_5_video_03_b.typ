#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ableitung von $f(x) = x^5$]
#v(40pt)
#only("1-")[- Potenzfunktion: $f(x) = x^n$]
#v(20pt)
#only("2-")[- Ableitungsregel: $f'(x) = n ⋅ x^(n-1)$]
#v(20pt)
#only("3-")[- Für $f(x) = x^5$: $n = 5$]
#v(20pt)
#only("4-")[- $f'(x) = 5 ⋅ x^(5-1) = 5 ⋅ x^4$]
#only("1")[
#voiceover("Das war leider nicht korrekt. Schauen wir uns an, wie man die Ableitung der Funktion f von x gleich x hoch 5 findet.")
]
#only("2")[
#voiceover("Um die Ableitung zu finden, verwenden wir die Potenzregel. Die Ableitung einer Potenzfunktion f von x gleich x hoch n ist f Strich von x gleich n mal x hoch n minus 1.")
]
#only("3")[
#voiceover("In unserem Fall ist die Funktion f von x gleich x hoch 5. Also ist n gleich 5.")
]
#only("4")[
#voiceover("Wenden wir die Potenzregel an, erhalten wir f Strich von x gleich 5 mal x hoch 5 minus 1, was sich zu 5 mal x hoch 4 vereinfacht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📈]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)

def f(x):
    return x**5

def f_prime(x):
    return 5*x**4

fig, ax = plt.subplots(figsize=(8, 6))
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')

ax.plot(x, f(x), 'b', linewidth=2, label='$f(x) = x^5$')
ax.plot(x, f_prime(x), 'r', linewidth=2, label='$f\'(x) = 5x^4$')

ax.set_xlim([-2, 2])
ax.set_ylim([-10, 10])

ax.legend(loc='upper left', frameon=False)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das sowohl die ursprüngliche Funktion f von x gleich x hoch 5 in Blau als auch ihre Ableitung f Strich von x gleich 5 mal x hoch 4 in Rot zeigt.")
]
#v(40pt)
#only("2-")[💡 Die Ableitung ist die Steigung der Tangente an jedem Punkt der ursprünglichen Funktion.]
#only("2")[
#voiceover("Denke daran, dass die Ableitung an jedem Punkt die Steigung der Tangente an die ursprüngliche Funktion an diesem Punkt angibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Um die Ableitung von $f(x) = x^n$ zu finden, verwende die Potenzregel: $f'(x) = n ⋅ x^(n-1)$]
#v(20pt)
#only("2-")[- Für $f(x) = x^5$, $f'(x) = 5 ⋅ x^4$ 🎉]
#only("1")[
#voiceover("Zusammenfassend: Um die Ableitung einer Potenzfunktion f von x gleich x hoch n zu finden, verwenden wir die Potenzregel: f Strich von x gleich n mal x hoch n minus 1.")
]  
#only("2")[
#voiceover("Für die spezifische Funktion f von x gleich x hoch 5 ist die Ableitung f Strich von x gleich 5 mal x hoch 4. Gut gemacht!")
]
]