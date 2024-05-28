#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zeitwert des Geldes 💰]
#v(40pt)
#only("1-")[Warum ist Geld heute mehr wert als derselbe Betrag in der Zukunft? 🤔]
#v(40pt)
#only("2-")[a) Inflation 📈]
#v(10pt)
#only("3-")[b) Zinsen 🏦]
#v(10pt)
#only("4-")[c) Investitionsmöglichkeiten 📊]
#v(10pt)
#only("5-")[d) Alles oben Genannte ✅]
#only("1")[#voiceover("Lass uns dein Verständnis des Zeitwerts des Geldes testen. Warum ist Geld heute mehr wert als derselbe Betrag in der Zukunft?")]
#only("2")[#voiceover("Liegt es an der Inflation,")]
#only("3")[#voiceover("oder an den Zinsen,")]
#only("4")[#voiceover("oder an Investitionsmöglichkeiten,")]
#only("5")[#voiceover("oder könnte es alles oben Genannte sein?")]
]#questionDef(
questionText: "Warum ist Geld heute mehr wert als derselbe Betrag in der Zukunft?",
answerOptions: ("Inflation", "Zinsen", "Investitionsmöglichkeiten", "Alles oben Genannte"),
correctAnswerIndex: 3
)