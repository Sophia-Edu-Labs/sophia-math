#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("1-")[Übung: Subtrahiere 1/3 von 5/6]
  #v(20pt)

  #only("2-")[Schritt 1: Finde einen gemeinsamen Nenner]
  #v(10pt)
  #only("3-")[$ 5/6 - 1/3 = 5/6 - 2/6 $]

  #only("1")[
    #voiceover("Leider nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Um Brüche zu subtrahieren, müssen wir zuerst einen gemeinsamen Nenner finden. In diesem Fall sind die Nenner 6 und 3.")
  ]

  #only("3")[
    #voiceover("Das kleinste gemeinsame Vielfache von 6 und 3 ist 6. Also lassen wir 5/6 wie es ist und wandeln 1/3 in einen gleichwertigen Bruch mit dem Nenner 6 um. Das machen wir, indem wir sowohl den Zähler als auch den Nenner mit 2 multiplizieren, was uns 2/6 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Subtraktion durchführen]
  #v(40pt)

  #only("1-")[Schritt 2: Subtrahiere die Zähler]
  #v(10pt)
  #only("2-")[$ 5/6 - 2/6 = 3/6 $]
  #v(20pt)

  #only("3-")[Schritt 3: Das Ergebnis vereinfachen]
  #v(10pt)
  #only("4-")[$ 3/6 = 1/2 $]

  #only("1")[
    #voiceover("Jetzt, wo wir einen gemeinsamen Nenner haben, können wir die Zähler subtrahieren, während der Nenner gleich bleibt.")
  ]

  #only("2")[
    #voiceover("Fünf minus zwei ergibt drei, also ist unser Ergebnis 3/6.")
  ]

  #only("3")[
    #voiceover("Unser letzter Schritt ist es, diesen Bruch zu vereinfachen, wenn möglich.")
  ]

  #only("4")[
    #voiceover("Wir können sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 3 ist, teilen. Das gibt uns unsere endgültige Antwort: 1/2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ 5/6 - 1/3 = 1/2 $]
  #v(20pt)

  #only("2-")[Denke daran:
    - Gemeinsamen Nenner finden
    - Zähler subtrahieren
    - Wenn möglich, vereinfachen]

  #only("1")[
    #voiceover("Unsere endgültige Antwort ist also, dass 5/6 minus 1/3 gleich 1/2 ist.")
  ]

  #only("2")[
    #voiceover("Zusammengefasst: Wenn Du Brüche subtrahierst, denke immer daran, zuerst einen gemeinsamen Nenner zu finden, dann die Zähler zu subtrahieren, während der Nenner gleich bleibt, und schließlich Dein Ergebnis zu vereinfachen, wenn möglich. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]