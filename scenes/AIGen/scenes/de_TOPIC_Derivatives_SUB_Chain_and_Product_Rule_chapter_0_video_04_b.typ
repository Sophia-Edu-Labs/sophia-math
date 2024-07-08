#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("-1")[
    $f(x) = (2x + 3)^4$
  ]

  #only("2-")[
    Sei $u = 2x + 3$
  ]

  #only("3-")[
    Dann ist $f(x) = u^4$
  ]

  #only("4-")[
    $f'(x) = 4u^3 dot dif u/dif x$
  ]

  #only("5-")[
    $dif u/dif x = 2$
  ]

  #only("6-")[
    $f'(x) = 4(2x + 3)^3 dot 2$
  ]

  #only("7-")[
    $f'(x) = 4(2x + 3)^3 (2)$
  ]

  #only("8-")[
    $f'(1) = 4(2(1) + 3)^3 (2)$
  ]

  #only("9-")[
    $f'(1) = 4(5)^3 (2) = 1000$
  ]

  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung Schritt für Schritt mit der Kettenregel durch.")
  ]

  #only("2")[
    #voiceover("Zuerst identifizieren wir die innere Funktion. Hier ist u gleich 2x plus 3.")
  ]

  #only("3")[
    #voiceover("Das erlaubt uns, unsere ursprüngliche Funktion f von x als u hoch vier umzuschreiben.")
  ]

  #only("4")[
    #voiceover("Nun wenden wir die Kettenregel an. Die Ableitung von f bezüglich x ist gleich 4u hoch drei mal die Ableitung von u bezüglich x.")
  ]

  #only("5")[
    #voiceover("Die Ableitung von u bezüglich x ist einfach 2.")
  ]

  #only("6")[
    #voiceover("Setzen wir u gleich 2x plus 3 zurück, erhalten wir 4 mal 2x plus 3 hoch drei mal 2.")
  ]

  #only("7")[
    #voiceover("Das vereinfacht sich zu unserem endgültigen Ausdruck für f Strich von x.")
  ]

  #only("8")[
    #voiceover("Um f Strich von 1 zu finden, setzen wir x gleich 1 in unseren Ausdruck ein.")
  ]

  #only("9")[
    #voiceover("Vereinfacht ergibt das 4 mal 5 hoch drei mal 2, was 1000 ergibt. Und das ist unsere endgültige Antwort!")
  ]
]