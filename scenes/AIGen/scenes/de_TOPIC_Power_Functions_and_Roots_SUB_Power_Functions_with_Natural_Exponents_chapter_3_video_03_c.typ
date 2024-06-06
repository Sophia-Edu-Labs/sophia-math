#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten, wenn $x \arrow infinity$]
#v(40pt)
#only("1-")[- Betrachte $f(x) = x^6$ wenn $x \arrow infinity$]
#only("2-")[- Erinnere dich: $f(x) = x^n \arrow infinity$ wenn $x \arrow infinity$ für $n > 0$]
#only("3-")[- Hier: $n = 6 > 0$, also $f(x) = x^6 \arrow infinity$ wenn $x \arrow infinity$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns sehen, warum. Wir wollen das Verhalten der Funktion f von x gleich x hoch 6 bestimmen, wenn x gegen unendlich geht.")
]
#only("2")[
#voiceover("Erinnere dich daran, dass für Potenzfunktionen der Form f von x gleich x hoch n, wobei n eine positive Zahl ist, die Funktion gegen unendlich geht, wenn x gegen unendlich geht.")
]
#only("3")[
#voiceover("In unserem Fall ist n gleich 6, was tatsächlich größer als 0 ist. Daher wird f von x gleich x hoch 6 gegen unendlich gehen, wenn x gegen unendlich geht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y = x**6

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^6$')
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.title('Verhalten von $f(x) = x^6$ wenn $x \arrow infinity$', fontsize=16)
plt.grid(True)
plt.legend(fontsize=12)

plt.xlim(0, 5)
plt.ylim(0, 20000)

plt.annotate('$f(x) \arrow infinity$ wenn $x \arrow infinity$', xy=(4, 10000), xytext=(2, 15000),
             arrowprops=dict(facecolor='black', shrink=0.05), fontsize=12)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Wir können dieses Verhalten in einem Diagramm visualisieren. Wenn x immer größer wird und sich nach rechts auf der x-Achse bewegt, wachsen die Funktionswerte von f von x gleich x hoch 6 sehr schnell und streben gegen unendlich.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Für Potenzfunktionen $f(x) = x^n$ mit $n > 0$:]
#only("2-")[$\quad$- Wenn $x \arrow infinity$, dann $f(x) \arrow infinity$]
#only("3-")[$\quad$- Wenn $x \arrow -infinity$, dann $f(x) \arrow infinity$ wenn $n$ gerade ist]
#only("4-")[$\quad$- Wenn $x \arrow -infinity$, dann $f(x) \arrow -infinity$ wenn $n$ ungerade ist]
#only("1")[
#voiceover("Zusammenfassend, für Potenzfunktionen der Form f von x gleich x hoch n, wobei n eine positive Zahl ist:")
]
#only("2")[
#voiceover("Wenn x gegen positiv unendlich geht, wird auch f von x gegen unendlich gehen.")
]
#only("3")[
#voiceover("Wenn x gegen negativ unendlich geht, wird f von x gegen unendlich gehen, wenn n gerade ist,")
]
#only("4")[
#voiceover("und f von x wird gegen negativ unendlich gehen, wenn n ungerade ist.")
]
]