#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#slide()[
#text(size: 30pt, weight: "bold")[(Streng) Monoton]
#v(40pt)
#only("1-")[Monoton steigend:]
#only("2-")[- $f(x_1) ≤ f(x_2)$ für $x_1 < x_2$]
#only("3-")[Streng monoton steigend:]
#only("4-")[- $f(x_1) < f(x_2)$ für $x_1 < x_2$]
#only("1")[
#voiceover("Erinnern wir uns: Eine Funktion ist monoton steigend, wenn für zwei Stellen x1 und x2 mit x1 kleiner x2 gilt: f von x1 ist kleiner oder gleich f von x2.")
]
#only("2")[
#voiceover("Das heißt, die Funktionswerte können gleich sein, solange die Funktion nicht fällt.")
]
#only("3")[
#voiceover("Eine Funktion ist dagegen streng monoton steigend, wenn für zwei Stellen x1 und x2 mit x1 kleiner x2 gilt: f von x1 ist echt kleiner als f von x2.")
]
#only("4")[
#voiceover("Das heißt, die Funktionswerte dürfen nie gleich sein. Die Funktion muss immer echt steigen.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 1: $f(x) = x$]
#v(40pt)
#only("1-")[$f(x) = x$]
#only("1")[#voiceover("Betrachten wir als erstes Beispiel die Funktion f von x gleich x.")]
#v(10pt)
#only("2-")[$f'(x) = 1$]
#only("2")[#voiceover("Die Ableitung von x ist 1.")]
#v(10pt)

#only("3-")[$1 > 0$ für alle $x$]
#only("3")[#voiceover("1 ist immer echt größer als null, für alle x.")]
#v(10pt)
#only("4-")[#text(weight: "bold")[⇒ $f(x)$ ist streng monoton steigend]]
#only("4")[#voiceover("Daher ist f von x gleich x streng monoton steigend.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 2: $f(x) = x^3$]

#v(40pt)
#only("1-")[$f(x) = x^3$]
#only("1")[#voiceover("Als zweites Beispiel schauen wir uns die Funktion f von x gleich x hoch drei an.")]
#v(10pt)
#only("2-")[$f'(x) = 3x^2$]

#only("2")[#voiceover("Die Ableitung von x hoch drei ist drei x quadrat.")]
#v(10pt)
#only("3-")[$3x^2 ≥ 0$ für alle $x$]
#only("3")[#voiceover("Drei x quadrat ist größer oder gleich null für alle x.")]
#v(10pt)
#only("4-")[$3x^2 = 0$ für $x = 0$]
#only("4")[#voiceover("Aber Achtung: Drei x quadrat ist gleich null für x gleich null.")]
#v(10pt)

#only("5-")[#text(weight: "bold")[⇒ $f(x)$ ist monoton, aber nicht streng monoton steigend]]
#only("5")[#voiceover("Daher ist f von x gleich x hoch drei zwar monoton steigend, aber nicht streng monoton steigend, da die Ableitung an einer Stelle, nämlich bei x gleich null, nicht echt größer als null ist.")]
]
#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1")[
#voiceover("Schauen wir uns den Unterschied zwischen monoton steigend und streng monoton steigend anhand zweier Funktionen an.")
]
#v(40pt)
#only("1-")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
def f1(x):
  return np.maximum(0, x)
def f2(x):
  return 0.5*x
x = np.linspace(-3, 3, 400)
y1 = f1(x)
y2 = f2(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='red', label='$f(x) = max(0, x)$')
plt.plot(x, y2, color='blue', label='$f(x) = 0.5x$')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt)
)
]
#v(40pt)
#only("2-")[- Rot: $f(x) = max(0, x)$, monoton steigend]
#only("3-")[- Blau: $f(x) = 0.5x$, streng monoton steigend]
#only("2")[
#voiceover("Die rote Funktion, f von x gleich Maximum von 0 und x, ist monoton steigend. Sie steigt zwar, bleibt aber für negative x konstant bei 0.")
]
#only("3")[
#voiceover("Die blaue Funktion, f von x gleich 0,5 mal x, ist dagegen streng monoton steigend. Sie steigt für alle x echt an.")
]
]