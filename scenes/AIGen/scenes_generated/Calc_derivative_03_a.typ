#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #voiceover("Richtig, toll gemacht. Ermitteln wir also die Ableitung")
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[#text()[$ f(x) = 1/4 x^4 + sin(x) $]]
  #only("2")[  
    #voiceover("der Funktion f von x gleich ein Viertel x hoch vier plus der Sinus von x.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("Dafür verwenden wir zunächst die Linearität der Ableitung und leiten dann jedes Element der Funktion einzeln ab.")
  ]
  #only("2")[  
    #voiceover("Fürs Ableiten von x hoch vier verwenden wir die Potenzregel, ...")
  ]
  #only("3")[  
    #voiceover("und für den Sinus die Ableitung der Sinusfunktion.")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel ]
    #only("3-")[- Sinus-Ableiten]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)
  #only("1-")[$f(x) = 1/4 x^4 + sin(x)$]
  #only("1")[#voiceover("Wir beginnen also mit der gegebenen Funktion f von x gleich ein Viertel x hoch vier plus der Sinus von x.")]
  #v(10pt)
  #only("2")[#voiceover("Um die Ableitung zu bestimmen, differenzieren wir jedes Glied der Funktion einzeln nach x.")]
  #v(10pt)
  #only("3-")[#align(center)[#text(fill:aqua)[⇓ Ableitungsregeln]]]
  #only("3")[#voiceover("Gemäß der Potenzregel ist die Ableitung von x hoch n gleich n mal x hoch (n minus eins).")]
  #v(10pt)
  #only("4-")[$f'(x) = (1/4)  dot 4 x^3$]#only("5-")[$ + cos(x)$]
  #only("4")[#voiceover("Die Ableitung von ein Viertel x hoch vier ist also vier viertel, also ein mal x hoch drei.")]
  #only("5")[#voiceover("Und die Ableitung des Sinus von x ist der Kosinus von x. Also lautet die Ableitung der Funktion f von x ein mal x hoch drei plus der Kosinus von x.")]
]