#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[

  #voiceover("Fast richtig! Gehen wir gemeinsam Schritt für Schritt durch die Lösung.")

]

Gesucht: Ableitung der Funktion

#v(40pt)

#only("2-")[#text()[$ f(x) = 0.5x^4 - 2x^2 + 3x - 2 $]]

#only("2")[

  #voiceover("Betrachten wir die Funktion f von x gleich null komma fünf x hoch vier minus zwei mal x Quadrat plus drei mal x minus zwei.")

]

]

#slide()[

#only("1")[

  #voiceover("Um die Ableitung zu finden, nutzen wir die Linearität der Ableitung, also leiten wir alle Summanden einzeln ab. Für die einzelnen Ableitungen")

]

#only("2")[

  #voiceover("verwenden wir jeweils die Potenzregel. Legen wir also los.")

]

#text(size: 30pt, weight: "bold")[Ansatz]

#v(40pt)

    #only("1-")[- Linearität der Ableitung]

    #only("2-")[- Potenzregel]

]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]

#v(40pt)

#only("1-")[$f(x) = 0.5x^4 - 2x^2 + 3x - 2$]

#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich null komma fünf x hoch vier minus zwei mal x Quadrat plus drei mal x minus zwei.")]

#v(10pt)

#only("2")[#voiceover("Um die Ableitung zu bestimmen, differenzieren wir jedes Glied der Funktion einzeln nach x.")]

#v(10pt)

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Potenzregel]]]

#only("3")[#voiceover("Die Potenzregel der Differentiation besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus eins) ist.")]

#v(10pt)

#only("4-")[$f'(x) = 2x^3$]

#only("5-")[$ - 4x$]

#only("6-")[$ + 3$]

#only("4")[#voiceover("Die Ableitung von einhalb x hoch vier ist also zwei mal x hoch drei.")]

#only("5")[#voiceover("Die Ableitung von minus zwei mal x Quadrat ist minus vier mal x.")]

#only("6")[#voiceover("Die Ableitung von drei mal x ist drei. Und Konstante minus zwei verschwindet, da ihre Ableitung null ist. Also ist die Ableitung von f von x gleich zwei mal x hoch drei minus vier mal x plus drei.")]

]