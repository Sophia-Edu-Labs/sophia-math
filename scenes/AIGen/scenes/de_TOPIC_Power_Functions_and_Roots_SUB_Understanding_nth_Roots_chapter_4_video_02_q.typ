#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationalisierung von n-ten Wurzeln]
// Der Titel "Rationalisierung von n-ten Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Rationalisiere $1/(root(3,2))$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $root(3,2)/2$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $root(3,4)/2$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $root(3,8)/4$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $root(3,4)/4$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns üben, n-te Wurzeln zu rationalisieren. Wie würdest du 1 durch die Kubikwurzel von 2 rationalisieren?")]
#only("2")[#voiceover("Ist es die Kubikwurzel von 2 durch 2,")]
#only("3")[#voiceover("oder ist es die Kubikwurzel von 4 durch 2,")]
#only("4")[#voiceover("oder vielleicht die Kubikwurzel von 8 durch 4,")]
#only("5")[#voiceover("oder ist es die Kubikwurzel von 4 durch 4?")]
]#questionDef(
questionText: "Rationalisiere $\frac{1}{\sqrt[3]{2}}$",
answerOptions: ("$\frac{\sqrt[3]{2}}{2}$", "$\frac{\sqrt[3]{4}}{2}$", "$\frac{\sqrt[3]{8}}{4}$", "$\frac{\sqrt[3]{4}}{4}$"),
correctAnswerIndex: 1,
)