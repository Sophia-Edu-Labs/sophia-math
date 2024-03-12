#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Das ist leider falsch. Bestimmen wir gemeinsam die Ableitung")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[#text()[$ f(x) = 1/3 x^3 - cos(x) $]]
#only("2")[
  #voiceover("der Funktion f von x gleich ein Drittel x hoch drei minus den Kosinus von x.")
]
]

#slide()[
#only("1")[
  #voiceover("Um die Ableitung zu finden, nutzen wir die Linearität der Ableitung und leiten die Elemente einzeln ab.")
]
#only("2")[
  #voiceover("Außerdem erinnern wir uns an die Ableitungsregeln für Potenzen und trigonometrische Funktionen. Also los...")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Linearität der Ableitung]
    #only("2-")[- Ableitungsregeln]

]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 1/3 x^3 - cos(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich ein Drittel mal x hoch drei minus der Kosinus von x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Ableitung]]]
#only("3")[#voiceover("Die Potenzregel der Differentiation besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus eins) ist.")]
#v(10pt)
#only("4-")[$f'(x) = x^2$]#only("5-")[$ + sin(x)$]
#only("4")[#voiceover("Das Anwenden der Potenzregel auf ein Drittel x hoch drei ergibt also x quadrat. ...")]
#only("5")[#voiceover("Und die Ableitung von minus Kosinus von x ist der Sinus von x. Also ist die Ableitung unserer Funktion f von x gleich x hoch zwei plus Sinus von x.")]
]