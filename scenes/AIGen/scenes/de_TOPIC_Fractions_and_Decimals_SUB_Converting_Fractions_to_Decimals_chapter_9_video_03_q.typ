#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Betrachte den Bruch: $11/5$]
  #v(20pt)

  #only("2-")[Kannst Du diesen in eine Dezimalzahl umwandeln? 🤔]

  #only("1")[
    #voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Wir konzentrieren uns auf ein konkretes Beispiel.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Frage: Was ist elf Fünftel als Dezimalzahl? Nimm Dir einen Moment Zeit, um darüber nachzudenken, wie Du dieses Problem angehen könntest.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{11}{5}$ als Dezimalzahl?", 
answerOptions: ("$2.2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)