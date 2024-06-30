#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
  #v(40pt)

  #only("1-")[Was ist $3/4$ als Dezimalzahl?]
  #v(20pt)

  #only("2-")[a) 0,34]
  #v(10pt)
  #only("3-")[b) 0,43]
  #v(10pt)
  #only("4-")[c) 0,75]
  #v(10pt)
  #only("5-")[d) 0,57]

  #only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist eine Multiple-Choice-Frage: Was ist drei Viertel als Dezimalzahl?")]
  #only("2")[#voiceover("Ist es null Komma drei vier,")]
  #only("3")[#voiceover("oder null Komma vier drei,")]
  #only("4")[#voiceover("oder null Komma sieben fünf,")]
  #only("5")[#voiceover("oder null Komma fünf sieben?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{4}$ als Dezimalzahl?", 
answerOptions: ("$0,34$", "$0,43$", "$0,75$", "$0,57$"),
correctAnswerIndex: 2 
)