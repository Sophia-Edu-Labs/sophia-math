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
    $f(x) = (5x + 1)^3$
  ]

  #only("2-")[
    Setze $u = 5x + 1$
  ]

  #only("3-")[
    $f(x) = u^3$
  ]

  #only("4-")[
    $f'(x) = 3u^2 dot dif u/dif x$
  ]

  #only("5-")[
    $dif u/dif x = 5$
  ]

  #only("6-")[
    $f'(x) = 3(5x + 1)^2 dot 5$
  ]

  #only("7-")[
    $f'(x) = 3(5x + 1)^2 (5)$
  ]

  #only("8-")[
    $f'(2) = 3(5 dot 2 + 1)^2 (5)$
  ]

  #only("9-")[
    $f'(2) = 3(11)^2 (5) = 1815$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich fünf x plus eins, alles hoch drei.")
  ]

  #only("2")[
    #voiceover("Um die Kettenregel anzuwenden, setzen wir zuerst u gleich fünf x plus eins. Das wird unsere innere Funktion sein.")
  ]

  #only("3")[
    #voiceover("Jetzt können wir unsere ursprüngliche Funktion als f von x gleich u hoch drei umschreiben.")
  ]

  #only("4")[
    #voiceover("Wenden wir die Kettenregel an, erhalten wir f Strich von x gleich drei u Quadrat mal d u durch d x.")
  ]

  #only("5")[
    #voiceover("Die Ableitung von u bezüglich x ist einfach 5.")
  ]

  #only("6")[
    #voiceover("Setzen wir dies zurück in unsere Gleichung ein, erhalten wir f Strich von x gleich drei mal fünf x plus eins zum Quadrat, mal 5.")
  ]

  #only("7")[
    #voiceover("Das vereinfacht sich zu unserem endgültigen Ableitungsausdruck: f Strich von x gleich drei mal fünf x plus eins zum Quadrat, mal fünf.")
  ]

  #only("8")[
    #voiceover("Um f Strich von 2 zu finden, setzen wir x gleich 2 in unseren Ableitungsausdruck ein.")
  ]

  #only("9")[
    #voiceover("Das ergibt f Strich von 2 gleich drei mal elf zum Quadrat mal fünf, was 1815 ergibt. Und das ist unsere endgültige Antwort!")
  ]
]