#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $1/4$]
  #v(20pt)

  #only("2-")[Wandle diesen Bruch in eine Dezimalzahl um. 🔢]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Wir konzentrieren uns auf ein konkretes Beispiel.")
  ]

  #only("2")[
    #voiceover("Hier ist deine Aufgabe: Wandle ein Viertel in eine Dezimalzahl um. Überlege, wie du dieses Problem angehen würdest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{1}{4}$ als Dezimalzahl?", 
answerOptions: ("$0.25$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)