#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln negativer Zahlen]
#v(40pt)
#only("1-")[Was ist $root(3, -27)$?]
#v(40pt)
#only("2-")[a) -3]
#v(10pt)
#only("3-")[b) 3]
#v(10pt) 
#only("4-")[c) -9]
#v(10pt)
#only("5-")[d) 9]
#only("1")[#voiceover("Lass uns dein Wissen über n-te Wurzeln negativer Zahlen testen. Was ist die dritte Wurzel von minus 27?")]
#only("2")[#voiceover("Ist es minus 3,")]
#only("3")[#voiceover("oder ist es plus 3,")]
#only("4")[#voiceover("oder vielleicht minus 9,")]
#only("5")[#voiceover("oder ist es plus 9?")]
]#questionDef(
questionText: "Was ist $\\sqrt[3]{-27}$?", \nanswerOptions: ("$-3$", "$3$", "$-9$", "$9$"),
correctAnswerIndex: 0,
)