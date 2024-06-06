#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln]
// Der Titel "n-te Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die n-te Wurzel einer Zahl ist ein Wert, der, wenn er mit der Potenz n potenziert wird, das \_\_\_\_\_ ergibt.]
// Die Aussage mit der Lücke wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Wurzel 🌱]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) ursprüngliche Zahl 🔢]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Quadrat ⬜]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Würfel 🎲]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der n-ten Wurzeln testen. Die n-te Wurzel einer Zahl ist ein Wert, der, wenn er mit der Potenz n potenziert wird, die Lücke ergibt.")]
#only("2")[#voiceover("Ist es die Wurzel,")]
#only("3")[#voiceover("oder die ursprüngliche Zahl,")]
#only("4")[#voiceover("oder das Quadrat,")]
#only("5")[#voiceover("oder der Würfel?")]
]#questionDef(
questionText: "Die $n$-te Wurzel einer Zahl ist ein Wert, der, wenn er mit der Potenz $n$ potenziert wird, das ____ ergibt.",
answerOptions: ("Wurzel", "ursprüngliche Zahl", "Quadrat", "Würfel"),
correctAnswerIndex: 1,
)