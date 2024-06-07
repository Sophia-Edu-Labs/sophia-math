#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten vereinfachen]
// Der Titel "Rationale Exponenten vereinfachen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Vereinfache: $(-8)^(1/3)$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 2]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) -2]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) 4]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) -4]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns üben, Ausdrücke mit rationalen Exponenten zu vereinfachen. Was ist die vereinfachte Form von minus 8 hoch ein Drittel?")]
#only("2")[#voiceover("Ist es 2,")]
#only("3")[#voiceover("oder ist es minus 2,")]
#only("4")[#voiceover("oder vielleicht 4,")]
#only("5")[#voiceover("oder ist es minus 4?")]
]#questionDef(
questionText: "Vereinfache $(-8)^{1/3}$.",
answerOptions: ("$2$", "$-2$", "$4$", "$-4$"),
correctAnswerIndex: 1,
)