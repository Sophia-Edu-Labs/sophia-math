#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzel Übung]
// Der Titel "n-te Wurzel Übung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $root(3, 8 8 27)$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 2]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 3]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) 6]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) 9]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns üben, was Du über n-te Wurzeln gelernt hast. Was ist die dritte Wurzel von 8 mal 8 mal 27?")]
#only("2")[#voiceover("Ist es 2,")]
#only("3")[#voiceover("oder ist es 3,")]
#only("4")[#voiceover("oder vielleicht 6,")]
#only("5")[#voiceover("oder ist es 9?")]
]#questionDef(
questionText: "Was ist $\sqrt[3]{8 \times 8 \times 27}$?",
answerOptions: ("2", "3", "6", "9"),
correctAnswerIndex: 2
)