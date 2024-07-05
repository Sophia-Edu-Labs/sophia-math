#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Konstante Multiplikationsregel]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = 5x^3$
  ]
  #v(20pt)

  #only("2-")[
    Schritt 1: Identifiziere die konstante Multiplikation
    - Konstante: 5
    - Funktion: $x^3$
  ]
  #v(20pt)

  #only("3-")[
    Schritt 2: Wende die Regel an
    $(c dot g(x))' = c dot g'(x)$
  ]
  #v(20pt)

  #only("4-")[
    Schritt 3: Differenziere $x^3$
    $(x^3)' = 3x^2$
  ]
  #v(20pt)

  #only("5-")[
    Schritt 4: Multipliziere mit der Konstante
    $f'(x) = 5 dot 3x^2 = 15x^2$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die Ableitung korrekt gefunden. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir zu diesem Ergebnis gekommen sind.")
  ]

  #only("2")[
    #voiceover("Zuerst identifizieren wir die Teile unserer Funktion. Wir haben f von x gleich 5 mal x hoch 3. Hier ist 5 unsere konstante Multiplikation, und x hoch 3 ist die Funktion, die wir differenzieren.")
  ]

  #only("3")[
    #voiceover("Nun wenden wir die konstante Multiplikationsregel an. Diese Regel besagt, dass die Ableitung einer Konstante mal einer Funktion gleich der Konstante mal der Ableitung der Funktion ist.")
  ]

  #only("4")[
    #voiceover("Als nächstes differenzieren wir x hoch 3. Die Ableitung von x hoch n ist n mal x hoch n minus 1. Also ist die Ableitung von x hoch 3 gleich 3 mal x hoch 2.")
  ]

  #only("5")[
    #voiceover("Schließlich multiplizieren wir unsere Konstante 5 mit der gerade gefundenen Ableitung, 3 x hoch 2. Das ergibt 15 x hoch 2, was unser Endergebnis ist. Also ist f Strich von x gleich 15 x hoch 2.")
  ]
]