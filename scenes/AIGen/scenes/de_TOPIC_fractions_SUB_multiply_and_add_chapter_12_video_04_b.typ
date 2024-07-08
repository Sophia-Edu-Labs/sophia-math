#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Addieren]
  #v(40pt)

  #only("1-")[Übung: $1/4 + 1/2$]
  #v(20pt)

  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns das Problem gemeinsam durchgehen und verstehen, warum ein viertel plus ein halb gleich drei viertel ist.")
  ]

  #only("2-")[Schritt 1: Einen gemeinsamen Nenner finden]
  #v(10pt)
  #only("3-")[- Das kleinste gemeinsame Vielfache (kgV) von 4 und 2 ist 4]
  
  #only("2")[
    #voiceover("Der erste Schritt beim Addieren von Brüchen ist, einen gemeinsamen Nenner zu finden. Wir müssen das kleinste gemeinsame Vielfache von 4 und 2 finden.")
  ]
  
  #only("3")[
    #voiceover("Das kleinste gemeinsame Vielfache von 4 und 2 ist 4. Das bedeutet, wir verwenden 4 als unseren gemeinsamen Nenner.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche Umwandeln]
  #v(40pt)

  #only("1-")[Schritt 2: Brüche in gleichwertige Brüche mit gemeinsamen Nenner umwandeln]
  #v(20pt)
  #only("2-")[- $1/4$ bleibt $1/4$]
  #v(10pt)
  #only("3-")[- $1/2 = 2/4$ (Zähler und Nenner mit 2 multiplizieren)]

  #only("1")[
    #voiceover("Jetzt müssen wir unsere Brüche so umwandeln, dass sie beide einen Nenner von 4 haben.")
  ]

  #only("2")[
    #voiceover("Ein viertel hat bereits einen Nenner von 4, also bleibt es gleich.")
  ]

  #only("3")[
    #voiceover("Für ein halb multiplizieren wir sowohl den Zähler als auch den Nenner mit 2, um einen gleichwertigen Bruch zu erhalten. Das ergibt zwei viertel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Brüche Addieren]
  #v(40pt)

  #only("1-")[Schritt 3: Zähler addieren, gemeinsamen Nenner beibehalten]
  #v(20pt)
  #only("2-")[$ 1/4 + 2/4 = 3/4 $]

  #only("1")[
    #voiceover("Jetzt, wo wir Brüche mit demselben Nenner haben, können wir sie addieren.")
  ]

  #only("2")[
    #voiceover("Wir addieren die Zähler: 1 plus 2 ergibt 3. Der Nenner bleibt gleich. Also, ein viertel plus zwei viertel ergibt drei viertel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ 1/4 + 1/2 = 3/4 $]
  #v(20pt)
  #only("2-")[✅ Richtig!]

  #only("1")[
    #voiceover("Daher ergibt ein viertel plus ein halb drei viertel.")
  ]

  #only("2")[
    #voiceover("Du hast es richtig gemacht! Dieses Problem zeigt, wie man Brüche mit unterschiedlichen Nennern addiert. Denke daran, immer zuerst einen gemeinsamen Nenner zu finden, dann die Zähler zu addieren und den gemeinsamen Nenner beizubehalten. Großartige Arbeit!")
  ]
]