#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns rekapitulieren, was wir über n-te Wurzeln negativer Zahlen gelernt haben.")
]
#text(size: 30pt, weight: "bold")[n-te Wurzeln negativer Zahlen 📏]
// Der Titel "n-te Wurzeln negativer Zahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Wir haben gesehen, dass die n-te Wurzel einer negativen Zahl reell ist, wenn n ungerade ist.")
]
#only("2-")[
- Reell, wenn n ungerade ist 🔢
]
// Der Aufzählungspunkt "Reell, wenn n ungerade ist" wird ab Folie 2 angezeigt
#v(20pt)
#only("3")[
#voiceover("Zum Beispiel ist die dritte Wurzel von minus 27 gleich minus 3, was eine reelle Zahl ist.")
]
#only("3-")[
- Beispiel: $root(3, -27) = -3 ∈ ℝ$
]
// Das Beispiel "root(3, -27) = -3" wird ab Folie 3 angezeigt
#v(40pt)
#only("4")[
#voiceover("Andererseits haben wir gelernt, dass die n-te Wurzel einer negativen Zahl nicht reell ist, wenn n gerade ist.")
]
#only("4-")[
- Nicht reell, wenn n gerade ist ❌
]
// Der Aufzählungspunkt "Nicht reell, wenn n gerade ist" wird ab Folie 4 angezeigt
#v(20pt)
#only("5")[
#voiceover("Zum Beispiel ist die vierte Wurzel von minus 16 keine reelle Zahl.")
]
#only("5-")[
- Beispiel: $root(4, -16) ∉ ℝ$
]
// Das Beispiel "root(4, -16) ist nicht in ℝ" wird ab Folie 5 angezeigt
]

#slide()[
#only("1")[
#voiceover("Lass uns dieses Konzept visualisieren.")
]
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
// Der Titel "Visualisierung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-10, 10, 1000)

plt.figure(figsize=(8, 6))

plt.plot(x, x**3, label='x^3')
plt.plot(x, x**4, label='x^4')

plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)

plt.xlim(-10, 10)
plt.ylim(-1000, 1000)

plt.legend(loc='upper left', fontsize=12)
plt.grid(True)

plt.title('Odd and Even Power Functions')
plt.xlabel('x')
plt.ylabel('y')

plt.show()
```,
width: 360pt),
)
]
]
]
// Die Abbildung zeigt die Graphen von x^3 und x^4. Diese Abbildung wird ab Folie 2 angezeigt.
#only("2")[
#voiceover("Hier sehen wir die Graphen von x hoch 3 und x hoch 4.")
]
#only("3")[
#voiceover("Beachte, dass x hoch 3, eine ungerade Potenz, negative Werte für negatives x annimmt. Das bedeutet, dass die dritte Wurzel einer negativen Zahl reell ist.")
]
#only("4")[
#voiceover("Im Gegensatz dazu ist x hoch 4, eine gerade Potenz, niemals negativ. Daher ist die vierte Wurzel einer negativen Zahl nicht reell.")
]
]

#slide()[
#only("1")[
#voiceover("Zusammenfassung:")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔍]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
- n-te Wurzel einer negativen Zahl ist reell, wenn n ungerade ist 🔢
]
// Der Aufzählungspunkt "n-te Wurzel einer negativen Zahl ist reell, wenn n ungerade ist" wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[
- Beispiel: $root(3, -27) = -3 ∈ ℝ$
]
// Das Beispiel "root(3, -27) = -3" wird ab Folie 3 angezeigt
#v(40pt)
#only("4-")[
- n-te Wurzel einer negativen Zahl ist nicht reell, wenn n gerade ist ❌
]
// Der Aufzählungspunkt "n-te Wurzel einer negativen Zahl ist nicht reell, wenn n gerade ist" wird ab Folie 4 angezeigt
#v(20pt)
#only("5-")[
- Beispiel: $root(4, -16) ∉ ℝ$
]
// Das Beispiel "root(4, -16) ist nicht in ℝ" wird ab Folie 5 angezeigt
#only("2")[
#voiceover("Die n-te Wurzel einer negativen Zahl ist reell, wenn n ungerade ist, wie die dritte Wurzel von minus 27, die minus 3 ist, eine reelle Zahl.")
]
#only("4")[
#voiceover("Aber die n-te Wurzel einer negativen Zahl ist nicht reell, wenn n gerade ist, wie die vierte Wurzel von minus 16, die keine reelle Zahl ist.")
]
]