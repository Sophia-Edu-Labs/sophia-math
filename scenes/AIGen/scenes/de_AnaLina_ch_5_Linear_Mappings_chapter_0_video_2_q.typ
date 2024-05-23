#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungen]
// Der Titel "Lineare Abbildungen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine lineare Abbildung erhält welche der folgenden Eigenschaften? 🤔]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Vektoraddition ➕]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Skalare Multiplikation ✖️]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Sowohl Vektoraddition als auch skalare Multiplikation ➕✖️]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Keine der beiden ❌]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von linearen Abbildungen testen. Eine lineare Abbildung erhält welche der folgenden Eigenschaften?")]
#only("2")[#voiceover("Erhält sie die Vektoraddition,")]
#only("3")[#voiceover("oder erhält sie die skalare Multiplikation,")]
#only("4")[#voiceover("oder erhält sie sowohl die Vektoraddition als auch die skalare Multiplikation,")]
#only("5")[#voiceover("oder erhält sie keine dieser Eigenschaften?")]
]#questionDef(
questionText: "Eine lineare Abbildung erhält welche der folgenden Eigenschaften?",
answerOptions: ("Vektoraddition", "Skalare Multiplikation", "Sowohl Vektoraddition als auch skalare Multiplikation", "Keine der beiden"),
correctAnswerIndex: 2,
)