#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("-1")[
    $f(x) = x^2 e^x$
  ]

  #only("2-")[
    $f(x) = $ #text(fill: blue)[$x^2$] #text(fill: red)[$e^x$]
  ]

  #v(20pt)

  #only("3-")[
    Sei $u = x^2$ und $v = e^x$
  ]

  #v(20pt)

  #only("4-")[
    $f'(x) = $ #text(fill: blue)[$u'v$] #text(fill: red)[$ + uv'$]
  ]

  #v(20pt)

  #only("5-")[
    $f'(x) = $ #text(fill: blue)[$(2x)e^x$] #text(fill: red)[$ + x^2(e^x)$]
  ]

  #v(20pt)

  #only("6-")[
    $f'(x) = 2x e^x + x^2 e^x$
  ]

  #v(20pt)

  #only("7-")[
    $f'(1) = 2(1) e^1 + 1^2 e^1 = 2e + e = 3e$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x Quadrat mal e hoch x.")
  ]

  #only("2")[
    #voiceover("Um die Produktregel anzuwenden, müssen wir zwei Funktionen identifizieren, die multipliziert werden. Hier haben wir x Quadrat in Blau und e hoch x in Rot.")
  ]

  #only("3")[
    #voiceover("Nennen wir x Quadrat 'u' und e hoch x 'v'. Das macht es einfacher, die Produktregel anzuwenden.")
  ]

  #only("4")[
    #voiceover("Die Produktregel besagt, dass die Ableitung eines Produkts gleich der Ableitung der ersten Funktion mal der zweiten Funktion plus die erste Funktion mal der Ableitung der zweiten Funktion ist. In Symbolen ist das u Strich v plus u v Strich.")
  ]

  #only("5")[
    #voiceover("Nun berechnen wir jeden Teil. Die Ableitung von x Quadrat ist 2x, also ist u Strich v gleich 2x mal e hoch x, in Blau gezeigt. Für u v Strich haben wir x Quadrat mal die Ableitung von e hoch x, was einfach e hoch x ist, in Rot gezeigt.")
  ]

  #only("6")[
    #voiceover("Wenn wir diese Teile kombinieren, erhalten wir f Strich von x gleich 2x e hoch x plus x Quadrat e hoch x.")
  ]

  #only("7")[
    #voiceover("Schließlich, um f Strich von 1 zu finden, setzen wir x gleich 1 in unsere Ableitung ein. Das ergibt 2 mal 1 mal e hoch 1 plus 1 Quadrat mal e hoch 1, was sich zu 2e plus e vereinfacht, also 3e.")
  ]
]