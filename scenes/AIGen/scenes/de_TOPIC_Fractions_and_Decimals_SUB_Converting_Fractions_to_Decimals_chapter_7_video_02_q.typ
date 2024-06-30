#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
  #v(40pt)

  #only("1-")[Frage: Was ist $11/20$ als Dezimalzahl?]
  #v(20pt)

  #only("2-")[Optionen:]
  #v(10pt)
  #only("3-")[a) $0.55$]
  #v(10pt)
  #only("4-")[b) $0.5$]
  #v(10pt)
  #only("5-")[c) $0.525$]
  #v(10pt)
  #only("6-")[d) $0.50$]

  #only("1")[#voiceover("Lass uns üben, Brüche in Dezimalzahlen umzuwandeln. Hier ist unsere Frage: Was ist elf Zwanzigstel als Dezimalzahl?")]
  #only("2")[#voiceover("Wir haben vier Optionen zur Auswahl.")]
  #only("3")[#voiceover("Ist es null Komma fünf fünf?")]
  #only("4")[#voiceover("Oder ist es einfach null Komma fünf?")]
  #only("5")[#voiceover("Vielleicht ist es null Komma fünf zwei fünf?")]
  #only("6")[#voiceover("Oder könnte es null Komma fünf null sein?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{11}{20}$ als Dezimalzahl?", 
answerOptions: ("$0.55$", "$0.5$", "$0.525$", "$0.50$"),
correctAnswerIndex: 0 
)