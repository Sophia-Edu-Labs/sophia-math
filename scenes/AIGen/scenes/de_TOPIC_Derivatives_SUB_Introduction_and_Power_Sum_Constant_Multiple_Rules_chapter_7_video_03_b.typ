#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Konstante Vielfache Regel]
  #v(40pt)

  #only("1-")[- Gegeben: $f(x) = 4x^4$]
  #v(20pt)
  #only("2-")[- Konstante Vielfache Regel: $dif/dif x (c dot f(x)) = c dot dif/dif x f(x)$]
  #v(20pt)
  #only("3-")[- $dif/dif x (4x^4) = 4 dot dif/dif x (x^4)$]
  #v(20pt)
  #only("4-")[- $dif/dif x (x^4) = 4x^3$]
  #v(20pt)
  #only("5-")[- $f'(x) = 4 dot 4x^3 = 16x^3$]
  #v(20pt)
  #only("6-")[- Bei $x = 2$: $f'(2) = 16 dot 2^3 = 16 dot 8 = 128$]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der gegebenen Funktion f von x gleich 4 mal x hoch 4.")
  ]

  #only("2")[
    #voiceover("Wir verwenden die Konstante Vielfache Regel, die besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]

  #only("3")[
    #voiceover("Angewendet auf unsere Funktion, können wir die Ableitung als 4 mal die Ableitung von x hoch 4 umschreiben.")
  ]

  #only("4")[
    #voiceover("Nun wissen wir, dass die Ableitung von x hoch 4 gleich 4 mal x hoch 3 ist.")
  ]

  #only("5")[
    #voiceover("Zusammengefasst erhalten wir, dass f Strich von x gleich 4 mal 4x hoch 3 ist, was sich zu 16x hoch 3 vereinfacht.")
  ]

  #only("6")[
    #voiceover("Schließlich werten wir dies bei x gleich 2 aus. Setzen wir 2 für x ein, erhalten wir 16 mal 2 hoch 3, was 16 mal 8 ergibt und uns unsere endgültige Antwort von 128 gibt.")
  ]
]