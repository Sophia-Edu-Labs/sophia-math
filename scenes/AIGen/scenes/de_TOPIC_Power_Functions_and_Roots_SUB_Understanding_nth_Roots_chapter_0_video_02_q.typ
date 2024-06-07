#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[3. Wurzel von 8]
#v(40pt)
#only("1-")[Was ist die 3. Wurzel von 8? 🤔]
#v(40pt)
#only("2-")[a) 1]
#v(10pt)
#only("3-")[b) 2]
#v(10pt)
#only("4-")[c) 3]
#v(10pt)
#only("5-")[d) 4]
#only("1")[#voiceover("Lass uns dein Wissen über n-te Wurzeln testen. Was ist die 3. Wurzel von 8?")]
#only("2")[#voiceover("Ist es 1,")]
#only("3")[#voiceover("oder ist es 2,")]
#only("4")[#voiceover("vielleicht ist es 3,")]
#only("5")[#voiceover("oder könnte es 4 sein?")]
]#questionDef(
questionText: "Was ist die $3$. Wurzel von $8$?", 
answerOptions: ("$1$", "$2$", "$3$", "$4$"),
correctAnswerIndex: 1
)