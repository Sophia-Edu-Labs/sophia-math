#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[Was ist $19/4$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 4,75]
#v(10pt)
#only("3-")[b) 4,7]
#v(10pt)
#only("4-")[c) 4,25]
#v(10pt)
#only("5-")[d) 4,5]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist neunzehn Viertel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es vier Komma sieben fünf,")]
#only("3")[#voiceover("oder ist es vier Komma sieben,")]
#only("4")[#voiceover("oder vielleicht vier Komma zwei fünf,")]
#only("5")[#voiceover("oder vielleicht vier Komma fünf?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{19}{4}$ als Dezimalzahl?", 
answerOptions: ("$4,75$", "$4,7$", "$4,25$", "$4,5$"),
correctAnswerIndex: 0 
)