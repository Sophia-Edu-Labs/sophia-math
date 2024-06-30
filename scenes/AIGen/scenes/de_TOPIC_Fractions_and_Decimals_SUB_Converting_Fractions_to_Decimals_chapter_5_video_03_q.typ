#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von $3/5$ in eine Dezimalzahl]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $3/5$]
  #v(20pt)

  #only("2-")[Aufgabe: Wandle diesen Bruch in eine Dezimalzahl um 🔢]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Wir konzentrieren uns auf den Bruch drei Fünftel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, drei Fünftel, in seine äquivalente Dezimalzahl umzuwandeln. Überlege, welche Schritte Du unternehmen würdest, um diese Umwandlung durchzuführen.")
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