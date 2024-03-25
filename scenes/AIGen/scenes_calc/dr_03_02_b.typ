#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("2-")[#text()[$ f(x) = sqrt(|x|) + 1/(x-2) $]]
#v(60pt)
#only("3-")[#text(size: 30pt, weight: "bold")[Ansatz]]
#v(40pt)
#only("4-")[- Grenzwerte für $x -> -infinity$]
#only("5-")[- Grenzwerte für $x -> infinity$]
#only("6-")[- Grenzwerte für $x -> 2^-$ und $x -> 2^+$]
#only("7-")[- Wertebereich von $f(x)$]
#only("1")[
#voiceover("Das ist leider falsch. Suchen wir gemeinsam den Definitionsbereich")
]
#only("2")[
#voiceover("der Funktion f von x gleich Wurzel aus Betrag von x plus eins durch x minus 2.")
]
#only("3")[
#voiceover("Um den Wertebereich zu finden, betrachten wir die Grenzwerte der Funktion für verschiedene Werte von x.")
]
#only("4")[
#voiceover("Zuerst untersuchen wir die Grenzwerte für x gegen minus unendlich,")
]
#only("5")[
#voiceover("und für x gegen plus unendlich.")
]
#only("6")[
#voiceover("Dann untersuchen wir die Grenzwerte für x gegen 2 von links und von rechts.")
]
#only("7")[
#voiceover("Aus diesen Informationen leiten wir dann den Wertebereich von f ab.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#align(center)[$f(x)=sqrt(|x|)+1/(x-2)$]
#v(40pt)
#only("2-")[- $limits(lim)_(x-> -infinity)sqrt(|x|)=infinity$]
#only("3-")[- $limits(lim)_(x-> -infinity)1/(x-2)=0$]
#only("4-")[- $limits(lim)_(x-> -infinity)f(x)=infinity$]
#v(30pt)
#only("5-")[- $limits(lim)_(x->infinity)sqrt(|x|)=infinity$]
#only("6-")[- $limits(lim)_(x->infinity)1/(x-2)=0$]
#only("7-")[- $limits(lim)_(x->infinity)f(x)=infinity$]
#only("1")[#voiceover("Beginnen wir mit den Grenzwerten für x gegen minus unendlich und plus unendlich.")]
#only("2")[#voiceover("Für x gegen minus unendlich geht die Wurzel aus dem Betrag von x gegen plus unendlich.")]
#only("3")[#voiceover("Und eins durch x minus 2 geht gegen null.")]
#only("4")[#voiceover("Also geht f für x gegen minus unendlich gegen plus unendlich plus null, also gegen plus unendlich.")]
#only("5")[#voiceover("Für x gegen plus unendlich geht die Wurzel aus dem Betrag von x ebenfalls gegen plus unendlich.")]
#only("6")[#voiceover("Und eins durch x minus 2 geht wieder gegen null.")]
#only("7")[#voiceover("Also geht f für x gegen plus unendlich auch gegen plus unendlich plus null, also gegen plus unendlich.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#align(center)[$f(x)=sqrt(|x|)+1/(x-2)$]
#v(40pt)
#only("2-")[- $limits(lim)_(x-> 2^-)sqrt(|x|)=sqrt(2)$]
#only("3-")[- $limits(lim)_(x-> 2^-)1/(x-2)=-infinity$]
#only("4-")[- $limits(lim)_(x-> 2^-)f(x)=-infinity$]
#v(30pt)
#only("5-")[- $limits(lim)_(x-> 2^+)sqrt(|x|)=sqrt(2)$]
#only("6-")[- $limits(lim)_(x-> 2^+)1/(x-2)=infinity$]
#only("7-")[- $limits(lim)_(x-> 2^+)f(x)=infinity$]
#only("1")[#voiceover("Nun betrachten wir die Grenzwerte für x gegen 2 von links und von rechts.")]
#only("2")[#voiceover("Für x gegen 2 von links geht die Wurzel aus dem Betrag von x gegen Wurzel aus 2.")]
#only("3")[#voiceover("Und eins durch x minus 2 geht gegen minus unendlich.")]
#only("4")[#voiceover("Also geht f für x gegen 2 von links gegen minus unendlich.")]
#only("5")[#voiceover("Für x gegen 2 von rechts geht die Wurzel aus dem Betrag von x wieder gegen Wurzel aus 2.")]
#only("6")[#voiceover("Und eins durch x minus 2 geht gegen plus unendlich.")]
#only("7")[#voiceover("Also geht f für x gegen 2 von rechts gegen plus unendlich.")]
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
    return np.sqrt(np.abs(x)) + 1/(x-2)

# Generate x values with a gap around x = 2 to avoid values too close to it
x_left = np.linspace(-5, 1.999, 200)
x_right = np.linspace(2.001, 5, 200)

# Calculate y values
y_left = f(x_left)
y_right = f(x_right)

plt.figure(figsize=(8, 6))

plt.xlim(-5, 5)
plt.ylim(-5, 10)
plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')

plt.plot(x_left, y_left, color='blue')
plt.plot(x_right, y_right, color='blue')

plt.show()
```,
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("Hier seht ihr den Graphen der Funktion Wurzel aus Betrag von x plus eins durch x minus 2. Wie wir gesehen haben, geht die Funktion für x gegen minus unendlich und x gegen plus unendlich gegen plus unendlich. Für x gegen 2 von links geht sie gegen minus unendlich und für x gegen 2 von rechts gegen plus unendlich.")
]

#v(40pt)

#only("3-")[
Wertebereich: $(-infinity, infinity)$
]

#only("3")[
#voiceover("Der Wertebereich von f ist also das Intervall von minus unendlich bis plus unendlich, das heißt alle reellen Zahlen.")
]

]