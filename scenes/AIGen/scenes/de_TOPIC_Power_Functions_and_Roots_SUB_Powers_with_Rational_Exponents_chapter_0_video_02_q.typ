#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten]
// Der Titel "Rationale Exponenten" wird auf dieser Folie gezeigt
#v(40pt)
#only("1-")[Was stellt $a^(1/2)$ dar?]
// Die Frage wird ab Folie 1 gezeigt
#v(40pt)
#only("2-")[a) $a$ zum Quadrat]
// Antwortmöglichkeit a) wird ab Folie 2 gezeigt
#v(10pt)
#only("3-")[b) $a$ hoch drei]
// Antwortmöglichkeit b) wird ab Folie 3 gezeigt
#v(10pt)
#only("4-")[c) die Quadratwurzel von $a$]
// Antwortmöglichkeit c) wird ab Folie 4 gezeigt
#v(10pt)
#only("5-")[d) die Kubikwurzel von $a$]
// Antwortmöglichkeit d) wird ab Folie 5 gezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von rationalen Exponenten testen. Was stellt a hoch ein Halb dar?")]
#only("2")[#voiceover("Ist es a zum Quadrat,")]
#only("3")[#voiceover("oder ist es a hoch drei,")]
#only("4")[#voiceover("oder vielleicht die Quadratwurzel von a,")]
#only("5")[#voiceover("oder ist es die Kubikwurzel von a?")]
]#questionDef(
questionText: "Was stellt $a^{1/2}$ dar?",
answerOptions: ("$a$ zum Quadrat", "$a$ hoch drei", "die Quadratwurzel von $a$", "die Kubikwurzel von $a$"),
correctAnswerIndex: 2,
)