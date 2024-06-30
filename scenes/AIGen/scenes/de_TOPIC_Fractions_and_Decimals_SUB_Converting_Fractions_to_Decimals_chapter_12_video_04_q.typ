#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $15/8$]
  #v(20pt)

  #only("2-")[🤔 Kannst du diesen in eine Dezimalzahl umwandeln?]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch fünfzehn Achtel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch in seine dezimale Form umzuwandeln. Kannst du herausfinden, was fünfzehn Achtel als Dezimalzahl ist?")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{15}{8}$ als Dezimalzahl?", 
answerOptions: ("$1.875$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)