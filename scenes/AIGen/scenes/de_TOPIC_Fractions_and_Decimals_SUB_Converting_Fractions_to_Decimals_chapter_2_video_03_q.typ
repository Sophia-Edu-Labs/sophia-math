#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)
#only("1-")[Was ist $625/1000$ als Dezimalzahl?]
#v(40pt)
#only("2-")[a) $0.0625$]
#v(10pt)
#only("3-")[b) $0.625$]
#v(10pt)
#only("4-")[c) $6.25$]
#v(10pt)
#only("5-")[d) $62.5$]
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Brüchen in Dezimalzahlen testen. Was ist sechshundertfünfundzwanzig durch eintausend als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma null sechs zwei fünf,")]
#only("3")[#voiceover("oder ist es null Komma sechs zwei fünf,")]
#only("4")[#voiceover("oder vielleicht sechs Komma zwei fünf,")]
#only("5")[#voiceover("oder ist es zweiundsechzig Komma fünf?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{625}{1000}$ als Dezimalzahl?", 
answerOptions: ("$0.0625$", "$0.625$", "$6.25$", "$62.5$"),
correctAnswerIndex: 1 
)