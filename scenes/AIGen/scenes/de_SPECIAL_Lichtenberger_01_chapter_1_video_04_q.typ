#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck]
// Der Titel "Wasserdruck" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Ein Boot fährt über einen Fisch und verursacht, dass der Wasserspiegel direkt darüber sinkt. Was passiert mit dem Druck?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Er bleibt gleich.]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Er sinkt.]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Er steigt.]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Kann nicht bestimmt werden.]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Wasserdruck testen. Ein Boot fährt über einen Fisch und verursacht, dass der Wasserspiegel direkt darüber sinkt. Was passiert mit dem Druck?")]
#only("2")[#voiceover("Bleibt er gleich,")]
#only("3")[#voiceover("oder sinkt er,")]
#only("4")[#voiceover("oder steigt er vielleicht,")]
#only("5")[#voiceover("oder kann es aus den gegebenen Informationen nicht bestimmt werden?")]
]#questionDef(
questionText: "Ein Boot fährt über einen Fisch und verursacht, dass der Wasserspiegel direkt darüber sinkt. Was passiert mit dem Druck?",
answerOptions: ("Er bleibt gleich.", "Er sinkt.", "Er steigt.", "Kann nicht bestimmt werden."),
correctAnswerIndex: 1
)