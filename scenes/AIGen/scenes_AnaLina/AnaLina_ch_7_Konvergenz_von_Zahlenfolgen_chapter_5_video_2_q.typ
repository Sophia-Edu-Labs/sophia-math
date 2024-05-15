#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Zahlenfolgen]
#v(40pt)
#only("1-")[Eine Zahlenfolge konvergiert, wenn sie sich einem \_\_\_\_\_ nähert.]
#v(40pt)
#only("2-")[a) bestimmten Wert]
#v(10pt)
#only("3-")[b) unendlichen Wert]
#v(10pt)
#only("4-")[c) beliebigen Wert]
#v(10pt)
#only("5-")[d) keiner Antwort ist richtig]
#only("1")[#voiceover("Überlege: Eine Zahlenfolge konvergiert, wenn sie sich einem \_\_\_\_\_ nähert.")]
#only("2")[#voiceover("Nähert sie sich einem bestimmten Wert,")]
#only("3")[#voiceover("oder einem unendlichen Wert,")]
#only("4")[#voiceover("oder vielleicht einem beliebigen Wert,")]
#only("5")[#voiceover("oder ist keine dieser Antworten richtig?")]
]#questionDef(
questionText: "Eine Zahlenfolge konvergiert, wenn sie sich einem \_\_\_\_\_ nähert.",
answerOptions: ("bestimmten Wert", "unendlichen Wert", "beliebigen Wert", "keiner Antwort ist richtig"),
correctAnswerIndex: 0
)