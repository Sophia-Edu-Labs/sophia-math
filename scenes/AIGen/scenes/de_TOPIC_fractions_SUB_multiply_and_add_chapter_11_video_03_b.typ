#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um es besser zu verstehen.")
  ]

  #text(size: 30pt, weight: "bold")[Subtrahieren von Brüchen mit gemeinsamen Nennern]
  #v(40pt)

  #only("2-")[$ 3/4 - 2/5 $]
  #v(20pt)

  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: drei Viertel minus zwei Fünftel. Der erste Schritt ist zu erkennen, dass diese Brüche unterschiedliche Nenner haben.")
  ]

  #only("3-")[#text(fill: red)[⚠ Unterschiedliche Nenner]]
  #v(20pt)

  #only("3")[
    #voiceover("Beim Subtrahieren von Brüchen mit unterschiedlichen Nennern müssen wir zuerst einen gemeinsamen Nenner finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einen gemeinsamen Nenner finden]
  #v(40pt)

  #only("1-")[- Kleinstes gemeinsames Vielfaches (KGV) von 4 und 5]
  #v(20pt)
  #only("2-")[$ "LCM"(4, 5) = 20 $]
  #v(20pt)

  #only("1")[
    #voiceover("Um einen gemeinsamen Nenner zu finden, müssen wir das kleinste gemeinsame Vielfache (KGV) von 4 und 5 berechnen.")
  ]

  #only("2")[
    #voiceover("Das KGV von 4 und 5 ist 20. Dies wird unser neuer Nenner sein.")
  ]

  #only("3-")[- Brüche in äquivalente Brüche mit dem Nenner 20 umwandeln]
  #v(20pt)

  #only("3")[
    #voiceover("Jetzt müssen wir beide Brüche in äquivalente Brüche mit dem Nenner 20 umwandeln.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche umwandeln]
  #v(40pt)

  #only("1-")[$ 3/4 = (3 dot 5)/(4 dot 5) = 15/20 $]
  #v(20pt)

  #only("1")[
    #voiceover("Für drei Viertel multiplizieren wir sowohl den Zähler als auch den Nenner mit 5. Das ergibt fünfzehn Zwanzigstel.")
  ]

  #only("2-")[$ 2/5 = (2 dot 4)/(5 dot 4) = 8/20 $]
  #v(20pt)

  #only("2")[
    #voiceover("Für zwei Fünftel multiplizieren wir sowohl den Zähler als auch den Nenner mit 4. Das ergibt acht Zwanzigstel.")
  ]

  #only("3-")[$ 15/20 - 8/20 $]

  #only("3")[
    #voiceover("Jetzt haben wir unser ursprüngliches Problem in fünfzehn Zwanzigstel minus acht Zwanzigstel umgewandelt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("1-")[$ 15/20 - 8/20 = (15-8)/20 = 7/20 $]
  #v(20pt)

  #only("1")[
    #voiceover("Mit dem gleichen Nenner können wir nun die Zähler subtrahieren. Fünfzehn minus acht ergibt sieben, und wir behalten den Nenner von zwanzig.")
  ]

  #only("2-")[#text(fill: green)[✓ Endergebnis: $ 7/20 $]]

  #only("2")[
    #voiceover("Also, unser Endergebnis ist sieben Zwanzigstel. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]