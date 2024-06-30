#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Einen Bruch in eine Dezimalzahl umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $7/20$]
  #v(20pt)

  #only("2-")[Frage: Was ist dieser Bruch als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, komplexere Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch sieben Zwanzigstel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, sieben Zwanzigstel, in seine Dezimalform umzuwandeln. Überlege dir, wie du dieses Problem angehen könntest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{7}{20}$ als Dezimalzahl?", 
answerOptions: ("$0.35$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)