#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("2-")[#text()[$ f(x) = e^x + 1/x^2 $]]
#v(60pt)
#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz]]
#v(40pt)
#only("4-")[- Grenzwerte für $x -> -infinity$]
#only("5-")[- Grenzwerte für $x -> infinity$]
#only("6-")[- Grenzwerte für $x -> 0^-$ und $x -> 0^+$]
#only("7-")[- Wertebereich von $f(x)$]
#only("1")[
#voiceover("Das stimmt leider nicht. Wir suchen ja den Wertebereich")
]
#only("2")[
#voiceover("der Funktion f von x gleich e hoch x plus eins durch x Quadrat.")
]
#only("3")[
#voiceover("Um den Wertebereich zu finden, betrachten wir die Grenzwerte der Funktion für verschiedene Werte von x.")
]
#only("4")[
#voiceover("Zuerst untersuchen wir die Grenzwerte für x gegen minus unendlich,")
]
#only("4")[
#voiceover("und für x gegen plus unendlich.")
]
#only("5")[
#voiceover("Dann untersuchen wir die Grenzwerte für x gegen 0 von links und von rechts.")
]
#only("7")[
#voiceover("Aus diesen Informationen leiten wir dann den Wertebereich von f ab.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#align(center)[$f(x)=e^x+1/x^2$]
#v(40pt)
#only("2-")[- $limits(lim)_(x-> -infinity)e^x=0$]
#only("3-")[- $limits(lim)_(x-> -infinity)1/x^2=0$]
#only("4-")[- $limits(lim)_(x-> -infinity)f(x)=0$]
#v(30pt)
#only("5-")[- $limits(lim)_(x->infinity)e^x=infinity$]
#only("6-")[- $limits(lim)_(x->infinity)1/x^2=0$]
#only("7-")[- $limits(lim)_(x->infinity)f(x)=infinity$]
#only("1")[#voiceover("Beginnen wir mit den Grenzwerten für x gegen minus unendlich und plus unendlich.")]
#only("2")[#voiceover("Für x gegen minus unendlich geht e hoch x gegen null.")]
#only("3")[#voiceover("Und eins durch x quadrat geht auch gegen null.")]
#only("4")[#voiceover("Also geht f für x gegen minus unendlich gegen null plus null, also gegen null.")]
#only("5")[#voiceover("Für x gegen plus unendlich geht e hoch x gegen plus unendlich.")]
#only("6")[#voiceover("Und eins durch x quadrat geht gegen null.")]
#only("7")[#voiceover("Also geht f für x gegen plus unendlich gegen plus unendlich plus null, also gegen plus unendlich.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#align(center)[$f(x)=e^x+1/x^2$]
#v(40pt)
#only("2-")[- $limits(lim)_(x-> 0^-)e^x=1$]
#only("3-")[- $limits(lim)_(x-> 0^-)1/x^2=infinity$]
#only("4-")[- $limits(lim)_(x-> 0^-)f(x)=infinity$]
#v(30pt)
#only("5-")[- $limits(lim)_(x-> 0^+)e^x=1$]
#only("6-")[- $limits(lim)_(x-> 0^+)1/x^2=infinity$]
#only("7-")[- $limits(lim)_(x-> 0^+)f(x)=infinity$]
#only("1")[#voiceover("Nun betrachten wir die Grenzwerte für x gegen 0 von links und von rechts.")]
#only("2")[#voiceover("Für x gegen 0 von links geht e hoch x gegen eins.")]
#only("3")[#voiceover("Und eins durch x quadrat geht gegen plus unendlich.")]
#only("4")[#voiceover("Also geht f für x gegen 0 von links gegen plus unendlich.")]
#only("5")[#voiceover("Für x gegen 0 von rechts geht e hoch x ebenfalls gegen eins.")]
#only("6")[#voiceover("Und eins durch x quadrat geht wieder gegen plus unendlich.")]
#only("7")[#voiceover("Also geht f auch für x gegen 0 von rechts gegen plus unendlich.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("1")[
#voiceover("Fassen wir die Ergebnisse zusammen und visualisieren die Funktion.")
]
#v(60pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def f(x):
    return np.exp(x) + 1/x**2
x = np.linspace(-5, 5, 400)
y = f(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y)
plt.xlim(-5, 5)
plt.ylim(0, 10)
plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("Hier seht ihr den Graphen der Funktion e hoch x plus eins durch x Quadrat.")
]

#v(40pt)

#only("3-")[
Wertebereich: $[0, infinity)$
]

#only("3")[
#voiceover("Der Wertebereich von f ist also das Intervall von 0 bis plus unendlich, das heißt alle reellen Zahlen größer oder gleich 0.")]

]]