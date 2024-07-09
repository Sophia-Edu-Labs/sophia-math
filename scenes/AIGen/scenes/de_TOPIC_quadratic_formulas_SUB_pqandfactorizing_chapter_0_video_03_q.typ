#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Grad einer quadratischen Gleichung]
  #v(40pt)

  #only("1-")[Betrachte die quadratische Gleichung:]
  #v(20pt)
  #only("2-")[#align(center)[$ 3x^2 - 4x + 2 = 0 $]]
  #v(40pt)

  #only("3-")[Was ist der Grad dieser Gleichung?]
  #v(20pt)
  #only("4-")[a) 1]
  #v(10pt)
  #only("5-")[b) 2]
  #v(10pt)
  #only("6-")[c) 3]

  #only("1")[#voiceover("Lass uns eine Frage zum Grad einer quadratischen Gleichung erkunden.")]
  #only("2")[#voiceover("Betrachte die Gleichung: drei x Quadrat minus vier x plus zwei gleich null.")]
  #only("3")[#voiceover("Nun, was ist der Grad dieser Gleichung?")]
  #only("4")[#voiceover("Ist es 1?")]
  #only("5")[#voiceover("Oder ist es 2?")]
  #only("6")[#voiceover("Oder vielleicht 3?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist der Grad der quadratischen Gleichung $3x^2 - 4x + 2 = 0$?", 
answerOptions: ("$1$", "$2$", "$3$"),
correctAnswerIndex: 1 
)