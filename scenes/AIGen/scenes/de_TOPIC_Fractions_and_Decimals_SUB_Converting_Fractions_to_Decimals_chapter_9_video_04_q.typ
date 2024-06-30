#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Bruch in Dezimalzahl]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $13/8$]
  #v(20pt)

  #only("2-")[Wandle diesen Bruch in eine Dezimalzahl um. 🔢]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage:")
  ]

  #only("2")[
    #voiceover("Was ist dreizehn Achtel als Dezimalzahl? Nimm dir einen Moment Zeit, um darüber nachzudenken, wie du dieses Problem angehen könntest.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{13}{8}$ als Dezimalzahl?", 
answerOptions: ("$1.625$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)