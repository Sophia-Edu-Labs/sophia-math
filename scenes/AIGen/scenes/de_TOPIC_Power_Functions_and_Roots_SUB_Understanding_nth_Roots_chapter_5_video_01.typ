#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gleichungen mit n-ten Wurzeln lösen]
#v(40pt)
#only("1-")[Um eine Gleichung mit einer n-ten Wurzel, wie $root(n, x) = a$ zu lösen:]
#v(20pt)
#only("2-")[1. Isoliere die n-te Wurzel auf einer Seite der Gleichung]
#v(20pt)
#only("3-")[2. Erhebe beide Seiten der Gleichung auf die Potenz $n$]
#v(20pt)
#only("4-")[3. Vereinfache und löse nach der Variablen auf]
#only("1")[
#voiceover("Um eine Gleichung mit einer n-ten Wurzel zu lösen, wie zum Beispiel die n-te Wurzel von x gleich a, können wir folgende Schritte befolgen:")
]
#only("2")[
#voiceover("Zuerst isoliere die n-te Wurzel auf einer Seite der Gleichung.")
]
#only("3")[
#voiceover("Dann erhebe beide Seiten der Gleichung auf die Potenz n. Dies wird die n-te Wurzel eliminieren.")
]
#only("4")[
#voiceover("Schließlich vereinfache die Gleichung und löse nach der Variablen auf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Lass uns die Gleichung $root(3, x - 1) = 4$ lösen]
#v(20pt)
#only("2-")[1. Die n-te Wurzel ist bereits isoliert: $root(3, x - 1) = 4$]
#v(20pt)
#only("3-")[2. Erhebe beide Seiten auf die Potenz 3: $(root(3, x - 1))^3 = 4^3$]
#v(20pt)
#only("4-")[3. Vereinfache: $x - 1 = 64$, dann löse: $x = 65$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir wollen die Gleichung 'die dritte Wurzel von x minus 1 gleich 4' lösen.")
]
#only("2")[
#voiceover("Die dritte Wurzel ist bereits auf der linken Seite der Gleichung isoliert.")
]
#only("3")[
#voiceover("Als nächstes erheben wir beide Seiten der Gleichung auf die Potenz 3. Dies ergibt 'die dritte Wurzel von x minus 1, alles hoch 3, gleich 4 hoch 3'.")
]
#only("4")[
#voiceover("Wenn wir die linke Seite vereinfachen, erhalten wir 'x minus 1 gleich 64'. Addieren wir 1 auf beiden Seiten, finden wir, dass x gleich 65 ist.")
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

x = np.linspace(0, 70, 100)
y1 = np.cbrt(x - 1)
y2 = np.full_like(x, 4)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, label=r'$\sqrt[3]{x-1}$')
ax.plot(x, y2, label=r'$y=4$')
ax.plot(65, 4, 'ro', markersize=10, label='Lösung: (65, 4)')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph von $\sqrt[3]{x-1} = 4$')
ax.legend()
ax.grid()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das die Gleichung visualisiert. Die blaue Kurve stellt die dritte Wurzel von x minus 1 dar, und die orange Linie stellt y gleich 4 dar. Der Punkt, an dem sich diese beiden schneiden, markiert in Rot, ist die Lösung der Gleichung: x gleich 65.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[Um $root(n, x) = a$ zu lösen:]
#v(20pt)
#only("2-")[1. Isoliere die n-te Wurzel 🎯]
#v(20pt)
#only("3-")[2. Erhebe beide Seiten auf die Potenz $n$ 📈]
#v(20pt)
#only("4-")[3. Vereinfache und löse nach $x$ auf ✔]
#only("1")[
#voiceover("Zusammenfassend, um eine Gleichung mit einer n-ten Wurzel gleich einer Zahl zu lösen:")
]
#only("2")[
#voiceover("Zuerst isoliere die n-te Wurzel auf einer Seite.")
]
#only("3")[
#voiceover("Dann erhebe beide Seiten auf die Potenz n.")
]
#only("4")[
#voiceover("Schließlich vereinfache die Gleichung und löse nach der Variablen auf. Diese Technik erlaubt es uns, die n-te Wurzel zu eliminieren und die Gleichung zu lösen.")
]
]