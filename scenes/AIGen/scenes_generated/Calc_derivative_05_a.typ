#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  // #only("1")[
  //   #voiceover("Richtig, klasse.")
  // ]
  #only("1")[
    #voiceover("Hi, Timothy hier. Üben wir mal eine Mathe Aufgabe.")
  ]
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[
    #text()[$ f(x) = 1/2 x^2 + "ln"(x) $]
  ]
  #only("2")[
    #voiceover("Wir haben die Funktion f von x gleich ein halb mal x Quadrat plus der natürliche Logarithmus von x.")
  ]
  // #only("2")[
  //   #voiceover("Wir haben ja die Funktion f von x gleich ein halb mal x Quadrat plus der natürliche Logarithmus von x.")
  // ]
]

#slide()[
  #only("1")[
    #voiceover("Um die Ableitung zu finden, nutzen wir die Linearität der Ableitung, sodass wir jeden Term einzeln ableiten.")
  ]
  #only("2")[
    #voiceover("Für die Terme verwenden wir sowohl die Potenzregel, ...")
  ]
  #only("3")[
    #voiceover(" als auch die Ableitungsregel des natürlichen Logarithmus.")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
    #only("1-")[- Linearität der Ableitung]
    #only("2-")[- Potenzregel]
    #only("3-")[- Ableitung des Logarithmus]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)
  #only("1-")[$f(x) = 1/2 x^2 + "ln"(x)$]
  #only("1")[
    #voiceover("Beginnen wir mit der Funktion f von x gleich ein halb mal x Quadrat plus der natürliche Logarithmus von x.")
  ]
  #v(10pt)
  #only("2")[#voiceover("Nun leiten wir jedes Glied der Funktion einzeln nach x ab.")]
  #v(10pt)
  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Schrittweise Ableitung]]
  ]
  #only("3")[
    #voiceover("Die Potenzregel der Differentiation sagt uns, dass die Ableitung von x hoch n gleich n mal x hoch (n minus eins) ist.")
  ]
  #v(10pt)
  #only("4-")[
    $f'(x) = x$
  ]
  #only("4")[
    #voiceover("Die Ableitung von ein halb mal x Quadrat ist also gleich x.")
  ]
  #only("5-")[
    $+ 1/x$
  ]
  #only("5")[
    #voiceover("Und die Ableitung des natürlichen Logarithmus von x ist 1 geteilt durch x.")
  ]
  // #only("6")[
  //   #voiceover("Zusammengesetzt ergibt sich die Ableitung der Funktion als x plus 1 geteilt durch x.")
  // ]  
  #only("6")[
    #voiceover("Zusammengesetzt ergibt sich die Ableitung der Funktion als x plus 1 geteilt durch x. So, das wars schon, toll! Vergiss nicht, Sophia zu folgen für mehr Mathe Videos. Machts gut!")
  ]
  #v(10pt)
  #only("6-")[
    #text()[$arrow.r$ Ergebnis: $f'(x) = x + 1/x$]
  ]
]