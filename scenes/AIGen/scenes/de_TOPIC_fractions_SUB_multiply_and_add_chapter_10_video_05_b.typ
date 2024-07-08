#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu sehen, wie wir zur richtigen Antwort kommen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[$ 7/8 - 3/8 $]
  
  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: sieben Achtel minus drei Achtel.")
  ]

  #only("3-")[#text(fill: blue)[Gleicher Nenner ✅]]
  
  #only("3")[
    #voiceover("Zuerst stellen wir fest, dass beide Brüche den gleichen Nenner, 8, haben. Das ist großartig, weil wir dadurch die Zähler direkt subtrahieren können.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)

  #only("1-")[1️⃣ Zähler subtrahieren]
  #v(10pt)
  #only("2-")[$ 7 - 3 = 4 $]
  #v(20pt)
  #only("3-")[2️⃣ Nenner beibehalten]
  #v(10pt)
  #only("4-")[$ 4/8 $]

  #only("1")[
    #voiceover("Nun, lass uns das Schritt für Schritt lösen. Zuerst subtrahieren wir die Zähler.")
  ]

  #only("2")[
    #voiceover("Sieben minus drei ergibt vier.")
  ]

  #only("3")[
    #voiceover("Als nächstes behalten wir den gleichen Nenner, der 8 ist.")
  ]

  #only("4")[
    #voiceover("Also ist unser Ergebnis vier Achtel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)

  #only("1-")[$ 4/8 $]
  #v(10pt)
  #only("2-")[#text(fill: blue)[Können wir vereinfachen? 🤔]]
  #v(10pt)
  #only("3-")[$ 4 / 8 = (4 div 4) / (8 div 4) = 1/2 $]

  #only("1")[
    #voiceover("Wir haben herausgefunden, dass sieben Achtel minus drei Achtel vier Achtel ergibt.")
  ]

  #only("2")[
    #voiceover("Aber wir sind noch nicht fertig. Wir sollten immer überprüfen, ob wir unseren Bruch vereinfachen können.")
  ]

  #only("3")[
    #voiceover("Wir können sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 4 ist, teilen. Das ergibt ein Halb.")
  ]

  #only("4-")[#text(fill: green)[Endgültige Antwort: $ 1/2 $ ✅]]

  #only("4")[
    #voiceover("Also ist unsere endgültige vereinfachte Antwort ein Halb. Sowohl vier Achtel als auch ein Halb sind korrekt, aber ein Halb ist in seiner einfachsten Form.")
  ]
]