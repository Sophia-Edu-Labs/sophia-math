#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $7/10$]
  #v(20pt)

  #only("2-")[Wandle diesen Bruch in eine Dezimalzahl um. 🔢]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere heutige Aufgabe:")
  ]

  #only("2")[
    #voiceover("Was ist sieben Zehntel als Dezimalzahl? Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen könntest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{7}{10}$ als Dezimalzahl?", 
answerOptions: ("$0.7$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)