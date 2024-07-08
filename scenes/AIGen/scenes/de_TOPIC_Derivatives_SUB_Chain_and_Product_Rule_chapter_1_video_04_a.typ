#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("-1")[- Funktion: $f(x) = x e^x$]
  #v(20pt)
  #only("2-")[- Produktregel: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Setze $u = x$ und $v = e^x$]
  #v(20pt)
  #only("4-")[- $u' = 1$ und $v' = e^x$]
  #v(20pt)
  #only("5-")[- $f'(x) = 1 dot e^x + x dot e^x = e^x + x e^x$]
  #v(20pt)
  #only("6-")[- Werte bei $x = 1$ aus: $f'(1) = e^1 + 1 dot e^1 = e + e = 2e$]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x mal e hoch x.")
  ]
  #only("2")[
    #voiceover("Um dies zu differenzieren, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]
  #only("3")[
    #voiceover("In unserem Fall setzen wir u gleich x und v gleich e hoch x.")
  ]
  #only("4")[
    #voiceover("Nun müssen wir u Strich und v Strich finden. Die Ableitung von x ist 1, also ist u Strich gleich 1. Die Ableitung von e hoch x ist e hoch x, also ist v Strich gleich e hoch x.")
  ]
  #only("5")[
    #voiceover("Wenden wir die Produktregel an, erhalten wir f Strich von x gleich 1 mal e hoch x plus x mal e hoch x. Dies vereinfacht sich zu e hoch x plus x mal e hoch x.")
  ]
  #only("6")[
    #voiceover("Schließlich müssen wir dies bei x gleich 1 auswerten. Setzen wir 1 für x ein, erhalten wir e hoch 1 plus 1 mal e hoch 1, was e plus e oder 2e ergibt. Und das ist unsere endgültige Antwort!")
  ]
]