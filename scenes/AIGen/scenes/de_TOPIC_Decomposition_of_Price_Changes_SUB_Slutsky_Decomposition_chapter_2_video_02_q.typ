#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt 💰]
#v(40pt)
#only("1-")[Der Einkommenseffekt tritt auf, wenn eine Preisänderung das \_\_\_\_\_ des Verbrauchers beeinflusst.] 
#v(40pt)
#only("2-")[a) nominale Einkommen]
#v(10pt)
#only("3-")[b) reale Einkommen]
#v(10pt)  
#only("4-")[c) Nutzen]
#v(10pt)
#only("5-")[d) Präferenzen]
#only("1")[#voiceover("Lass uns dein Verständnis des Einkommenseffekts testen. Der Einkommenseffekt tritt auf, wenn eine Preisänderung das was des Verbrauchers beeinflusst?")]
#only("2")[#voiceover("Ist es das nominale Einkommen des Verbrauchers,")]
#only("3")[#voiceover("oder ihr reales Einkommen,")]
#only("4")[#voiceover("oder vielleicht ihr Nutzen,")]
#only("5")[#voiceover("oder sind es ihre Präferenzen?")]
]#questionDef(
questionText: "Der Einkommenseffekt tritt auf, wenn eine Preisänderung das ________ des Verbrauchers beeinflusst.",
answerOptions: ("nominale Einkommen", "reale Einkommen", "Nutzen", "Präferenzen"),
correctAnswerIndex: 1,
)