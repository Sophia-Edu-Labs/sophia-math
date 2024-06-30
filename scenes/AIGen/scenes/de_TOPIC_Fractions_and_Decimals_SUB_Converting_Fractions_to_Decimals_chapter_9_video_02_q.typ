#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)

#only("1-")[Was ist $7/8$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 0,875]
#v(10pt)
#only("3-")[b) 0,87]
#v(10pt)
#only("4-")[c) 0,85]
#v(10pt)
#only("5-")[d) 0,8]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist sieben Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es 0,875,")]
#only("3")[#voiceover("oder 0,87,")]
#only("4")[#voiceover("vielleicht 0,85,")]
#only("5")[#voiceover("oder könnte es 0,8 sein? Denk darüber nach, und wir werden die Lösung im nächsten Video besprechen!")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{7}{8}$ als Dezimalzahl?", 
answerOptions: ("$0,875$", "$0,87$", "$0,85$", "$0,8$"),
correctAnswerIndex: 0 
)