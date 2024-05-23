#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, so dass für alle $n \geq N$, $a_n$ \_\_\_\_\_ ist.]
#v(40pt)
#only("-1")[a) kleiner als $M$]#only("2-")[#text(fill:red)[a) kleiner als $M$]]
#v(10pt)
#only("-2")[b) größer als $M$]#only("3-")[#text(fill:green)[b) größer als $M$]]
#v(10pt)
#only("-3")[c) gleich $M$]#only("4-")[#text(fill:red)[c) gleich $M$]]
#v(10pt)
#only("-4")[d) ungleich $M$]#only("5-")[#text(fill:red)[d) ungleich $M$]]
#only("1")[
#voiceover("Das ist in Ordnung! Lassen Sie uns die richtige Lösung überprüfen.")
]
#only("2")[
#voiceover("Option a) ist falsch. Wenn $a_n$ für alle $n \geq N$ kleiner als $M$ wäre, wäre die Folge nach oben durch $M$ beschränkt und würde nicht ins Unendliche divergieren.")
]
#only("3")[
#voiceover("Option b) ist korrekt. Wenn wir für jedes beliebig große $M$ ein $N$ finden können, so dass alle Terme $a_n$ mit $n \geq N$ größer als $M$ sind, dann muss die Folge ins Unendliche divergieren.")
]
#only("4")[
#voiceover("Option c) ist falsch. Wenn $a_n$ für alle $n \geq N$ gleich $M$ wäre, würde die Folge gegen $M$ konvergieren und nicht ins Unendliche divergieren.")
]
#only("5")[
#voiceover("Option d) ist falsch. Obwohl eine Folge, die ins Unendliche divergiert, sicherlich nicht für alle großen $n$ gleich einem festen $M$ ist, reicht diese Bedingung allein nicht aus, um die Divergenz ins Unendliche zu garantieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Lassen Sie uns dies anhand eines Beispiels verstehen. Betrachten Sie die Folge $a_n = n^2$.]
#v(20pt)
#only("2-")[🎯 Ziel: Zeigen Sie, dass für jedes $M > 0$ ein $N$ existiert, so dass $n^2 > M$ für alle $n \geq N$.]
#v(20pt)
#only("3-")[1️⃣ Sei $M > 0$ gegeben.]
#v(20pt)
#only("4-")[2️⃣ Wählen Sie $N > "sqrt"(M)$. Dann ist $N^2 > M$.]
#v(20pt)
#only("5-")[3️⃣ Für alle $n \geq N$ gilt $n \geq "sqrt"(M)$, also ist $n^2 \geq M$.]
#v(20pt)
#only("6-")[∴ $a_n = n^2$ divergiert ins Unendliche. ∎]

#only("1")[
#voiceover("Lassen Sie uns dieses Konzept anhand eines Beispiels verstehen. Betrachten Sie die Folge $a_n$, die gleich $n$ zum Quadrat ist.")
]
#only("2")[
#voiceover("Unser Ziel ist es zu zeigen, dass für jede positive reelle Zahl $M$ eine natürliche Zahl $N$ existiert, so dass $n$ zum Quadrat größer als $M$ für alle $n$ größer oder gleich $N$ ist.")
]
#only("3")[
#voiceover("Erstens, sei $M$ eine beliebige positive reelle Zahl.")
]
#only("4")[
#voiceover("Nun wählen Sie $N$ als eine beliebige ganze Zahl, die größer als die Quadratwurzel von $M$ ist. Dann ist $N$ zum Quadrat größer als $M$.")
]
#only("5")[
#voiceover("Für alle $n$, die größer oder gleich $N$ sind, haben wir $n$, das größer oder gleich der Quadratwurzel von $M$ ist, also ist $n$ zum Quadrat größer oder gleich $M$.")
]
#only("6")[
#voiceover("Daher divergiert die Folge $a_n$, die gleich $n$ zum Quadrat ist, ins Unendliche. Dies vervollständigt den Beweis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

M_values = [10, 100, 1000]  # Verschiedene M-Werte
colors = ['red', 'green', 'blue']  # Farben für jeden M-Wert

x = np.linspace(0, 50, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='black', label='$a_n = n^2$')

for M, color in zip(M_values, colors):
    N = int(np.ceil(np.sqrt(M)))
    plt.axhline(y=M, color=color, linestyle='--', label=f'M = {M}')
    plt.axvline(x=N, color=color, linestyle=':', label=f'N = {N}')
    plt.scatter(N, M, color=color, marker='o')

plt.xlabel('n')
plt.ylabel('$a_n$')
plt.title('Divergenz von $a_n = n^2$ ins Unendliche')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#v(40pt)
#only("1-")[- Die schwarze Kurve stellt $a_n = n^2$ dar.]
#v(20pt)
#only("2-")[- Die horizontalen Linien stellen verschiedene $M$-Werte dar.]
#v(20pt)
#only("3-")[- Die vertikalen Linien stellen die entsprechenden $N$-Werte dar.]
#v(20pt)
#only("4-")[- Für jedes $M$ gilt $a_n > M$ für alle $n \geq N$.]

#only("1")[
#voiceover("Dieses Diagramm visualisiert die Divergenz der Folge $a_n$, die gleich $n$ zum Quadrat ist, ins Unendliche.")
]
#only("2")[
#voiceover("Die horizontalen Linien stellen verschiedene Werte von $M$ dar.")
]
#only("3")[
#voiceover("Die vertikalen Linien stellen die entsprechenden $N$-Werte dar, die als die kleinste ganze Zahl gewählt wurden, die größer als die Quadratwurzel von $M$ ist.")
]
#only("4")[
#voiceover("Wie Sie sehen können, ist die Folge $a_n$ für jedes $M$ größer als $M$ für alle $n$, die größer oder gleich dem entsprechenden $N$ sind. Dies veranschaulicht die Divergenz ins Unendliche.")
]
]