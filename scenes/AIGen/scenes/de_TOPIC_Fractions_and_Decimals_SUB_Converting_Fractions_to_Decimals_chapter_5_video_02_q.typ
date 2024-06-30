#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Was ist $4/5$ als Dezimalzahl?]
  #v(20pt)

  #only("2-")[a) 0,8]
  #v(10pt)
  #only("3-")[b) 0,45]
  #v(10pt)
  #only("4-")[c) 0,75]
  #v(10pt)
  #only("5-")[d) 0,5]

  #only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist vier Fünftel als Dezimalzahl?")]
  #only("2")[#voiceover("Ist es null Komma acht,")]
  #only("3")[#voiceover("oder null Komma vier fünf,")]
  #only("4")[#voiceover("oder null Komma sieben fünf,")]
  #only("5")[#voiceover("oder ist es null Komma fünf?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{4}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.8$", "$0.45$", "$0.75$", "$0.5$"),
correctAnswerIndex: 0 
)