#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $2/5$]
  #v(20pt)

  #only("2-")[Frage: Was ist $2/5$ als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch zwei Fünftel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, zwei Fünftel, in seine Dezimalform umzuwandeln. Überlege kurz, wie Du dieses Problem angehen könntest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{2}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.4$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)