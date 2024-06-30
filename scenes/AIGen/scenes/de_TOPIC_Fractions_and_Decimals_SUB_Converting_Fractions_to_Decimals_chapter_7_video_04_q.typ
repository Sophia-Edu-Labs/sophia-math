#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $3/5$]
  #v(20pt)

  #only("2-")[Frage: Was ist $3/5$ als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch drei Fünftel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, drei Fünftel, in seine dezimale Darstellung umzuwandeln. Welche Dezimalzahl entspricht drei Fünftel?")
  ]
]

//Typ: FREI
#questionDef( 
questionText: "Was ist $\frac{3}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.6$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)