#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Was ist $2/5$ als Dezimalzahl?]
  #v(20pt)

  #only("2-")[a) 0,25]
  #v(10pt)
  #only("3-")[b) 0,4]
  #v(10pt)
  #only("4-")[c) 0,5]
  #v(10pt)
  #only("5-")[d) 0,2]

  #only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist eine Frage für Dich: Was ist zwei Fünftel als Dezimalzahl?")]
  #only("2")[#voiceover("Ist es null Komma zwei fünf?")]
  #only("3")[#voiceover("Oder ist es null Komma vier?")]
  #only("4")[#voiceover("Vielleicht ist es null Komma fünf?")]
  #only("5")[#voiceover("Oder könnte es null Komma zwei sein? Überlege es Dir gut!")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{2}{5}$ als Dezimalzahl?", 
answerOptions: ("$0,25$", "$0,4$", "$0,5$", "$0,2$"),
correctAnswerIndex: 1 
)