#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Komplexere Brüche in Dezimalzahlen umwandeln]
#v(40pt)
#only("1-")[Was ist $3/25$ als Dezimalzahl?]
#v(40pt)
#only("2-")[a) $0.12$]
#v(10pt)
#only("3-")[b) $0.13$]
#v(10pt)
#only("4-")[c) $0.14$]
#v(10pt)
#only("5-")[d) $0.15$]
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von komplexeren Brüchen in Dezimalzahlen testen. Was ist drei durch fünfundzwanzig als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma eins zwei,")]
#only("3")[#voiceover("oder ist es null Komma eins drei,")]
#only("4")[#voiceover("oder vielleicht null Komma eins vier,")]
#only("5")[#voiceover("oder ist es null Komma eins fünf?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{25}$ als Dezimalzahl?", 
answerOptions: ("$0.12$", "$0.13$", "$0.14$", "$0.15$"),
correctAnswerIndex: 0
)