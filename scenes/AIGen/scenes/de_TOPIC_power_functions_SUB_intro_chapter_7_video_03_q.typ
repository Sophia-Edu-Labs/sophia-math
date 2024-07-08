#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Reziproke Potenzfunktion]
  #v(40pt)

  #only("1-")[Betrachte die Potenzfunktion:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[$ f(x) = x^3 $]]
  #v(40pt)

  #only("3-")[Frage: Schreibe die Potenzfunktion, die das Reziproke von $f(x)$ ist.]

  #only("1")[
    #voiceover("Lass uns eine Übung über Potenzfunktionen erkunden.")
  ]

  #only("2")[
    #voiceover("Betrachte die Potenzfunktion f von x gleich x hoch drei.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Potenzfunktion zu schreiben, die das Reziproke dieser gegebenen Funktion ist. Überlege, was es bedeutet, dass eine Funktion reziprok ist, und wie dies auf Potenzfunktionen angewendet wird.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Schreibe die Potenzfunktion, die das Reziproke von $f(x) = x^3$ ist.", 
answerOptions: ("$f(x) = x^{-3}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)