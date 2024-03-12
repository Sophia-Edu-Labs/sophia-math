#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Was ist ein Ergebnis, und was ist ein Ereignis beim Zufallsexperimenten?")
  ]

  #text(size: 30pt, weight: "bold")[Ergebnis und Ereignis]

  #v(40pt)

  #only("2-")[#align(center)[⚅⚄ Zweimaliger Würfelwurf ⚀⚁]]

  #only("2")[
    #voiceover("Betrachten wir das Beispiel eines zweimaligen Würfelwurfs mit einem fairen Würfel. ...")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ergebnis]

  #v(40pt)

  #only("1-")[- Resultat des Zufallsexperiments]

  #v(20pt)

  #only("2-")[- Beispiele: (1,3), (4,4), (6,2)]

  #v(20pt)

  #only("3-")[- Insgesamt: $6 dot 6 = 36$ ⚂⚅]

  #only("1")[
    #voiceover("Ein Ergebnis ist das Resultat eines einzelnen Zufallsexperiments. In unserem Beispiel: Das Ergebnis des zweimaligen Würfelns.")
  ]

  #only("2")[
    #voiceover("1, 3 ist ein Beispiel für ein Ergebnis in unserem Fall. 4 4 und 6 2 sind weitere Beispiele.")
  ]

  #only("3")[
    #voiceover("Insgesamt gibt es 6 mal 6, also 36 mögliche Ergebnisse: Wir können sechs verschiedene Augenzahlen im ersten Wurf mit sechs verschiedenen Augenzahlen im zweiten Wurf kombinieren. ... Ok ein Ergebnis ist also das, was wir nach einem Durchgang des Zufallsexperiments erhalten.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Ereignis]

  #v(40pt)

  #only("1-")[- ⚯ Fasst Ergebnisse mit gemeinsamer Eigenschaft zusammen]

  #v(20pt)

  #only("2-")[- Beispiel: "Summe der Augenzahlen ist 7" → ⚀ + ⚅ = 7]

  #v(20pt)

  #only("3-")[- Beispiel: "In beiden Würfen ist die Augenzahl gerade" → ⚁ gerade, ⚃ gerade]

  #only("1")[
    #voiceover("Ok, jetzt die Frage: Was ist ein Ereignis. Ein Ereignis fasst mehrere Ergebnisse zusammen, die eine gemeinsame Eigenschaft haben.")
  ]

  #only("2")[
    #voiceover("Ein Beispiel für ein Ereignis ist 'Die Summe der Augenzahlen ist 7'.")
  ]

  #only("3")[
    #voiceover("Ein weiteres Beispiel ist 'In beiden Würfen ist die Augenzahl gerade'.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Wahrscheinlichkeit eines Ereignisses]

  #v(40pt)

  #only("1-")[$ P(E) = ("günstige Ergebnisse" ✔)/("mögliche Ergebnisse" 📊) $]

  #v(20pt)

  #only("2-")[Beispiel: $ P("Summe ist 7") = 6/36 = 1/6 $]

  #only("1")[
    #voiceover("Die Wahrscheinlichkeit eines Ereignisses berechnet sich als Quotient aus der Anzahl der günstigen Ergebnisse und der Gesamtzahl der möglichen Ergebnisse.")
  ]

  #only("2")[
    #voiceover("Zum Beispiel ist die Wahrscheinlichkeit, dass die Summe 7 ist, gleich 6 durch 36, also ein Sechstel.")
  ]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Ergebnis: Resultat eines einzelnen Zufallsexperiments]
#v(20pt)
#only("2-")[- Ereignis: Fasst Ergebnisse mit gemeinsamer Eigenschaft zusammen]
#v(20pt)
#only("1")[
#voiceover("Zusammengefasst ist ein Ergebnis das Resultat eines einzelnen Zufallsexperiments.")
]
#only("2")[
#voiceover("Ein Ereignis fasst hingegen mehrere Ergebnisse mit einer gemeinsamen Eigenschaft zusammen. Beim Beispiel des zweimaligen Würfelns ist 3 5 ein mögliches Ergebnis, während  ...SUMME IST GERADE ... ein Ereignis darstellt, das mehrere Ergebnisse umfasst.")
]
]