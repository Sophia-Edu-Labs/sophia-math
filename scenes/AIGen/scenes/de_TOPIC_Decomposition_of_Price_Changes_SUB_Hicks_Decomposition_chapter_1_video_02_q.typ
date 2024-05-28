#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
// Der Titel "Substitutionseffekt" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Der Substitutionseffekt zeigt Veränderungen im Konsum aufgrund einer Änderung von \_\_\_\_\_.]
// Die Aussage mit der Lücke wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Einkommen]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Preis]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Nutzen]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Menge]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis des Substitutionseffekts testen. Der Substitutionseffekt zeigt Veränderungen im Konsum aufgrund einer Änderung von was?")]
#only("2")[#voiceover("Ist es eine Änderung des Einkommens,")]
#only("3")[#voiceover("oder eine Änderung des Preises,")]
#only("4")[#voiceover("oder vielleicht eine Änderung des Nutzens,")]
#only("5")[#voiceover("oder ist es eine Änderung der Menge?")]
]#questionDef(
questionText: "Der Substitutionseffekt zeigt Veränderungen im Konsum aufgrund einer Änderung von _____.",
answerOptions: ("Einkommen", "Preis", "Nutzen", "Menge"),
correctAnswerIndex: 1,
)