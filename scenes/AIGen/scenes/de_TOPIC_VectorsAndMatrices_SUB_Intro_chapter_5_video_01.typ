#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in die skalare Multiplikation von Matrizen]
  #v(40pt)

  #only("1-")[- Matrizen sind mächtige Werkzeuge in der Mathematik 🧮]
  #v(20pt)
  #only("2-")[- Manchmal müssen wir eine Matrix mit einer einzelnen Zahl multiplizieren 🔢]
  #v(20pt)
  #only("3-")[- Diese Operation nennt man skalare Multiplikation ✖️]
  #v(20pt)
  #only("4-")[- Sie ist in verschiedenen Anwendungen unerlässlich 🌟]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in die skalare Multiplikation von Matrizen. Matrizen sind mächtige Werkzeuge in der Mathematik, die in verschiedenen Bereichen wie Physik und Computergrafik verwendet werden.")
  ]
  #only("2")[
    #voiceover("In vielen Situationen müssen wir eine gesamte Matrix mit einer einzelnen Zahl multiplizieren. Dies könnte notwendig sein, um alle Werte in der Matrix gleichzeitig zu skalieren.")
  ]
  #only("3")[
    #voiceover("Diese Operation nennt man skalare Multiplikation. Der Begriff 'Skalar' bezieht sich auf eine einzelne Zahl, im Gegensatz zu einem Vektor oder einer Matrix.")
  ]
  #only("4")[
    #voiceover("Das Verständnis der skalaren Multiplikation ist für viele Anwendungen unerlässlich, einschließlich Transformationen in der Computergrafik, dem Lösen von Gleichungssystemen und mehr.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was ist skalare Multiplikation?]
  #v(40pt)

  #only("1-")[- Multiplikation jedes Elements einer Matrix mit einem Skalar 🔄]
  #v(20pt)
  #only("2-")[$ c dot mat(a,b;c,d) = mat(c dot a, c dot b; c dot c, c dot d) $]
  #v(20pt)
  #only("3-")[- Beispiel: Matrix mit 2 multiplizieren]
  #v(20pt)
  #only("4-")[$ 2 dot mat(1,2;3,4) = mat(2,4;6,8) $]

  #only("1")[
    #voiceover("Die skalare Multiplikation beinhaltet die Multiplikation jedes Elements einer Matrix mit einer einzelnen Zahl, die wir Skalar nennen.")
  ]
  #only("2")[
    #voiceover("Wenn wir einen Skalar c und eine Matrix mit den Elementen a, b, c und d haben, wäre das Ergebnis der skalaren Multiplikation eine neue Matrix, bei der jedes Element mit c multipliziert wird. Also c mal a, c mal b, c mal c und c mal d.")
  ]
  #only("3")[
    #voiceover("Schauen wir uns ein einfaches Beispiel an. Angenommen, wir wollen eine Matrix mit 2 multiplizieren.")
  ]
  #only("4")[
    #voiceover("Wenn wir mit der Matrix 1, 2, 3, 4 beginnen und sie mit 2 multiplizieren, erhalten wir eine neue Matrix 2, 4, 6, 8. Jedes Element der ursprünglichen Matrix wurde verdoppelt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Skalare Multiplikation: Multiplikation einer Matrix mit einer einzelnen Zahl 🔢]
  #v(20pt)
  #only("2-")[- Sie beeinflusst alle Elemente der Matrix gleichermaßen ⚖️]
  #v(20pt)
  #only("3-")[- Wichtig in verschiedenen Anwendungen 🌐]
  #v(20pt)
  #only("4-")[- Als Nächstes: Wir werden Eigenschaften und Anwendungen erkunden 🚀]

  #only("1")[
    #voiceover("Zusammenfassend ist die skalare Multiplikation der Prozess, eine Matrix mit einer einzelnen Zahl, einem sogenannten Skalar, zu multiplizieren.")
  ]
  #only("2")[
    #voiceover("Diese Operation beeinflusst alle Elemente der Matrix gleichermaßen und skaliert sie um denselben Faktor.")
  ]
  #only("3")[
    #voiceover("Die skalare Multiplikation ist ein wichtiges Konzept mit verschiedenen Anwendungen in Mathematik, Physik und Informatik.")
  ]
  #only("4")[
    #voiceover("In unseren nächsten Lektionen werden wir die Eigenschaften der skalaren Multiplikation und ihre praktischen Anwendungen erkunden. Bleib dran!")
  ]
]