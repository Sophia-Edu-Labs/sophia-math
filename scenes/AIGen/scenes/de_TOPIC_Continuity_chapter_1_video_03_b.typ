#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Linker Grenzwert]
#v(40pt)
#only("1-")[- Finde $lim_(x -> 2^-) (x^2)$]
#v(20pt)
#only("2-")[- Ansatz: Werte substituieren, die sich von links 2 nähern]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns trotzdem Schritt für Schritt sehen, wie wir das lösen können. Wir müssen den linken Grenzwert der Funktion f von x gleich x Quadrat bestimmen, wenn x sich 2 nähert.")
]
#only("2")[
#voiceover("Um den linken Grenzwert zu finden, substituieren wir Werte, die nahe bei 2, aber etwas kleiner sind.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[- Sei $x = 1.9$]
#v(20pt)
#only("2-")[- $lim_(x -> 2^-) (x^2) = lim_(x -> 2^-) (1.9^2) = 3.61$]
#v(20pt)
#only("3-")[- Sei $x = 1.99$]
#v(20pt)  
#only("4-")[- $lim_(x -> 2^-) (x^2) = lim_(x -> 2^-) (1.99^2) = 3.9601$]
#only("1")[
#voiceover("Lass uns beginnen, indem wir x gleich 1.9 substituieren, was nahe bei 2, aber etwas kleiner ist.")
]
#only("2")[
#voiceover("Wenn wir 1.9 quadrieren, erhalten wir 3.61. Dies gibt uns eine Vorstellung davon, worauf der Grenzwert zusteuert.")
]
#only("3")[
#voiceover("Nun probieren wir einen noch näheren Wert, sagen wir x gleich 1.99.")
]
#only("4")[
#voiceover("Das Quadrieren von 1.99 ergibt 3.9601, was noch näher an dem liegt, was wir als Grenzwert erwarten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Der Grenzwert]
#v(40pt)
#only("1-")[- Wenn $x$ sich von links 2 nähert, nähert sich $x^2$ 4]
#v(20pt)
#only("2-")[- $lim_(x -> 2^-) (x^2) = 4$]
#only("1")[
#voiceover("Wenn wir weiterhin Werte von x wählen, die sich von der linken Seite 2 nähern, nähern sich die entsprechenden Werte von x Quadrat immer mehr 4.")
]
#only("2")[
#voiceover("Daher können wir schließen, dass der linke Grenzwert von x Quadrat, wenn x sich 2 nähert, gleich 4 ist.")
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

x = np.linspace(0, 3, 100)
y = x**2

plt.figure(figsize=(6, 6))
plt.plot(x, y, 'b-', linewidth=2, label='$f(x) = x^2$')
plt.scatter(2, 4, color='red', s=50, label='Grenzpunkt (2, 4)')

x_close = np.array([1.9, 1.99, 1.999])
y_close = x_close**2
plt.scatter(x_close, y_close, color='green', s=50, label='Annäherungspunkte')

plt.axvline(x=2, color='gray', linestyle='--', linewidth=1)
plt.axhline(y=4, color='gray', linestyle='--', linewidth=1)

plt.grid(True)
plt.xlabel('x')
plt.ylabel('f(x)')
plt.title('Linker Grenzwert von $f(x) = x^2$ bei $x \to 2$')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine visuelle Darstellung dessen, was wir gerade gemacht haben. Die blaue Kurve ist der Graph von f von x gleich x Quadrat. Der rote Punkt bei (2, 4) stellt den Grenzpunkt dar, dem wir uns nähern. Die grünen Punkte sind die Punkte, die den substituierten x-Werten entsprechen und sich von links immer näher an den Grenzpunkt annähern.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Linker Grenzwert: Nähere dich dem Grenzwert von kleineren Werten als dem Grenzpunkt 👈]
#v(20pt)
#only("2-")[- Substituiere Werte nahe dem Grenzpunkt, um den Trend zu erkennen 🔍]
#v(20pt)  
#only("3-")[- Der Grenzwert ist der Wert, dem sich die Funktion nähert, nicht unbedingt der Wert, den sie erreicht 🎯]
#only("1")[
#voiceover("Zusammenfassend: Wenn du einen linken Grenzwert bestimmst, nähere dich dem Grenzpunkt von kleineren Werten aus.")
]
#only("2")[
#voiceover("Substituiere Werte, die dem Grenzpunkt immer näher kommen, um den Trend zu beobachten.")
]
#only("3")[
#voiceover("Denke daran, der Grenzwert ist der Wert, dem sich die Funktion nähert, nicht unbedingt der Wert, den sie am Grenzpunkt erreicht.")
]
]