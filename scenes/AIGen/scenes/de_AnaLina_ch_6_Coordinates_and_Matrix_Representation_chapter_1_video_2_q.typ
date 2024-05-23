#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis eines Vektorraums]
// Der Titel "Basis eines Vektorraums" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine Basis ist eine Menge von Vektoren, die einen Vektorraum \_\_\_\_.]
// Die Aussage mit der Lücke wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) aufspannen]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) schneiden]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) teilen]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) keine der oben genannten]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Basis eines Vektorraums testen. Eine Basis ist eine Menge von Vektoren, die einen Vektorraum ____.")]
#only("2")[#voiceover("Ist es eine Menge von Vektoren, die einen Vektorraum aufspannen,")]
#only("3")[#voiceover("oder ist es eine Menge von Vektoren, die einen Vektorraum schneiden,")]
#only("4")[#voiceover("oder vielleicht eine Menge von Vektoren, die einen Vektorraum teilen,")]
#only("5")[#voiceover("oder ist es keine der oben genannten?")]
]#questionDef(
questionText: "Eine Basis ist eine Menge von Vektoren, die \\textbf{einen Vektorraum aufspannen}.",
answerOptions: ("aufspannen", "schneiden", "teilen", "keine der oben genannten"),
correctAnswerIndex: 0,
)