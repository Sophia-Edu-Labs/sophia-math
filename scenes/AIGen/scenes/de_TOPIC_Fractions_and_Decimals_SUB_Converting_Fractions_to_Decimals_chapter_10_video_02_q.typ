#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
#v(40pt)

#only("1-")[Was ist $19/8$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 2.375]
#v(10pt)
#only("3-")[b) 2.3]
#v(10pt)
#only("4-")[c) 2.0]
#v(10pt)
#only("5-")[d) 2.5]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist neunzehn Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es zwei Komma drei sieben fünf,")]
#only("3")[#voiceover("oder ist es zwei Komma drei,")]
#only("4")[#voiceover("oder vielleicht einfach zwei Komma null,")]
#only("5")[#voiceover("oder könnte es zwei Komma fünf sein? Denk gut nach, bevor Du Deine Antwort wählst.")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{19}{8}$ als Dezimalzahl?", 
answerOptions: ("$2.375$", "$2.3$", "$2.0$", "$2.5$"),
correctAnswerIndex: 0 
)