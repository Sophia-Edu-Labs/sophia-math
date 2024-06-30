#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[Was ist $5/4$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 1,25]
#v(10pt)
#only("3-")[b) 1,2]
#v(10pt)
#only("4-")[c) 1,15]
#v(10pt)
#only("5-")[d) 1,3]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist fünf Viertel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es eins Komma zwei fünf,")]
#only("3")[#voiceover("oder eins Komma zwei,")]
#only("4")[#voiceover("oder eins Komma eins fünf,")]
#only("5")[#voiceover("oder eins Komma drei? Denke sorgfältig nach, bevor Du Deine Antwort wählst.")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{5}{4}$ als Dezimalzahl?", 
answerOptions: ("$1.25$", "$1.2$", "$1.15$", "$1.3$"),
correctAnswerIndex: 0 
)