#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Was ist der Unterschied zwischen einem Ergebnis und einem Ereignis bei Zufallsexperimenten?")
  ]

  #text(size: 30pt, weight: "bold")[Ergebnis und Ereignis]

  #v(40pt)

  #only("2-")[#align(center)[⚅ Einmaliger Würfelwurf ⚀]]

  #only("2")[
    #voiceover("Betrachten wir das Beispiel eines einmaligen Würfelwurfs mit einem fairen Würfel. ...")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ergebnis]

  #v(40pt)

  #only("1-")[- Resultat des Zufallsexperiments]

  #v(20pt)

  #only("2-")[- Beispiele: 1, 2, 3, 4, 5, 6]

  #v(20pt)

  #only("3-")[- Insgesamt: 6 mögliche Ergebnisse ⚀⚁⚂⚃⚄⚅]

  #only("1")[
    #voiceover("Ein Ergebnis ist das Resultat eines einzelnen Zufallsexperiments. In unserem Beispiel: Das Ergebnis des einmaligen Würfelns.")
  ]

  #only("2")[
    #voiceover("1, 2, 3, 4, 5 und 6 sind die möglichen Ergebnisse in unserem Fall.")
  ]

  #only("3")[
    #voiceover("Insgesamt gibt es 6 mögliche Ergebnisse: Die Augenzahlen 1 bis 6. ... Ok, ein Ergebnis ist also das, was wir nach einem Durchgang des Zufallsexperiments erhalten.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ereignis]

  #v(40pt)

  #only("1-")[- ⚯ Fasst Ergebnisse mit gemeinsamer Eigenschaft zusammen]

  #v(20pt)

  #only("2-")[- Beispiel: "Die Augenzahl ist gerade" $->E_1 = {2, 4, 6}$]

  #v(20pt)

  #only("3-")[- Beispiel: "Die Augenzahl ist größer als 3" $->E_2 = {4, 5, 6}$]

  #only("1")[
    #voiceover("Jetzt die Frage: Was ist ein Ereignis? Ein Ereignis fasst mehrere Ergebnisse zusammen, die eine gemeinsame Eigenschaft haben.")
  ]

  #only("2")[
    #voiceover("Ein Beispiel für ein Ereignis ist 'Die Augenzahl ist gerade'. In Mengenschreibweise: E1 ist die Menge der Ergebnisse 2, 4 und 6.")
  ]

  #only("3")[
    #voiceover("Ein weiteres Beispiel ist 'Die Augenzahl ist größer als 3'. In Mengenschreibweise: E2 ist die Menge der Ergebnisse 4, 5 und 6.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]

  #v(40pt)

  #only("1-")[- Ergebnis: Resultat eines einzelnen Zufallsexperiments]

  #v(20pt)

  #only("2-")[- Ereignis: Fasst Ergebnisse mit gemeinsamer Eigenschaft zusammen, Mengenschreibweise: $E = {...}$]

  #v(20pt)

  #only("1")[
    #voiceover("Zusammengefasst ist ein Ergebnis das Resultat eines einzelnen Zufallsexperiments.")
  ]

  #only("2")[
    #voiceover("Ein Ereignis fasst hingegen mehrere Ergebnisse mit einer gemeinsamen Eigenschaft zusammen. In der Mengenschreibweise wird ein Ereignis E als Menge von Ergebnissen dargestellt. Beim Beispiel des einmaligen Würfelns ist 3 ein mögliches Ergebnis, während 'AUGENZAHL IST GERADE' ein Ereignis darstellt, das mehrere Ergebnisse umfasst.")
  ]
]