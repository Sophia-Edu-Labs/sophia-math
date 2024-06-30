#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $27/4$]
  #v(20pt)

  #only("2-")[Frage: Was ist dieser Bruch als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch siebenundzwanzig Viertel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in seine dezimale Darstellung umzuwandeln. Was ist siebenundzwanzig Viertel als Dezimalzahl?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{27}{4}$ als Dezimalzahl?", 
answerOptions: ("$6.75$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)