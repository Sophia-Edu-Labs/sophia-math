#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Bestimmte Divergenz]
#v(40pt)
#only("1-")[Eine Zahlenfolge divergiert bestimmt, wenn sie gegen \_\_\_\_\_ geht.]
#v(40pt)
#only("2-")[a) unendlich]
#v(10pt)
#only("3-")[b) null]
#v(10pt)
#only("4-")[c) einen bestimmten Wert]
#v(10pt)
#only("5-")[d) eine konstante Zahl]
#only("1")[#voiceover("Eine Zahlenfolge divergiert bestimmt, wenn sie gegen was geht?")]
#only("2")[#voiceover("Ist es unendlich,")]
#only("3")[#voiceover("oder null,")]
#only("4")[#voiceover("oder einen bestimmten Wert,")]
#only("5")[#voiceover("oder eine konstante Zahl?")]
]#questionDef(
questionText: "Eine Zahlenfolge divergiert bestimmt, wenn sie gegen \_\_\_\_\_ geht.",
answerOptions: ("unendlich", "null", "einen bestimmten Wert", "eine konstante Zahl"),
correctAnswerIndex: 0,
)