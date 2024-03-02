#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[

#only("1")[
#voiceover("Unsere Aufgabe ist es, die Extremstellen der Funktion zu finden und zu bestimmen, welcher Art sie sind. Die Funktion lautet")
]
Extremstellen untersuchen
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 6x^2 + 9x + 1 $]]
#only("2")[
#voiceover("f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins.")
]
]

#slide()[
#only("1")[
#voiceover("Zur Lösung dieser Aufgabe berechnen wir zunächst die erste Ableitung der Funktion. Anschließend setzen wir die Ableitung gleich null, um die kritischen Punkte zu finden. ")
]
#only("2")[
#voiceover("Dann überprüfen wir die kritischen Punkte mit der zweiten Ableitung, um die Art der Extremstellen zu bestimmen. Beginnen wir also mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Este Ableitung für kritische Punkte]
#only("2-")[- Zweite Ableitung für Art der Extremstellen]
]

#slide()[
#text(size: 30pt, weight: "bold")[1. Ableitung]
#v(40pt)
#only("1-")[$f(x) = x^3 - 6x^2 + 9x + 1$]
#only("1")[#voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins. Davon wollen wir die erste Ableitung berechnen. ")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Potenzregel]]]
#only("2")[#voiceover("Die Funktion ist eine Summe von Potenzen, daher wenden wir die Potenzregel an. ")]
#v(10pt)
#only("3-")[$f'(x) = 3x^2 - 12x + 9$]
#only("3")[#voiceover("Die Ableitung von x hoch drei ist drei x Quadrat, die Ableitung von minus sechs x Quadrat ist minus zwölf x und die Ableitung von neun x ist neun. Die Ableitung von eins ist null, also fällt sie weg.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kritische Punkte]
#v(40pt)
$f'(x) = 3x^2 - 12x + 9$
#v(10pt)
#only("1-")[#align(center)[#text(fill:aqua)[⇓ Gleich Null setzen]]]
#only("1")[#voiceover("Um die kritischen Punkte zu finden, setzen wir dann die erste Ableitung gleich null.")]
#v(10pt)
#only("2-")[$0 = 3x^2 - 12x + 9$]
#only("2")[#voiceover("Dann erhalten wir Null gleich drei x Quadrat minus zwölf x plus neun.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Quadratische Gleichung]]]
#only("3")[#voiceover("Das ist eine normale quadratische Gleichung, die wir zum Beispiel mit der Mitternachtsformel lösen können.")]
#v(10pt)
#only("4-")[$x = 1, x = 3$]
#only("4")[#voiceover("Dann erhalten wir x gleich eins und x gleich drei als Nullstellen, und somit auch als kritische Punkte.")]
#only("4")[#voiceover("Jetzt wo wir die kritischen Punkte gefunden haben, setzen wir diese in die zweite Ableitung ein, um die Art der kritischen Punkte zu ermitteln.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[2. Ableitung]
#v(40pt)
$f'(x) = 3x^2 - 12x + 9$
#v(10pt)
#only("1-")[#align(center)[#text(fill:aqua)[⇓ Ableiten]]]
#only("1")[#voiceover("Beginnen wir also damit, die Ableitung erneut abzuleiten.")]

#only("2-")[$f''(x) = 6x - 12$]
#only("2")[#voiceover("Die Ableitung von drei x Quadrat ist sechs x, und die Ableitung von minus zwölf x ist minus zwölf. Die Ableitung von neun ist null, also fällt sie weg. Daher erhalten wir sechs x minus zwölf als zweite Ableitung.")]

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kritische Punkte einsetzen]]]
#only("3")[#voiceover("Als nächstes setzen wir die kritischen Punkte in die zweite Ableitung ein, um die Art der Extremstellen zu bestimmen.")]
#v(10pt)
#only("4-")[$f''(1) = -6$	→ Maximum]
#only("4")[#voiceover("Für x gleich eins ist die zweite Ableitung negativ. Das bedeutet, dass wir für x gleich eins ein lokales Maximum haben. ")]
#only("5-")[$f''(3) = 6$ 	→ Minimum]
#only("5")[#voiceover("Und für x gleich drei ist die zweite Ableitung positiv. Das bedeutet, dass wir für x gleich drei ein lokales Minimum haben.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
  #voiceover("Lasst uns die Extremstellen nun visualisieren.")
]
#v(60pt)
#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Defining the function
def f(x):
    return x**3 - 6*x**2 + 9*x + 1

# Generating x values
x = np.linspace(0, 5, 400)

# Generating y values
y = f(x)

# Plotting the function
plt.figure(figsize=(8, 6))
plt.plot(x, y)

# Marking the extrema
plt.scatter([1, 3], [f(1), f(3)], color='red', s=100)  # Points of extrema

plt.grid(True)

# Showing the plot
plt.show()
    ```, 
  width: 360pt),
caption: [$f(x)=x^3 - 6x^2 + 9x + 1$] 
)
]
]
]
#only("2")[
  #voiceover("Hier seht ihr den Graphen der Funktion x hoch drei Minus sechs x Quadrat plus neun x plus eins. Die roten Punkte markieren die Extremstellen, die wir gefunden haben.")
]

#v(40pt)
#only("3-")[
- Lokales Maximum bei  $x = 1$
]
#only("3")[
#voiceover("Wir haben also ein lokales Maximum bei x gleich eins gefunden, ..." )
]
#only("4-")[
- Lokales Minimum bei  $x = 3$
]
#only("4")[
#voiceover("... und ein lokales Minimum bei x gleich drei.")
]
]