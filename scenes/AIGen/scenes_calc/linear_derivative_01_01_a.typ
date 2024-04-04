#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
#only("1")[
  #voiceover("Super, das hast du richtig erkannt! Gehen wir gemeinsam Schritt für Schritt durch die Lösung.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^7 $]]
#only("2")[
  #voiceover("Betrachten wir die Funktion f von x gleich x hoch sieben.")
]
]

#slide()[
#only("1")[
  #voiceover("Um die Ableitung zu finden, nutzen wir die Potenzregel.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Potenzregel]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^7$]
#only("1")[#voiceover("Wir beginnen also  mit der Funktion f von x gleich x hoch sieben.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Potenzregel]]]
#only("2")[#voiceover("Die Potenzregel der Differentiation besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus eins) ist.")]
#v(10pt)
#only("3-")[$f'(x) = 7x^6$]
#only("3")[#voiceover("Die Ableitung von x hoch sieben ist also sieben mal x hoch sechs.")]
]
