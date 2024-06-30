#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[Was ist $5/8$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 0,625]
#v(10pt)
#only("3-")[b) 0,62]
#v(10pt)
#only("4-")[c) 0,65]
#v(10pt)
#only("5-")[d) 0,6]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist fünf Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma sechs zwei fünf,")]
#only("3")[#voiceover("oder null Komma sechs zwei,")]
#only("4")[#voiceover("oder vielleicht null Komma sechs fünf,")]
#only("5")[#voiceover("oder ist es einfach null Komma sechs?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{5}{8}$ als Dezimalzahl?", 
answerOptions: ("$0,625$", "$0,62$", "$0,65$", "$0,6$"),
correctAnswerIndex: 0 
)