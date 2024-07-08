#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktion durch zwei Punkte]
  #v(40pt)

  #only("1-")[
    Betrachte die folgenden Informationen:
    - Punkte: (1, 3) und (2, 12)
    - $a = 3$
  ]
  #v(20pt)

  #only("2-")[
    Schreibe die Potenzfunktion $f(x) = a x^b$, die durch diese Punkte verläuft.
  ]

  #only("1")[
    #voiceover("Lass uns eine Übung zu Potenzfunktionen erkunden. Wir haben zwei Punkte und einen bestimmten Wert für 'a' gegeben.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Potenzfunktion f von x gleich a mal x hoch b zu schreiben, die durch die Punkte (1, 3) und (2, 12) verläuft, wobei a gleich 3 ist. Kannst du den Wert von b bestimmen und die vollständige Funktion schreiben?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Schreibe die Potenzfunktion, die durch die Punkte $(1, 3)$ und $(2, 12)$ mit $a = 3$ verläuft.", 
answerOptions: ("$f(x) = 3x^2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)