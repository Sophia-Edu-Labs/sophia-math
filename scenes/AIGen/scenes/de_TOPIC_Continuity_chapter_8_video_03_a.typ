#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Rechtsseitiger Grenzwert]

#v(40pt)

#only("2-")[$ f(x) = 1/x $]
// Die Funktion f(x) wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir betrachten die Funktion f von x gleich eins durch x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]

#v(40pt)

#only("1-")[- Grenzwert berechnen, wenn sich $x$ von rechts (0+) 0 nähert 🔍]
// Die Vorgehensweise zur Berechnung des Grenzwerts von rechts wird ab Folie 1 gezeigt

#only("1")[
#voiceover("Um den rechtsseitigen Grenzwert zu finden, müssen wir den Grenzwert berechnen, wenn sich x von rechts 0 nähert, bezeichnet als null plus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[$ lim_(x->0^+) 1/x $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Werte nahe 0 von rechts einsetzen]]]

#v(10pt)

#only("3-")[$ lim_(x->0^+) 1/x = 1/0.1 = 10 $]

#v(10pt)

#only("4-")[$ lim_(x->0^+) 1/x = 1/0.01 = 100 $]

#v(10pt)

#only("5-")[$ lim_(x->0^+) 1/x = 1/0.001 = 1000 $]

#v(10pt)

#only("6-")[#align(center)[#text(fill:aqua)[⇓ Wenn sich $x$ von rechts 0 nähert, wächst $1/x$ unbegrenzt]]]

#v(10pt)

#only("7-")[$ lim_(x->0^+) 1/x = infinity $]

#only("1")[#voiceover("Wir beginnen mit dem Schreiben des Grenzwertausdrucks, dem Grenzwert von eins durch x, wenn sich x von rechts 0 nähert.")]

#only("2")[#voiceover("Um dies zu berechnen, setzen wir Werte für x ein, die nahe bei null, aber größer als null sind, und sich von der rechten Seite nähern.")]

#only("3")[#voiceover("Wenn wir x gleich null Komma eins einsetzen, erhalten wir eins durch null Komma eins, was zehn ergibt.")]

#only("4")[#voiceover("Wenn wir näher an null herankommen, sagen wir x gleich null Komma null eins, erhalten wir eins durch null Komma null eins, was hundert ergibt.")]

#only("5")[#voiceover("Noch näher, mit x gleich null Komma null null eins, erhalten wir eins durch null Komma null null eins, was tausend ergibt.")]

#only("6")[#voiceover("Wir beobachten, dass, wenn sich x von rechts immer näher an null nähert, eins durch x immer größer und größer wird, ohne eine Grenze.")]

#only("7")[#voiceover("Daher ist der rechtsseitige Grenzwert von eins durch x, wenn sich x null nähert, unendlich.")]
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

x = np.linspace(-2, 2, 1000)
y = 1/x

fig, ax = plt.subplots(figsize=(8, 6))

ax.plot(x, y, color='blue', linewidth=2, label='f(x) = 1/x')
ax.axvline(x=0, color='black', linewidth=1, linestyle='--')
ax.axhline(y=0, color='black', linewidth=1, linestyle='--')

ax.set_xlim(-2, 2)
ax.set_ylim(-10, 10)

ax.set_xlabel('x', fontsize=14)
ax.set_ylabel('f(x)', fontsize=14)

ax.grid(True, linestyle='--', linewidth=0.5)

ax.legend(fontsize=12)

ax.annotate('Rechtsseitiger Grenzwert: $infinity$', xy=(0.1, 8), xytext=(0.5, 9), 
            arrowprops=dict(facecolor='red', shrink=0.05), fontsize=14, color='red')

plt.title('Graph von f(x) = 1/x', fontsize=16)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Der Graph der Funktion 1/x wird mit matplotlib visualisiert, wobei das Verhalten des rechtsseitigen Grenzwerts in Rot annotiert ist.

#only("1")[
#voiceover("Hier ist eine Visualisierung der Funktion eins durch x. Beachte, wie der Graph gegen unendlich geht, wenn sich x von rechts 0 nähert, was unseren berechneten rechtsseitigen Grenzwert bestätigt.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Rechtsseitiger Grenzwert: Grenzwert, wenn sich $x$ von rechts (0+) nähert 👉]

#v(20pt)

#only("2-")[- Für $f(x) = 1/x$, wenn $x->0^+$, wächst $f(x$ unbegrenzt 📈]

#v(20pt)

#only("3-")[- $lim_(x->0^+) 1/x = infinity$ ♾]

#only("1")[
#voiceover("Zusammenfassend betrachtet der rechtsseitige Grenzwert den Grenzwert, wenn sich x von der rechten Seite einem Wert nähert.")
]

#only("2")[
#voiceover("Für die Funktion eins durch x, wenn sich x von rechts 0 nähert, wächst die Funktion unbegrenzt.")
]

#only("3")[
#voiceover("Daher ist der rechtsseitige Grenzwert von eins durch x, wenn sich x null nähert, unendlich.")
]
]