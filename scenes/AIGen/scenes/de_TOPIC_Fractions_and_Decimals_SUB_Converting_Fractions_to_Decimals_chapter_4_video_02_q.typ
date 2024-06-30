#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[Was ist $3/8$ als Dezimalzahl?]
#v(20pt)

#only("2-")[a) 0,375]
#v(10pt)
#only("3-")[b) 0,38]
#v(10pt)
#only("4-")[c) 0,35]
#v(10pt)
#only("5-")[d) 0,3]

#only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist drei Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma drei sieben fünf?")]
#only("3")[#voiceover("Oder ist es null Komma drei acht?")]
#only("4")[#voiceover("Vielleicht ist es null Komma drei fünf?")]
#only("5")[#voiceover("Oder könnte es einfach null Komma drei sein?")]
]

//Type: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{8}$ als Dezimalzahl?", 
answerOptions: ("$0,375$", "$0,38$", "$0,35$", "$0,3$"),
correctAnswerIndex: 0 
)