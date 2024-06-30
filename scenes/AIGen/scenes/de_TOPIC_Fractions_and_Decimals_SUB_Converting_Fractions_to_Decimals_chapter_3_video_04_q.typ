#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von $1/5$ in eine Dezimalzahl]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $1/5$]
  #v(20pt)

  #only("2-")[Frage: Was ist $1/5$ als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns ein interessantes Problem zur Umwandlung von Brüchen betrachten.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Was ist ein Fünftel als Dezimalzahl? Nimm dir einen Moment Zeit, darüber nachzudenken. Wie würdest du diese Umwandlung angehen?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{1}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)