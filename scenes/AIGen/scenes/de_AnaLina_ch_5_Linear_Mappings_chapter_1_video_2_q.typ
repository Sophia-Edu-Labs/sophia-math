#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungen]
// Der Titel "Lineare Abbildungen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wenn $T$ eine lineare Abbildung ist, dann ist $T(0)$ gleich:]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 0]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 1]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $T(1)$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Keine der oben genannten]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lassen Sie uns Ihr Verständnis von linearen Abbildungen testen. Wenn T eine lineare Abbildung ist, was ist dann T von 0 gleich?")]
#only("2")[#voiceover("Ist es gleich 0,")]
#only("3")[#voiceover("oder ist es gleich 1,")]
#only("4")[#voiceover("oder vielleicht ist es gleich T von 1,")]
#only("5")[#voiceover("oder ist es keine der oben genannten?")]
]#questionDef(
questionText: "Wenn $T$ eine lineare Abbildung ist, dann ist $T(0)$ gleich:",
answerOptions: ("0", "1", "$T(1)$", "Keine der oben genannten"),
correctAnswerIndex: 0,
)