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
    $f(x) = x^3 ln(x)$
  ]

  #only("2-")[
    $f(x) = underbrace(x^3)_u dot underbrace(ln(x))_v$
  ]

  #only("3-")[
    $f'(x) = u'v + uv'$
  ]

  #only("4-")[
    $f'(x) = (3x^2) dot ln(x) + x^3 dot (1/x)$
  ]

  #only("5-")[
    $f'(x) = 3x^2 ln(x) + x^2$
  ]

  #only("6-")[
    $f'(1) = 3(1)^2 ln(1) + 1^2 = 0 + 1 = 1$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x hoch drei mal dem natürlichen Logarithmus von x. Um die Produktregel anzuwenden, identifizieren wir u als x hoch drei und v als ln von x.")
  ]

  #only("3")[
    #voiceover("Die Produktregel besagt, dass die Ableitung eines Produkts gleich u Strich mal v plus u mal v Strich ist.")
  ]

  #only("4")[
    #voiceover("Nun finden wir u Strich und v Strich. Die Ableitung von x hoch drei ist 3 x quadrat, und die Ableitung von ln von x ist 1 durch x.")
  ]

  #only("5")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir 3 x quadrat mal ln von x plus x hoch drei mal 1 durch x. Wenn wir den zweiten Term vereinfachen, erhalten wir 3 x quadrat ln von x plus x quadrat.")
  ]

  #only("6")[
    #voiceover("Schließlich, um f Strich von 1 zu finden, setzen wir x gleich 1 in unsere Ableitung ein. Der natürliche Logarithmus von 1 ist 0, also wird der erste Term zu 0. Der zweite Term ist einfach 1 quadrat, was 1 ist. Daher ist f Strich von 1 gleich 1.")
  ]
]