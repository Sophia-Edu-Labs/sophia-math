#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel und Produktregel kombinieren]
  #v(40pt)

  #only("-1")[
    $f(x) = x sin(x^2)$
  ]

  #only("2-")[
    - Produktregel: $(u v)' = u' v + u v'$
  ]

  #only("3-")[
    - Setze $u = x$ und $v = sin(x^2)$
  ]

  #only("4-")[
    - $u' = 1$
  ]

  #only("5-")[
    - $v' = cos(x^2) \cdot (x^2)'$ (Kettenregel)
  ]

  #only("1")[
    #voiceover("Keine Sorge, wir schauen uns die Lösung Schritt für Schritt an. Wir beginnen mit der Funktion f von x gleich x mal Sinus von x Quadrat.")
  ]

  #only("2")[
    #voiceover("Um dies zu differenzieren, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]

  #only("3")[
    #voiceover("In unserem Fall setzen wir u gleich x und v gleich Sinus von x Quadrat.")
  ]

  #only("4")[
    #voiceover("Die Ableitung von u, also x, ist einfach 1.")
  ]

  #only("5")[
    #voiceover("Für v Strich müssen wir die Kettenregel verwenden. Die Ableitung von Sinus von x Quadrat ist Kosinus von x Quadrat mal der Ableitung von x Quadrat.")
  ]
]
```

### Slide 2
```typst

#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel und Produktregel kombinieren]
  #v(40pt)

  #only("6-")[
    - $(x^2)' = 2x$
  ]

  #only("7-")[
    - $v' = cos(x^2) \cdot 2x$
  ]

  #only("8-")[
    $f'(x) = 1 \cdot sin(x^2) + x \cdot (2x cos(x^2))$
  ]

  #only("9-")[
    $f'(x) = sin(x^2) + 2x^2 cos(x^2)$
  ]

  #only("10-")[
    $f'(1) = sin(1) + 2 cos(1)$
  ]

  #only("6")[
    #voiceover("Die Ableitung von x Quadrat ist 2x.")
  ]

  #only("7")[
    #voiceover("Also ist v Strich gleich Kosinus von x Quadrat mal 2x.")
  ]

  #only("8")[
    #voiceover("Nun wenden wir die Produktregel an. F Strich von x ist gleich u Strich mal v, also 1 mal Sinus von x Quadrat, plus u mal v Strich, also x mal 2x Kosinus von x Quadrat.")
  ]

  #only("9")[
    #voiceover("Wenn wir das vereinfachen, erhalten wir f Strich von x gleich Sinus von x Quadrat plus 2 x Quadrat Kosinus von x Quadrat.")
  ]

  #only("10")[
    #voiceover("Schließlich, um f Strich von 1 zu finden, setzen wir x gleich 1. Das ergibt Sinus von 1 plus 2 Kosinus von 1. Und das ist unsere endgültige Antwort!")
  ]
]