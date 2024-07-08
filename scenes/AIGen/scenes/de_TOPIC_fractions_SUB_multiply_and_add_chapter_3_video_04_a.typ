#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartig! Du hast den Bruch korrekt geändert. Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Änderung des Bruchnenners]
  #v(40pt)

  #only("2-")[Ursprünglicher Bruch: $7/9$]
  #v(20pt)
  #only("3-")[Zielnenner: $18$]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, sieben Neuntel.")
  ]

  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von 18 zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator finden]
  #v(40pt)

  #only("1-")[Um $9 arrow 18$ zu ändern:]
  #v(20pt)
  #only("2-")[Finde $x$: $9 dot x = 18$]
  #v(20pt)
  #only("3-")[Löse: $x = 18/9 = 2$]

  #only("1")[
    #voiceover("Um den Nenner von 9 auf 18 zu ändern, müssen wir herausfinden, mit welcher Zahl wir 9 multiplizieren müssen, um 18 zu erhalten.")
  ]

  #only("2")[
    #voiceover("Wir können dies als Gleichung ausdrücken: 9 mal x gleich 18.")
  ]

  #only("3")[
    #voiceover("Wenn wir diese Gleichung lösen, finden wir heraus, dass x gleich 18 geteilt durch 9 ist, was 2 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[Multipliziere sowohl Zähler als auch Nenner mit 2:]
  #v(20pt)
  #only("2-")[$(7 dot 2)/(9 dot 2)$]
  #v(20pt)
  #only("3-")[$ = 14/18$]

  #only("1")[
    #voiceover("Jetzt, da wir wissen, dass wir mit 2 multiplizieren müssen, wenden wir dies sowohl auf den Zähler als auch auf den Nenner unseres ursprünglichen Bruchs an.")
  ]

  #only("2")[
    #voiceover("Dies ergibt 7 mal 2 über 9 mal 2.")
  ]

  #only("3")[
    #voiceover("Was sich zu 14 über 18 vereinfacht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[Ursprünglich: $7/9$]
  #v(20pt)
  #only("2-")[Äquivalent: $14/18$]
  #v(20pt)
  #only("3-")[✅ Der Nenner ist jetzt 18]

  #only("1")[
    #voiceover("Also, wir haben erfolgreich unseren ursprünglichen Bruch, sieben Neuntel,")
  ]

  #only("2")[
    #voiceover("in einen äquivalenten Bruch, vierzehn Achtzehntel, geändert.")
  ]

  #only("3")[
    #voiceover("Wir haben unser Ziel erreicht, einen äquivalenten Bruch mit einem Nenner von 18 zu erstellen. Gut gemacht!")
  ]
]