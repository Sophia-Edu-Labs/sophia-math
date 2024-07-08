#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[- $f(x) = x sin(x)$]
  #v(20pt)
  #only("2-")[- Produktregel: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Sei $u = x$ und $v = sin(x)$]
  #v(20pt)
  #only("4-")[- $u' = 1$ und $v' = cos(x)$]
  #v(20pt)
  #only("5-")[- $f'(x) = 1 dot sin(x) + x dot cos(x)$]
  #v(20pt)
  #only("6-")[- $f'(x) = sin(x) + x cos(x)$]
  #v(20pt)
  #only("7-")[- $f'(pi) = sin(pi) + pi cos(pi)$]
  #v(20pt)
  #only("8-")[- $f'(pi) = 0 + pi dot (-1) = -pi$]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x mal Sinus von x.")
  ]
  #only("2")[
    #voiceover("Um dies abzuleiten, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]
  #only("3")[
    #voiceover("In unserem Fall setzen wir u gleich x und v gleich Sinus von x.")
  ]
  #only("4")[
    #voiceover("Nun müssen wir u Strich und v Strich finden. Die Ableitung von x ist 1, also ist u Strich gleich 1. Die Ableitung von Sinus x ist Cosinus x, also ist v Strich gleich Cosinus x.")
  ]
  #only("5")[
    #voiceover("Anwenden der Produktregel ergibt f Strich von x gleich 1 mal Sinus x plus x mal Cosinus x.")
  ]
  #only("6")[
    #voiceover("Vereinfacht haben wir f Strich von x gleich Sinus x plus x Cosinus x.")
  ]
  #only("7")[
    #voiceover("Um f Strich von pi zu finden, setzen wir pi für x in unsere Ableitungsformel ein.")
  ]
  #only("8")[
    #voiceover("Wir wissen, dass Sinus von pi 0 ist und Cosinus von pi minus 1 ist. Wenn wir diese Werte einsetzen, erhalten wir 0 plus pi mal minus 1, was sich zu minus pi vereinfacht. Daher ist f Strich von pi gleich minus pi.")
  ]
]