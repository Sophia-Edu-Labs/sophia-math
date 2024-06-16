#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf allen Folien angezeigt
#v(40pt)

#only("1-")[Betrachte den Bruch $7/10$]
// Der Bruch $7/10$ wird ab Folie 1 angezeigt
#v(40pt)

#only("2-")[$arrow$ Was ist das als Dezimalzahl?]
// Die Frage "Was ist das als Dezimalzahl?" wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Betrachte den Bruch sieben Zehntel.")
]

#only("2")[
#voiceover("Was ist dieser Bruch als Dezimalzahl?")
]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{7}{10}$ als Dezimalzahl?", 
answerOptions: ("$0.7$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)