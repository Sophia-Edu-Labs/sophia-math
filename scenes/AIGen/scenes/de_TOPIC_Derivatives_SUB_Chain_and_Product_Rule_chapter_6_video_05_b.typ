#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[- Funktion: $f(x) = x^2 e^x$]
  #v(20pt)
  #only("2-")[- Produktregel: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Sei $u = x^2$ und $v = e^x$]
  #v(20pt)
  #only("4-")[- $u' = 2x$ und $v' = e^x$]
  #v(20pt)
  #only("5-")[- $f'(x) = 2x e^x + x^2 e^x$]
  #v(20pt)
  #only("6-")[- $f'(0) = 2(0) e^0 + 0^2 e^0 = 0$]

  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x Quadrat mal e hoch x.")
  ]
  #only("2")[
    #voiceover("Um dies abzuleiten, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]
  #only("3")[
    #voiceover("In unserem Fall setzen wir u gleich x Quadrat und v gleich e hoch x.")
  ]
  #only("4")[
    #voiceover("Jetzt müssen wir u Strich und v Strich finden. Die Ableitung von x Quadrat ist 2x, also ist u Strich gleich 2x. Die Ableitung von e hoch x ist e hoch x, also ist v Strich gleich e hoch x.")
  ]
  #only("5")[
    #voiceover("Wenden wir die Produktregel an, erhalten wir f Strich von x gleich 2x mal e hoch x plus x Quadrat mal e hoch x.")
  ]
  #only("6")[
    #voiceover("Um f Strich von null zu finden, setzen wir einfach x gleich null. Das ergibt 2 mal 0 mal e hoch 0, plus 0 Quadrat mal e hoch 0. Da alles mal 0 gleich 0 ist, vereinfacht sich dies zu 0.")
  ]
]