#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[

Berechne die Tangente von
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 3x^2 + 4 $]]
#v(40pt)
#only("3-")[an der Stelle $x=2$]  

#only("1")[
#voiceover("Wir haben ja die Funktion")
]
#only("2")[  
#voiceover("f von x gleich x hoch drei minus drei x Quadrat plus vier und suchen die Gleichung der Tangente am Graphen von f")
]
#only("3")[
#voiceover("im Punkt x gleich 2.")  
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- 1. Ableitung berechnen]
#only("2-")[- Geradengleichung bestimmen]

#only("1")[
#voiceover("Wir beginnen damit, die erste Ableitung von f zu berechnen, um die Steigung der Tangente im Punkt P zu ermitteln.")
]
#only("2")[  
#voiceover("Dann verwenden wir die Steigung und den gegebenen Punkt, um die Gleichung der Tangente zu finden.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Ableitung]
#v(40pt)
#align(center)[#only("1-")[$f(x)=$] #only("1,3-")[#text(fill:black)[$x^3$]]#only("2")[#text(fill:red)[$x^3$]] #only("1-2,4-")[#text(fill:black)[$-3x^2$]]#only("3")[#text(fill:red)[$-3x^2$]] #only("1-3,5-")[#text(fill:black)[$+4$]]#only("4")[#text(fill:red)[$+4$]]]
#v(10pt)  
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ableiten]]]
#v(10pt)
#only("2-")[#align(center)[$f'(x)=3x^2$#uncover("3-")[$-6x$]]]
#v(40pt)  
#only("6-")[#text(size: 30pt, weight: "bold")[Steigung im Punkt P]]
#v(40pt)
#only("6-")[#align(center)[$f'(2) = 3 dot 2^2 - 6 dot 2$]]
#v(10pt)
#only("7-")[#align(center)[$ = 12 - 12=0$]]
#v(10pt)
#only("8-")[#align(center)[$-> m = 0$]]

#only("1")[#voiceover("Wir beginnen mit unserer Funktion f von x gleich x hoch drei minus drei x Quadrat plus vier und berechnen die Ableitung, indem wir jede Komponente der Funktion ableiten.")]
#only("2")[#voiceover("Die Ableitung von x hoch drei ist drei x Quadrat.")]  
#only("3")[#voiceover("Die Ableitung von minus drei x Quadrat ist minus sechs x,")]
#only("4")[#voiceover("und die Ableitung der Konstante vier verschwindet. Damit erhalten wir als Ableitung")]
#only("5")[#voiceover("f Strich von x gleich drei x Quadrat minus sechs x. Dieser Ausdruck gibt für jeden Wert von x an, was die Steigung der Tangente im Punkt x ist.")]
#only("6")[#voiceover("Also setzen wir x gleich zwei in die Ableitung ein, um die Steigung der Tangente im Punkt P zu berechnen. Das ist")]
#only("7")[#voiceover("gleich zwölf minus zwölf, was null ergibt.")]
#only("8")[#voiceover("Die Steigung der Tangente bei P ist also null. Das bedeutet, dass die Tangente horizontal sein wird.")]
]

#slide()[ 

#text(size: 30pt, weight: "bold")[Gleichung der Tangente]
#v(20pt)
#only("1")[#align(center)[$y=m x+b$]]#only("2-3")[#align(center)[$y = 0x + b$]]#only("4-")[#align(center)[$y = 0x + 0$]]
#v(20pt)
#only("3-")[#align(center)[$f(2) = 2^3 - 3 dot 2^2 + 4$]]
#v(10pt)  
#only("4-")[#align(center)[$= 8 - 12 + 4$]]
#v(10pt)
#only("5-")[$ ->y = 0 $]



#only("1")[#voiceover("Zur Erinnerung, die Gleichung einer Tangente in der Form y = mx + b kann gefunden werden, indem man m, die Steigung, und einen Punkt, durch den die Tangente geht, kennt. Wir wissen ja bereits, dass")]  
#only("2")[#voiceover("m, also die Steigung der Tangente im Punkt P gleich null ist. Da die Steigung null ist, vereinfacht sich die Gleichung der Tangente zu y gleich b. Also muss die Tangente y gleich b den Punkt P enthalten. Wir setzen also x gleich zwei in die Funktion f ein, um den y-Wert zu finden.")]
#only("3")[#voiceover(" F von zwei ergibt acht minus zwölf plus vier, also null.")]
#only("4")[#voiceover("Also ist b ebenfalls Null, und")]
#only("5")[#voiceover("die Gleichung unserer Tangente ist einfach y gleich null. Das bedeutet, die Tangente ist die x-Achse selbst.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
#voiceover("Lass uns die Funktion und die Tangente nun visualisieren.")
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
    return x**3 - 3*x**2 + 4

x = np.linspace(-2, 4, 100)
y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x)')
plt.plot([-2, 4], [0, 0], color='red', linestyle='--', label='Tangente')
plt.scatter([2], [0], color='black', label='P(2, 0)')
plt.scatter([2], [0], color='red') # Adding red dot at x=2, y=0

plt.xlim(-2, 4)
plt.ylim(-5, 10)

plt.grid(True)
plt.legend()

plt.show()
```, 
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("Hier seht ihr den Graphen der Funktion f in blau. Die rote Linie ist die Tangente im Punkt P mit den Koordinaten (2, 0). Wie wir herausgefunden haben, ist die Tangente in diesem Punkt die x-Achse selbst, da die Steigung null ist.") 
]

]

