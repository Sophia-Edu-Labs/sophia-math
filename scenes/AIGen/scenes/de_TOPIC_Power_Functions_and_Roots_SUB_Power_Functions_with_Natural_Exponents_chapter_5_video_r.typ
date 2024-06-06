#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ableitungen von Potenzfunktionen 🎓]

#only("1-")[- Potenzfunktion: $f(x) = x^n$]
#only("2-")[- Ableitung: $f'(x) = n x^(n-1)$]

#only("1")[
#voiceover("Lass uns die Ableitungen von Potenzfunktionen wiederholen. Eine Potenzfunktion ist eine Funktion der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]

#only("2")[
#voiceover("Die Ableitung einer solchen Potenzfunktion ist gegeben durch f Strich von x gleich n mal x hoch n minus 1.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📝]

#only("1-")[Betrachte $f(x) = x^3$]

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y = x**3

plt.figure(figsize=(6, 4))
plt.plot(x, y, 'b-', label='$f(x) = x^3$')
plt.legend(fontsize=12)
plt.grid(True)
plt.xlim(-2, 2)
plt.ylim(-8, 8)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Graph von $f(x) = x^3$')

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Lass uns ein Beispiel betrachten. Angenommen, wir haben die Funktion f von x gleich x hoch 3.")
]

#only("2")[
#voiceover("Hier ist der Graph dieser Funktion.")
]

#only("3-")[Ableitung: $f'(x) = 3 x^2$]

#only("3")[
#voiceover("Um die Ableitung zu finden, wenden wir die gerade gelernte Regel an. Die Ableitung f Strich von x ist gleich 3 mal x Quadrat.")
]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte 🔑]

#only("1-")[- Potenzfunktion: $f(x) = x^n$ 📈]
#only("2-")[- Ableitungsregel: $f'(x) = n x^(n-1)$ 📏]
#only("3-")[- Beispiel: Wenn $f(x) = x^3$, dann $f'(x) = 3 x^2$ ✅]

#only("1")[
#voiceover("Zusammenfassend ist eine Potenzfunktion eine Funktion der Form f von x gleich x hoch n.")
]

#only("2")[
#voiceover("Die Ableitung einer solchen Funktion ist durch die Regel f Strich von x gleich n mal x hoch n minus 1 gegeben.")
]

#only("3")[
#voiceover("Zum Beispiel, wenn f von x gleich x hoch 3 ist, dann ist die Ableitung f Strich von x gleich 3 mal x Quadrat.")
]

]