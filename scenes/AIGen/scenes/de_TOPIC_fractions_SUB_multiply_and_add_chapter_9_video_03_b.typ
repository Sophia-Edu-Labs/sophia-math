#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war knapp daneben. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Problem: $5/8 - 1/8$]
  ]

  #only("2")[
    #voiceover("Unser Problem ist es, ein Achtel von fünf Achteln zu subtrahieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Nenner Überprüfen]
  #v(40pt)

  #only("1-")[
    - Beide Brüche haben den Nenner 8 👍
  ]

  #only("1")[
    #voiceover("Zuerst überprüfen wir die Nenner. In diesem Fall haben beide Brüche bereits den gleichen Nenner, 8. Das ist großartig, weil wir keinen gemeinsamen Nenner finden müssen!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Zähler Subtrahieren]
  #v(40pt)

  #only("1-")[
    $5/8 - 1/8 = (5-1)/8$
  ]

  #only("2-")[
    $= 4/8$
  ]

  #only("1")[
    #voiceover("Wenn wir Brüche mit demselben Nenner subtrahieren, behalten wir den Nenner bei und subtrahieren einfach die Zähler. Also, fünf Achtel minus ein Achtel ist gleich fünf minus eins, über acht.")
  ]

  #only("2")[
    #voiceover("Das ergibt vier Achtel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen (Optional)]
  #v(40pt)

  #only("1-")[
    $4/8 = 1/2$
  ]

  #only("2-")[
    - Teile sowohl den Zähler als auch den Nenner durch 4
  ]

  #only("1")[
    #voiceover("Unser letzter Schritt ist es, den Bruch zu vereinfachen, wenn möglich. Vier Achtel können zu ein Halb vereinfacht werden.")
  ]

  #only("2")[
    #voiceover("Das können wir tun, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 4 ist, teilen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $5/8 - 1/8 = 4/8 = 1/2$
  ]

  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass fünf Achtel minus ein Achtel gleich vier Achtel ist, was zu ein Halb vereinfacht wird. Sowohl vier Achtel als auch ein Halb sind korrekte Antworten. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]