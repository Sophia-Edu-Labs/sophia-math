#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
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
#only("4-")[c) n gegen $ infinity $ geht]
#v(10pt)
#only("5-")[d) n oszilliert]
#only("1")[#voiceover("Lass uns dein Verständnis der Konvergenz von Folgen testen. Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert annähern, wenn \_\_\_\_\_.")]
#only("2")[#voiceover("Ist es, wenn n abnimmt,")]
#only("3")[#voiceover("oder wenn n konstant bleibt,")]
#only("4")[#voiceover("oder wenn n gegen $ \infty $ geht,")]
#only("5")[#voiceover("oder wenn n oszilliert?")]
]#questionDef(
questionText: "Eine Folge konvergiert, wenn die Folgenglieder sich einem bestimmten Wert annähern, wenn ..",
answerOptions: ("n abnimmt", "n konstant bleibt", "n gegen $ \infty $ geht", "n oszilliert"),
correctAnswerIndex: 2,
)