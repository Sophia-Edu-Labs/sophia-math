#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen vereinfachen]
  #v(40pt)

  #only("1-")[Betrachte die Funktion:]
  #v(20pt)

  #only("2-")[#text(size: 24pt)[$ f(x) = 16x^(-2) $]]
  #v(40pt)

  #only("3-")[Kannst du diese Funktion vereinfachen? 🤔]

  #only("1")[
    #voiceover("Lass uns das Vereinfachen von Potenzfunktionen üben.")
  ]

  #only("2")[
    #voiceover("Betrachte die Funktion f von x gleich sechzehn mal x hoch minus zwei.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Funktion zu vereinfachen. In welcher Form können wir sie ausdrücken, um sie leichter verständlich oder handhabbar zu machen?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Vereinfache $f(x) = 16x^{-2}$.", 
answerOptions: ("$f(x) = \frac{16}{x^2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)