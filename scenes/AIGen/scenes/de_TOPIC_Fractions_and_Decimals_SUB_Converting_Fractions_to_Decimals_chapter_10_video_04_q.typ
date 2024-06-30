#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $9/2$]
  #v(20pt)

  #only("2-")[Frage: Was ist $9/2$ als Dezimalzahl? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch neun durch zwei.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, neun durch zwei, in seine Dezimalform umzuwandeln. Welche Dezimalzahl ergibt neun durch zwei?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{9}{2}$ als Dezimalzahl?", 
answerOptions: ("$4.5$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)