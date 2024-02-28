#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  
  #slide()[

#only("1")[
  #voiceover("Die Aufgabe, die wir heute lösen werden, ist die Bestimmung einer Stammfunktion der Funktion")
]
Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 6x^2 + 3 $]]
#only("2")[
  #voiceover("f von x gleich x hoch drei minus sechs mal x Quadrat plus drei.")
]
]

#slide()[
#only("1")[
  #voiceover("Um eine Stammfunktion zu finden, nutzen wir die Grundintegrale und die Potenzregel der Integration.")
]
#only("2")[
  #voiceover("Lass uns mit dem Lösungsprozess beginnen!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Grundintegrale]
    #only("2-")[- Potenzregel der Integration]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^3 - 6x^2 + 3$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x hoch drei minus sechs mal x Quadrat plus drei.")]
#v(10pt)
#only("2")[#voiceover("Um eine Stammfunktion zu bestimmen, integrieren wir jedes Glied der Funktion einzeln nach x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Potenzregel]]]
#only("3")[#voiceover("Die Potenzregel der Integration besagt, dass die Integration von x hoch n gleich x hoch (n plus eins) geteilt durch (n plus eins) ist, solange n ungleich -1 ist.")]
#v(10pt)
#only("4-")[$F(x) = 1/4 x^4 - 2x^3 + 3x + C$]
#only("4")[#voiceover("Die Integration von x hoch drei ist ein Viertel mal x hoch vier. Die Integration von minus sechs mal x Quadrat ist minus zwei mal x hoch drei. Und die Integration von drei ist drei mal x. Plus die Integrationskonstante C.")]
#v(10pt)
#only("5")[#voiceover("Die Stammfunktion der gegebenen Funktion ist also ein Viertel mal x hoch vier minus zwei mal x hoch drei plus drei mal x plus C.")]
]



