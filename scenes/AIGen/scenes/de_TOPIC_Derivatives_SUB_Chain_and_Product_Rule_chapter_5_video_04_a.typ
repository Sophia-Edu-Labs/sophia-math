#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Lösung korrekt identifiziert. Lass uns die Schritte gemeinsam durchgehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[$ f(x) = (x^2 + 4x + 4)^3 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat plus 4x plus 4, alles hoch 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bestimmung der Komponenten]
  #v(40pt)

  #only("1-")[- Äußere Funktion: $ u^3 $]
  #v(20pt)
  #only("2-")[- Innere Funktion: $ u = x^2 + 4x + 4 $]

  #only("1")[
    #voiceover("Um die Kettenregel anzuwenden, müssen wir die äußere und die innere Funktion identifizieren. Die äußere Funktion ist u hoch 3,")
  ]

  #only("2")[
    #voiceover("und die innere Funktion u ist x Quadrat plus 4x plus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[$ f'(x) = 3u^2 dot (dif u)/(dif x) $]
  #v(20pt)
  #only("2-")[$ = 3(x^2 + 4x + 4)^2 dot (dif)/(dif x)(x^2 + 4x + 4) $]

  #only("1")[
    #voiceover("Jetzt wenden wir die Kettenregel an. Die Ableitung von f von x ist gleich 3 mal u Quadrat, multipliziert mit der Ableitung von u bezüglich x.")
  ]

  #only("2")[
    #voiceover("Wenn wir unsere innere Funktion zurück einsetzen, erhalten wir 3 mal x Quadrat plus 4x plus 4, alles im Quadrat, multipliziert mit der Ableitung von x Quadrat plus 4x plus 4 bezüglich x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung der inneren Funktion]
  #v(40pt)

  #only("1-")[$ (dif)/(dif x)(x^2 + 4x + 4) = 2x + 4 $]
  #v(20pt)
  #only("2-")[$ f'(x) = 3(x^2 + 4x + 4)^2 dot (2x + 4) $]

  #only("1")[
    #voiceover("Die Ableitung von x Quadrat plus 4x plus 4 ist 2x plus 4.")
  ]

  #only("2")[
    #voiceover("Wenn wir dies in unsere Gleichung zurück einsetzen, erhalten wir unsere endgültige Antwort: f Strich von x ist gleich 3 mal x Quadrat plus 4x plus 4, alles im Quadrat, multipliziert mit 2x plus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 3(x^2 + 4x + 4)^2 (2x + 4) $]

  #only("1")[
    #voiceover("Und da haben wir es! Das ist unsere endgültige Antwort. Die Ableitung von f von x ist gleich 3 mal x Quadrat plus 4x plus 4, alles im Quadrat, multipliziert mit 2x plus 4. Gut gemacht, dass Du dieses Problem gelöst hast!")
  ]
]