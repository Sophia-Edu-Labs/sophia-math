#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Folgen]
#v(40pt)
#only("1-")[Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert annähern, wenn \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) n abnimmt]
#v(10pt)
#only("3-")[b) n konstant bleibt]
#v(10pt)
#only("4-")[c) n gegen unendlich geht]
#v(10pt)
#only("5-")[d) n oszilliert]
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis der Konvergenz von Folgen testen. Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert annähern, wenn \_\_\_\_\_.")]
#only("2")[#voiceover("Ist es, wenn n abnimmt,")]
#only("3")[#voiceover("oder wenn n konstant bleibt,")]
#only("4")[#voiceover("oder wenn n gegen unendlich geht,")]
#only("5")[#voiceover("oder wenn n oszilliert?")]
]#questionDef(
questionText: "Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert annähern, wenn $ n \\to \infty $.",
answerOptions: ("n abnimmt", "n konstant bleibt", "n gegen unendlich geht", "n oszilliert"),
correctAnswerIndex: 2,
)