#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $17/4$]
  #v(20pt)

  #only("2-")[Wandle diesen Bruch in eine Dezimalzahl um. 🔢]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch siebzehn durch vier.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in seine dezimale Darstellung umzuwandeln. Kannst du herausfinden, was siebzehn geteilt durch vier als Dezimalzahl ist?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{17}{4}$ als Dezimalzahl?", 
answerOptions: ("$4.25$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)