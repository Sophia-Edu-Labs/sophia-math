#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[Was ist $1/2$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 0,2]
#v(10pt)
#only("3-")[b) 0,5]
#v(10pt)
#only("4-")[c) 2,0]
#v(10pt)
#only("5-")[d) 5,0]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Unsere Frage heute lautet: Was ist ein Halb als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma zwei,")]
#only("3")[#voiceover("oder null Komma fünf,")]
#only("4")[#voiceover("oder vielleicht zwei Komma null,")]
#only("5")[#voiceover("oder vielleicht fünf Komma null? Denke sorgfältig nach, bevor Du Deine Antwort wählst.")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{1}{2}$ als Dezimalzahl?", 
answerOptions: ("$0,2$", "$0,5$", "$2,0$", "$5,0$"),
correctAnswerIndex: 1 
)