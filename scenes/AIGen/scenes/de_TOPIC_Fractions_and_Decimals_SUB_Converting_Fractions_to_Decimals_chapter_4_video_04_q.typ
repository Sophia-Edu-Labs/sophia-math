#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Bruch in Dezimalzahl]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $7/8$]
  #v(20pt)

  #only("2-")[Wandle diesen Bruch in eine Dezimalzahl um. 🔢]

  #only("1")[
    #voiceover("Lass uns üben, komplexere Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch sieben Achtel.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diesen Bruch, sieben Achtel, in seine dezimale Darstellung umzuwandeln. Denke daran, dass wir es mit einem Bruch zu tun haben, der nicht über einer Zehnerpotenz liegt, sodass dies einige zusätzliche Schritte erfordern könnte. Überlege, wie du diese Umwandlung angehen kannst.")
  ]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{7}{8}$ als Dezimalzahl?", 
answerOptions: ("$0.875$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)