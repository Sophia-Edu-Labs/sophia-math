#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast den Bruch korrekt geändert. Lass uns Schritt für Schritt die Lösung durchgehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche ändern: $3/5$ zu $?/15$]
  #v(40pt)

  #only("2-")[
    - Ursprünglicher Bruch: $3/5$
  ]
  #v(20pt)
  #only("3-")[
    - Zielnenner: $15$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem ursprünglichen Bruch, drei Fünftel.")
  ]
  #only("3")[
    #voiceover("Unser Ziel ist es, diesen Bruch in einen äquivalenten Bruch mit einem Nenner von fünfzehn zu ändern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator finden]
  #v(40pt)

  #only("1-")[
    $5 × ? = 15$
  ]
  #v(20pt)
  #only("2-")[
    $5 × 3 = 15$
  ]
  #v(20pt)
  #only("3-")[
    Multiplikator: $3$
  ]

  #only("1")[
    #voiceover("Um unseren Multiplikator zu finden, müssen wir herausfinden, welche Zahl, mit 5 multipliziert, uns 15 ergibt.")
  ]
  #only("2")[
    #voiceover("Wir sehen, dass 5 mal 3 gleich 15 ist.")
  ]
  #only("3")[
    #voiceover("Also ist unser Multiplikator 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator anwenden]
  #v(40pt)

  #only("1-")[
    $3/5 = (3 × 3)/(5 × 3)$
  ]
  #v(20pt)
  #only("2-")[
    $= 9/15$
  ]

  #only("1")[
    #voiceover("Nun wenden wir diesen Multiplikator sowohl auf den Zähler als auch auf den Nenner unseres ursprünglichen Bruchs an. Drei Fünftel werden zu drei mal drei über fünf mal drei.")
  ]
  #only("2")[
    #voiceover("Das vereinfacht sich zu neun Fünfzehntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[
    $3/5 = 9/15$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Äquivalenter Bruch
  ]
  #v(20pt)
  #only("3-")[
    ✅ Nenner von 15
  ]

  #only("1")[
    #voiceover("Unser Endergebnis ist also, dass drei Fünftel gleich neun Fünfzehntel sind.")
  ]
  #only("2")[
    #voiceover("Wir haben erfolgreich einen äquivalenten Bruch erstellt,")
  ]
  #only("3")[
    #voiceover("und unser Ziel erreicht, einen Nenner von 15 zu haben.")
  ]
]