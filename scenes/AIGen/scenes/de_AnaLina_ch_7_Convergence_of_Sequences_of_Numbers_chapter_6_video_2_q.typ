#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
// Der Titel "Divergenz ins Unendliche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, so dass für alle $n \geq N$, $a_n$ \_\_\_\_\_ ist.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) kleiner als $M$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) größer als $M$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) gleich $M$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) ungleich $M$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis der Divergenz ins Unendliche testen. Eine Folge a sub n divergiert ins Unendliche, wenn für jedes M größer als 0, ein N existiert, so dass für alle n größer oder gleich N, a sub n...")]
#only("2")[#voiceover("kleiner als M,")]
#only("3")[#voiceover("größer als M,")]
#only("4")[#voiceover("gleich M,")]
#only("5")[#voiceover("oder ungleich M ist?")]
]#questionDef(
questionText: "Eine Folge $a_n$ divergiert ins Unendliche, wenn für jedes $M > 0$ ein $N$ existiert, so dass für alle $n \geq N$, $a_n$ \_\_\_\_\_ ist.",
answerOptions: ("kleiner als $M$", "größer als $M$", "gleich $M$", "ungleich $M$"),
correctAnswerIndex: 1,
)