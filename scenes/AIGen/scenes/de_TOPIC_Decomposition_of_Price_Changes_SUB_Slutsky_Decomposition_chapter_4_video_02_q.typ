#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[Welche der folgenden Optionen stellt die mathematische Form der Slutsky-Zerlegung dar?]
#v(40pt)
#only("2-")[a) Gesamteffekt = Substitutionseffekt - Einkommenseffekt]
#v(10pt)
#only("3-")[b) Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(10pt)
#only("4-")[c) Gesamteffekt = Einkommenseffekt - Substitutionseffekt]
#v(10pt)
#only("5-")[d) Gesamteffekt = Einkommenseffekt + Nutzen-Effekt]

#only("1")[#voiceover("Lass uns dein Wissen über die mathematische Form der Slutsky-Zerlegung testen. Welche der folgenden Gleichungen stellt sie korrekt dar?")]
#only("2")[#voiceover("Ist es Gesamteffekt gleich Substitutionseffekt minus Einkommenseffekt,")]
#only("3")[#voiceover("oder ist es Gesamteffekt gleich Substitutionseffekt plus Einkommenseffekt,")]
#only("4")[#voiceover("oder vielleicht Gesamteffekt gleich Einkommenseffekt minus Substitutionseffekt,")]
#only("5")[#voiceover("oder ist es Gesamteffekt gleich Einkommenseffekt plus Nutzen-Effekt?")]
]#questionDef(
questionText: "Welche der folgenden Optionen stellt die mathematische Form der Slutsky-Zerlegung dar?",
answerOptions: ("$Gesamteffekt = Substitutionseffekt - Einkommenseffekt$", "$Gesamteffekt = Substitutionseffekt + Einkommenseffekt$", "$Gesamteffekt = Einkommenseffekt - Substitutionseffekt$", "$Gesamteffekt = Einkommenseffekt + Nutzen-Effekt$"),
correctAnswerIndex: 1,
)