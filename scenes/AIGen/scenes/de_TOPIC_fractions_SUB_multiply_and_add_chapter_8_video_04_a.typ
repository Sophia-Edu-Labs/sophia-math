#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit gemeinsamen Nennern addieren]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Gegeben: $1/4 + 2/5$]
  ]

  #only("1")[
    #voiceover("Großartige Arbeit, dass Du dieses Problem angegangen bist! Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2-")[
    #text(size: 24pt)[Schritt 1: Finde einen gemeinsamen Nenner]
  ]

  #only("2")[
    #voiceover("Der erste Schritt beim Addieren von Brüchen ist, einen gemeinsamen Nenner zu finden. In diesem Fall müssen wir das kleinste gemeinsame Vielfache von 4 und 5 finden.")
  ]

  #only("3-")[
    #text(size: 24pt)[kgV(4, 5) = 20]
  ]

  #only("3")[
    #voiceover("Das kleinste gemeinsame Vielfache von 4 und 5 ist 20. Dies wird unser neuer Nenner sein.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche umwandeln]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Schritt 2: Brüche in gleichwertige Brüche mit Nenner 20 umwandeln]
  ]

  #only("1")[
    #voiceover("Jetzt müssen wir jeden Bruch in einen gleichwertigen Bruch mit dem Nenner 20 umwandeln.")
  ]

  #only("2-")[
    $1/4 = (1 dot 5)/(4 dot 5) = 5/20$
  ]

  #only("2")[
    #voiceover("Für ein Viertel multiplizieren wir sowohl den Zähler als auch den Nenner mit 5. Das ergibt fünf Zwanzigstel.")
  ]

  #only("3-")[
    $2/5 = (2 dot 4)/(5 dot 4) = 8/20$
  ]

  #only("3")[
    #voiceover("Für zwei Fünftel multiplizieren wir sowohl den Zähler als auch den Nenner mit 4. Das ergibt acht Zwanzigstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Brüche addieren]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Schritt 3: Zähler addieren, gemeinsamen Nenner beibehalten]
  ]

  #only("1")[
    #voiceover("Jetzt, wo wir Brüche mit demselben Nenner haben, können wir sie addieren, indem wir einfach die Zähler addieren und den gemeinsamen Nenner beibehalten.")
  ]

  #only("2-")[
    $5/20 + 8/20 = (5 + 8)/20 = 13/20$
  ]

  #only("2")[
    #voiceover("Fünf Zwanzigstel plus acht Zwanzigstel ergibt dreizehn Zwanzigstel.")
  ]

  #only("3-")[
    #text(size: 24pt)[Endergebnis: $13/20$]
  ]

  #only("3")[
    #voiceover("Daher ist unser Endergebnis dreizehn Zwanzigstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung der Vereinfachung]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Schritt 4: Überprüfe, ob der Bruch vereinfacht werden kann]
  ]

  #only("1")[
    #voiceover("Als letzten Schritt sollten wir immer überprüfen, ob unser Bruch weiter vereinfacht werden kann.")
  ]

  #only("2-")[
    #text(size: 24pt)[13 und 20 haben keine gemeinsamen Faktoren außer 1]
  ]

  #only("2")[
    #voiceover("In diesem Fall haben 13 und 20 keine gemeinsamen Faktoren außer 1, daher ist unser Bruch dreizehn Zwanzigstel bereits in seiner einfachsten Form.")
  ]

  #only("3-")[
    #text(size: 24pt)[Daher ist $13/20$ die endgültige, vereinfachte Antwort.]
  ]

  #only("3")[
    #voiceover("Daher ist dreizehn Zwanzigstel unsere endgültige, vereinfachte Antwort. Gut gemacht beim Lösen dieses Problems!")
  ]
]