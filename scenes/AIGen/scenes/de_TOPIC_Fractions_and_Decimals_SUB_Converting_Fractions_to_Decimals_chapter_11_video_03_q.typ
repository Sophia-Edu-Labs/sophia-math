#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $21/8$]
  #v(20pt)

  #only("2-")[Kannst Du diesen in eine Dezimalzahl umwandeln? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch einundzwanzig Achtel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in seine Dezimalform umzuwandeln. Überlege, wie Du dieses Problem angehen würdest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{21}{8}$ als Dezimalzahl?", 
answerOptions: ("$2.625$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)