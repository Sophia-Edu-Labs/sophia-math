#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzel 🌱]
#v(40pt)
#only("1-")[- Wert, der, wenn er auf die Potenz $n$ erhoben wird, die ursprüngliche Zahl ergibt]
#v(20pt)
#only("2-")[- Beispiel: $root(3,8) = 2$, weil $2^3 = 8$]
#v(20pt)
#only("3-")[- Notation: $root(n,a)$, wobei $n$ die Wurzel und $a$ die Zahl ist]
#only("1")[
#voiceover("Die n-te Wurzel einer Zahl ist ein Wert, der, wenn er auf die Potenz n erhoben wird, die ursprüngliche Zahl ergibt.")
]
#only("2")[
#voiceover("Zum Beispiel ist die dritte Wurzel von 8, geschrieben als die 3. Wurzel von 8, gleich 2, weil 2 hoch 3 gleich 8 ist.")
]
#only("3")[
#voiceover("Im Allgemeinen schreiben wir die n-te Wurzel einer Zahl a als 'root' mit n als erstem Argument und a als zweitem Argument. Hierbei ist n die Wurzel und a die ursprüngliche Zahl.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 8, 100)
y = x**(1/3)

plt.figure(figsize=(6, 6))
plt.plot(x, y, linewidth=2, label='$y=root(3,x)$')
plt.plot(2, 2, 'ro', markersize=10, label='(2, 2)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend(prop={'size': 14})
plt.title('Graph von $y=root(3,x)$', fontsize=16)
plt.xlabel('x', fontsize=14)
plt.ylabel('y', fontsize=14)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm der dritten Wurzelfunktion, y gleich der dritten Wurzel von x. Der Punkt (2, 2) ist hervorgehoben und zeigt, dass die dritte Wurzel von 8 gleich 2 ist, da 2 hoch 3 gleich 8 ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- n-te Wurzel: Wert, der, wenn er auf die Potenz $n$ erhoben wird, die ursprüngliche Zahl ergibt]
#v(20pt)
#only("2-")[- Notation: $root(n,a)$, wobei $n$ die Wurzel und $a$ die Zahl ist]
#v(20pt)
#only("3-")[- Beispiel: $root(3,8) = 2$, weil $2^3 = 8$]
#only("1")[
#voiceover("Zusammenfassend ist die n-te Wurzel einer Zahl ein Wert, der, wenn er auf die Potenz n erhoben wird, die ursprüngliche Zahl ergibt.")
]
#only("2")[
#voiceover("Wir schreiben dies mit der 'root'-Notation, wobei n das erste Argument ist, das die Wurzel darstellt, und a das zweite Argument, das die ursprüngliche Zahl darstellt.")
]
#only("3")[
#voiceover("Ein wichtiges Beispiel ist die dritte Wurzel von 8, die gleich 2 ist, weil 2 hoch 3 gleich 8 ist.")
]
]