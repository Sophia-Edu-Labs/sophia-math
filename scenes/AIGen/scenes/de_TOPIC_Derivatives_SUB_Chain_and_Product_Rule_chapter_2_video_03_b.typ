#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war ein guter Versuch. Lass uns die Lösung Schritt für Schritt durchgehen, um zu sehen, wie man die Produktregel und die Kettenregel richtig anwendet.")
  ]

  #text(size: 30pt, weight: "bold")[Differenzieren von $f(x) = x^2 e^(3x)$]
  #v(40pt)

  #only("2-")[- Produktregel: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Kettenregel: $(e^x)' = e^x$]
  #v(20pt)

  #only("2")[
    #voiceover("Um $f(x) = x^2 \cdot e^{3x}$ zu differenzieren, verwenden wir die Produktregel. Die Produktregel besagt, dass die Ableitung von $u$ mal $v$ gleich $u'$ mal $v$ plus $u$ mal $v'$ ist.")
  ]

  #only("3")[
    #voiceover("Wir benötigen auch die Kettenregel für den Exponentialteil. Denke daran, dass die Ableitung von $e^x$ einfach $e^x$ ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[$ f(x) = x^2 \cdot e^{3x} $]
  #v(20pt)
  #only("2-")[Setze $u = x^2$ und $v = e^{3x}$]
  #v(20pt)
  #only("3-")[$ f'(x) = u' v + u v' $]
  #v(20pt)
  #only("4-")[$ f'(x) = (x^2)' \cdot e^{3x} + x^2 \cdot (e^{3x})' $]

  #only("1")[
    #voiceover("Beginnen wir damit, die Teile unserer Funktion zu identifizieren. Wir haben $f(x) = x^2 \cdot e^{3x}$.")
  ]

  #only("2")[
    #voiceover("Wir setzen $u = x^2$ und $v = e^{3x}$.")
  ]

  #only("3")[
    #voiceover("Anwendung der Produktregel ergibt $f'(x) = u' \cdot v + u \cdot v'$.")
  ]

  #only("4")[
    #voiceover("Setzen wir unsere ursprünglichen Funktionen wieder ein, erhalten wir die Ableitung von $x^2 \cdot e^{3x}$ plus $x^2 \cdot$ die Ableitung von $e^{3x}$.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differenzieren der Teile]
  #v(40pt)

  #only("1-")[$ (x^2)' = 2x $]
  #v(20pt)
  #only("2-")[$ (e^{3x})' = e^{3x} \cdot (3x)' = 3e^{3x} $]
  #v(20pt)
  #only("3-")[$ f'(x) = 2x \cdot e^{3x} + x^2 \cdot 3e^{3x} $]

  #only("1")[
    #voiceover("Nun differenzieren wir jeden Teil. Die Ableitung von $x^2$ ist $2x$.")
  ]

  #only("2")[
    #voiceover("Für $e^{3x}$ verwenden wir die Kettenregel. Die Ableitung ist $e^{3x}$ mal die Ableitung von $3x$, was $3$ ist. Also erhalten wir $3 \cdot e^{3x}$.")
  ]

  #only("3")[
    #voiceover("Alles zusammen ergibt $f'(x) = 2x \cdot e^{3x} + x^2 \cdot 3 \cdot e^{3x}$.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x e^{3x} + x^2 (3 e^{3x}) $]
  #v(20pt)
  #only("2-")[$ f'(x) = 2x e^{3x} + 3x^2 e^{3x} $]
  #v(20pt)
  #only("3-")[$ f'(x) = e^{3x} (2x + 3x^2) $]

  #only("1")[
    #voiceover("Unsere endgültige Antwort ist $f'(x) = 2x \cdot e^{3x} + x^2 \cdot 3 \cdot e^{3x}$.")
  ]

  #only("2")[
    #voiceover("Wir können dies leicht vereinfachen, indem wir $x^2$ und die $3$ kombinieren.")
  ]

  #only("3")[
    #voiceover("Wenn wir möchten, können wir $e^{3x}$ ausklammern, was uns $e^{3x} \cdot (2x + 3x^2)$ ergibt. Damit ist unsere Lösung abgeschlossen!")
  ]
]