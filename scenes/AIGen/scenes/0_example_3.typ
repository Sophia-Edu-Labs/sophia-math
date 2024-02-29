#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
#slide()[

#only("1")[
  #voiceover("Willkommen zur Aufgabe, bei der wir die Tangente an eine gegebene Funktion im Punkt P finden. Die Funktion lautet")
]
Berechne die Tangente von
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 3x^2 + 4 $]]
#only("2")[
  #voiceover("f von x gleich x hoch drei minus drei x Quadrat plus vier. Unsere Aufgabe ist es, die Gleichung der Tangente im Punkt P, der bei x gleich zwei liegt, zu bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Beginnen wir mit dem Prozess, indem wir zunächst die erste Ableitung von f berechnen, um die Steigung der Tangente im Punkt P zu ermitteln.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- 1. Ableitung berechnen]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der 1. Ableitung]
#v(40pt)
#only("1-")[$f(x) = x^3 - 3x^2 + 4$]
#only("1")[#voiceover("Wir beginnen mit unserer Funktion f von x gleich x hoch drei minus drei x Quadrat plus vier.")]
#v(10pt)
#only("2")[#voiceover("Um die Steigung der Tangente zu berechnen, müssen wir die erste Ableitung der Funktion finden. Dies tun wir, indem wir jede Komponente der Funktion ableiten.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Ableiten]]]
#only("3")[#voiceover("Die Ableitung von x hoch drei ist drei x Quadrat, die Ableitung von minus drei x Quadrat ist minus sechs x, und die Ableitung der Konstante vier verschwindet. Damit erhalten wir als Ableitung")]
#v(10pt)
#only("4-")[$f'(x) = 3x^2 - 6x$]
#only("4")[#voiceover("f Strich von x gleich drei x Quadrat minus sechs x. Das ist die Steigung der Tangente an jedem Punkt auf dem Graphen von f.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Der Punkt P und die Steigung]
#v(40pt)
#only("1")[$f'(2) = 3*2^2 - 6*2$]
#only("1")[#voiceover("Jetzt setzen wir x gleich zwei in die Ableitung ein, um die Steigung der Tangente im Punkt P zu berechnen. Das ist")]
#v(10pt)
#only("2-")[$ = 12 - 12$]
#only("2")[#voiceover("gleich zwölf minus zwölf, was null ergibt.")]
#v(10pt)
#only("3")[$m = 0$]
#only("3")[#voiceover("Die Steigung der Tangente bei P ist also null. Das bedeutet, dass die Tangente horizontal sein wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gleichung der Tangente]
#v(40pt)
#only("1")[#voiceover("Zur Erinnerung, die Gleichung einer Tangente in der Form y = mx + b kann gefunden werden, indem man m, die Steigung, und einen Punkt, durch den die Tangente geht, kennt.")]
#v(10pt)
#only("2-")[$f(2) = 2^3 - 3*2^2 + 4$]
#only("2")[#voiceover("Um b zu finden, setzen wir x und f(x) in die Gleichung ein. Wir berechnen zunächst f von zwei.")]
#v(10pt)
#only("3-")[$ = 8 - 12 + 4$]
#only("3")[#voiceover("Das ergibt acht minus zwölf plus vier, also null.")]
#v(10pt)
#only("4")[$y = 0x + b$]
#only("4")[#voiceover("Da die Steigung m gleich null ist, vereinfacht sich die Gleichung der Tangente zu y gleich b. Und da f von zwei auch null ist, ist b gleich null.")]
#v(10pt)
#only("5")[$y = 0$]
#only("5")[#voiceover("Daher ist die Gleichung unserer Tangente einfach y gleich null. Das bedeutet, die Tangente ist die x-Achse selbst.")]
]