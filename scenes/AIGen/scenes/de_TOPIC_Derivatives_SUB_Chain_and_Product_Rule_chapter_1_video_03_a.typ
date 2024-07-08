#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Produktregel korrekt angewendet. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Produktregel für die Differentiation]
  #v(40pt)

  #only("2-")[$ f(x) = x^2 sin(x) $]
  #v(20pt)
  #only("3-")[Produktregel: $ (u v)' = u' v + u v' $]
  #v(20pt)
  #only("4-")[Wobei: $ u = x^2 $ und $ v = sin(x) $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat mal Sinus von x.")
  ]
  #only("3")[
    #voiceover("Um dies zu differenzieren, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von u mal v gleich u Strich mal v plus u mal v Strich ist.")
  ]
  #only("4")[
    #voiceover("In unserem Fall ist u x Quadrat und v ist Sinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[1. Finde $ u' $: $ (x^2)' = 2x $]
  #v(20pt)
  #only("2-")[2. Finde $ v' $: $ (sin(x))' = cos(x) $]
  #v(20pt)
  #only("3-")[3. Wende die Formel an: $ f'(x) = u' v + u v' $]
  #v(20pt)
  #only("4-")[$ f'(x) = 2x sin(x) + x^2 cos(x) $]

  #only("1")[
    #voiceover("Zuerst finden wir u Strich. Die Ableitung von x Quadrat ist zwei x.")
  ]
  #only("2")[
    #voiceover("Als nächstes finden wir v Strich. Die Ableitung von Sinus von x ist Cosinus von x.")
  ]
  #only("3")[
    #voiceover("Jetzt wenden wir die Produktregel-Formel an: u Strich mal v plus u mal v Strich.")
  ]
  #only("4")[
    #voiceover("Wenn wir unsere Werte einsetzen, erhalten wir: f Strich von x gleich zwei x mal Sinus von x plus x Quadrat mal Cosinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x sin(x) + x^2 cos(x) $]
  #v(20pt)
  #only("2-")[✅ Korrekte Anwendung der Produktregel]
  #v(20pt)
  #only("3-")[🔑 Wichtiger Punkt: Die Produktregel kombiniert die Ableitungen der Faktoren]

  #only("1")[
    #voiceover("Unsere endgültige Antwort lautet also: f Strich von x gleich zwei x mal Sinus von x plus x Quadrat mal Cosinus von x.")
  ]
  #only("2")[
    #voiceover("Diese Lösung zeigt die korrekte Anwendung der Produktregel.")
  ]
  #only("3")[
    #voiceover("Die wichtigste Erkenntnis ist, dass die Produktregel es uns ermöglicht, komplexe Funktionen zu differenzieren, indem wir sie in einfachere Teile zerlegen und deren Ableitungen kombinieren.")
  ]
]