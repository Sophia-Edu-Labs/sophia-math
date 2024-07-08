#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("-1")[$ f(x) = (x^2 + 2)^4 $]
  #v(20pt)
  #only("2-")[$ u = x^2 + 2 $]
  #v(20pt)
  #only("3-")[$ f(x) = u^4 $]
  #v(20pt)
  #only("4-")[$ f'(x) = 4u^3 \cdot \frac{d u}{d x} $]
  #v(20pt)
  #only("5-")[$ \frac{d u}{d x} = 2x $]
  #v(20pt)
  #only("6-")[$ f'(x) = 4(x^2 + 2)^3 \cdot 2x $]
  #v(20pt)
  #only("7-")[$ f'(1) = 4(1^2 + 2)^3 \cdot 2(1) = 4(3)^3 \cdot 2 = 216 $]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich x Quadrat plus 2, alles hoch 4.")
  ]
  #only("2")[
    #voiceover("Um die Kettenregel anzuwenden, identifizieren wir zuerst die äußere und die innere Funktion. Wir setzen u gleich x Quadrat plus 2.")
  ]
  #only("3")[
    #voiceover("Damit können wir unsere Funktion umschreiben als f von x gleich u hoch 4.")
  ]
  #only("4")[
    #voiceover("Nun können wir die Kettenregel anwenden. Die Ableitung von f bezüglich x ist gleich 4u hoch 3 mal du durch dx.")
  ]
  #only("5")[
    #voiceover("Als nächstes müssen wir du durch dx finden. Die Ableitung von x Quadrat plus 2 bezüglich x ist 2x.")
  ]
  #only("6")[
    #voiceover("Wenn wir dies in unsere Gleichung einsetzen und u durch x Quadrat plus 2 ersetzen, erhalten wir f Strich von x gleich 4 mal x Quadrat plus 2, alles hoch 3, mal 2x.")
  ]
  #only("7")[
    #voiceover("Schließlich, um f Strich von 1 zu finden, setzen wir einfach 1 für x ein. Das ergibt 4 mal 3 hoch 3 mal 2, was 216 ergibt.")
  ]
]